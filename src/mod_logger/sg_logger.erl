%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 1996-2011. All Rights Reserved.
%% 
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%% 
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%% 
%% %CopyrightEnd%
%%
-module(sg_logger).

-include("const.common.hrl").

-export([start/1,start_link/6,format/2,error_msg/1,error_msg/2,error_report/1,
	 error_report/2,info_report/1,info_report/2,warning_report/1,
	 warning_report/2,error_info/1,
	 info_msg/1,info_msg/2,warning_msg/1,warning_msg/2, 
	 logfile/1,tty/1,swap_handler/1,
	 add_report_handler/1,add_report_handler/3,
	 delete_report_handler/1]).

-export([init/1,
	 handle_event/2, handle_call/2, handle_info/2,
	 terminate/2]).

-define(buffer_size, 10).

%%-----------------------------------------------------------------
%% Types used in this file
%%-----------------------------------------------------------------

-type msg_tag() :: 'error' | 'error_report'
		 | 'info' | 'info_msg' | 'info_report'
		 | 'warning_msg' | 'warning_report'.

-type state()   :: {non_neg_integer(), non_neg_integer(), [term()]}.

%%-----------------------------------------------------------------
start(LoggerName) ->
    case gen_event:start({local, sg_logger}) of
	{ok, Pid} ->
	    simple_logger(LoggerName, ?buffer_size),
	    {ok, Pid};
	Error -> Error
    end.


start_link(LoggerName, _, LoggerType, LogsDir, NamePre, LogsLv) ->
	try
		case gen_event:start_link({local, LoggerName}) of
			{ok, Pid} ->
				simple_logger(LoggerName, ?buffer_size),
				custom_logger(LoggerName, LoggerType, LogsDir, NamePre, LogsLv),
				?MSG_PRINT("~p started..........", [LoggerName]),
				{ok, Pid};
			Other -> Other
		end
	catch
		Error:Reason ->
			?MSG_PRINT("~nError:~p~nReason:~p~nStrace:~p~nProcessInfo:~p~n",
					   [Error, Reason, erlang:get_stacktrace(), erlang:process_info(self())]),
			{?stop, {Error, Reason}}
	end.

%%-----------------------------------------------------------------
%% These two simple old functions generate events tagged 'error'
%% Used for simple messages; error or information.
%%-----------------------------------------------------------------

%% -spec error_msg(Format) -> 'ok' when
%%       Format :: string().

error_msg(Format) ->
    error_msg(Format,[]).

%% -spec error_msg(Format, Data) -> 'ok' when
%%       Format :: string(),
%%       Data :: list().

error_msg(Format, Args) ->
    notify({error, group_leader(), {self(), Format, Args}}).

%% -spec format(Format, Data) -> 'ok' when
%%       Format :: string(),
%%       Data :: list().

format(Format, Args) ->
    notify({error, group_leader(), {self(), Format, Args}}).

%%-----------------------------------------------------------------
%% This functions should be used for error reports.  Events
%% are tagged 'error_report'.
%% The 'std_error' error_report type can always be used.
%%-----------------------------------------------------------------
%% 
%% -type report() ::
%%         [{Tag :: term(), Data :: term()} | term()] | string() | term().

%% -spec error_report(Report) -> 'ok' when
%%       Report :: report().

error_report(Report) -> 
    error_report(std_error, Report).

%% -spec error_report(Type, Report) -> 'ok' when
%%       Type :: term(),
%%       Report :: report().

error_report(Type, Report) ->
    notify({error_report, group_leader(), {self(), Type, Report}}).

%%-----------------------------------------------------------------
%% This function should be used for warning reports.  
%% These might be mapped to error reports or info reports, 
%% depending on emulator flags. Events that ore not mapped
%% are tagged 'info_report'.
%% The 'std_warning' info_report type can always be used and is 
%% mapped to std_info or std_error accordingly.
%%-----------------------------------------------------------------

%% -spec warning_report(Report) -> 'ok' when
%%       Report :: report().

warning_report(Report) -> 
    warning_report(std_warning, Report).

%% -spec warning_report(Type, Report) -> 'ok' when
%%       Type :: any(),
%%       Report :: report().

warning_report(Type, Report) ->
    {Tag, NType} = case sg_logger:warning_map() of
		       info ->
			   if 
			       Type =:= std_warning ->
				   {info_report, std_info};
			       true ->
				   {info_report, Type}
			   end;
		       warning ->
			   {warning_report, Type};
		       error ->
			   if
			       Type =:= std_warning ->
				   {error_report, std_error};
			       true ->
				   {error_report, Type}
			   end
		   end,
    notify({Tag, group_leader(), {self(), NType, Report}}).

%%-----------------------------------------------------------------
%% This function provides similar functions as error_msg for
%% warning messages, like warning report it might get mapped to
%% other types of reports.
%%-----------------------------------------------------------------

%% -spec warning_msg(Format) -> 'ok' when
%%       Format :: string().

warning_msg(Format) ->
    warning_msg(Format,[]).

%% -spec warning_msg(Format, Data) -> 'ok' when
%%       Format :: string(),
%%       Data :: list().

warning_msg(Format, Args) ->
    Tag = case sg_logger:warning_map() of
	      warning ->
		  warning_msg;
	      info ->
		  info_msg;
	      error ->
		  error
	  end,
    notify({Tag, group_leader(), {self(), Format, Args}}).

%%-----------------------------------------------------------------
%% This function should be used for information reports.  Events
%% are tagged 'info_report'.
%% The 'std_info' info_report type can always be used.
%%-----------------------------------------------------------------

%% -spec info_report(Report) -> 'ok' when
%%       Report :: report().

info_report(Report) -> 
    info_report(std_info, Report).

%% -spec info_report(Type, Report) -> 'ok' when
%%       Type :: any(),
%%       Report :: report().

info_report(Type, Report) ->
    notify({info_report, group_leader(), {self(), Type, Report}}).

%%-----------------------------------------------------------------
%% This function provides similar functions as error_msg for
%% information messages.
%%-----------------------------------------------------------------

%% -spec info_msg(Format) -> 'ok' when
%%       Format :: string().

info_msg(Format) ->
    info_msg(Format,[]).

%% -spec info_msg(Format, Data) -> 'ok' when
%%       Format :: string(),
%%       Data :: list().

info_msg(Format, Args) ->
    notify({info_msg, group_leader(), {self(), Format, Args}}).

%%-----------------------------------------------------------------
%% Used by the init process.  Events are tagged 'info'.
%%-----------------------------------------------------------------

-spec error_info(Error :: any()) -> 'ok'.

error_info(Error) ->
    notify({info, group_leader(), {self(), Error, []}}).

-spec notify({msg_tag(), pid(), {pid(), any(), any()}}) -> 'ok'.

notify(Msg) ->
    gen_event:notify(sg_logger, Msg).

-type swap_handler_type() :: 'false' | 'silent' | 'tty' | {'logfile', string()}.
-spec swap_handler(Type :: swap_handler_type()) -> any().

swap_handler(tty) ->
    gen_event:swap_handler(sg_logger, {sg_logger, swap},
			   {error_logger_tty_h, []}),
    simple_logger();
swap_handler({logfile, File}) ->
    gen_event:swap_handler(sg_logger, {sg_logger, swap},
			   {error_logger_file_h, File}),
    simple_logger();
swap_handler(silent) ->
    gen_event:delete_handler(sg_logger, sg_logger, delete),
    simple_logger();
swap_handler(false) ->
    ok. % keep primitive event handler as-is

add_report_handler(Module) when is_atom(Module) ->
    gen_event:add_handler(sg_logger, Module, []).

add_report_handler(LoggerName, Module, Args) when is_atom(Module) ->
    gen_event:add_handler(LoggerName, Module, Args).

delete_report_handler(Module) when is_atom(Module) ->
    gen_event:delete_handler(sg_logger, Module, []).

simple_logger(LoggerName, BufferSize) when is_integer(BufferSize) ->
    gen_event:add_handler(LoggerName, sg_logger, [BufferSize]).

custom_logger(LoggerName, LoggerType, LogsDir, NamePre, LogsLv) ->
	gen_event:add_handler(LoggerName, logger_h, [LoggerType, LogsDir, NamePre, LogsLv]).
%% Start the lowest level sg_logger handler without Buffer.

simple_logger() -> 
    gen_event:add_handler(sg_logger, sg_logger, []).

%% Log all errors to File for all eternity

%% -type open_error() :: file:posix() | badarg | system_limit.

%% -spec logfile(Request :: {open, Filename}) -> ok | {error, OpenReason} when
%%                   Filename ::file:name(),
%%                   OpenReason :: allready_have_logfile | open_error()
%%            ; (Request :: close) -> ok | {error, CloseReason} when
%%                   CloseReason :: module_not_found
%% 	   ; (Request :: filename) -> Filename | {error, FilenameReason} when
%%                   Filename :: file:name(),
%%                   FilenameReason :: no_log_file.

logfile({open, File}) ->
    case lists:member(error_logger_file_h,
		      gen_event:which_handlers(sg_logger)) of
	true ->
	    {error, allready_have_logfile};
	_ ->
	    gen_event:add_handler(sg_logger, error_logger_file_h, File)
    end;
logfile(close) ->
    case gen_event:delete_handler(sg_logger, error_logger_file_h, normal) of
	{error,Reason} ->
	    {error,Reason};
	_ ->
	    ok
    end;
logfile(filename) ->
    case gen_event:call(sg_logger, error_logger_file_h, filename) of
	{error,_} ->
	    {error, no_log_file};
	Val ->
	    Val
    end.

%% Possibly turn off all tty printouts, maybe we only want the errors
%% to go to a file

%% -spec tty(Flag) -> 'ok' when
%%       Flag :: boolean().

tty(true) ->
    Hs = gen_event:which_handlers(sg_logger),
    case lists:member(error_logger_tty_h, Hs) of
	false ->
	    gen_event:add_handler(sg_logger, error_logger_tty_h, []);
	true -> 
	    ignore
    end,
    ok;
tty(false) ->
    gen_event:delete_handler(sg_logger, error_logger_tty_h, []),
    ok.


%%% ---------------------------------------------------
%%% This is the default sg_logger handler.
%%% ---------------------------------------------------

-spec init(term()) -> {'ok', state() | []}.

init([BufferSize]) when is_integer(BufferSize) ->
    {ok, {BufferSize, 0, []}};
%% This one is called if someone took over from us, and now wants to
%% go back.
init({go_back, _PostState}) ->  
    {ok, {?buffer_size, 0, []}};
init(_) ->  %% Start and just relay to other
    {ok, []}.             %% node if node(GLeader) =/= node().

-spec handle_event(term(), state()) -> {'ok', state()}.

handle_event({Type, GL, Msg}, State) when node(GL) =/= node() ->
    ?MSG_SYS("1", []),
    gen_event:notify({sg_logger, node(GL)},{Type, GL, Msg}),
    %% handle_event2({Type, GL, Msg}, State);  %% Shall we do something
    {ok, State};                               %% at this node too ???
handle_event({info_report, _, {_, Type, _}}, State) when Type =/= std_info ->
    {ok, State};   %% Ignore other info reports here
handle_event({Type, GL, Msg} = Event, State) ->
%%     ?MSG_SYS("1[~p|~p|~p]", [Event, node(GL), node()]),
%%     handle_event2(Event, State). XXX
	{ok, State}.

-spec handle_info(term(), state()) -> {'ok', state()}.

handle_info({emulator, GL, Chars}, State) when node(GL) =/= node() ->
    {sg_logger, node(GL)} ! {emulator, GL, add_node(Chars,self())},
    {ok, State};
handle_info({emulator, GL, Chars}, State) ->
    handle_event2({emulator, GL, Chars}, State);
handle_info(_, State) ->
    {ok, State}.

-spec handle_call(term(), state()) -> {'ok', {'error', 'bad_query'}, state()}.

handle_call(_Query, State) -> {ok, {error, bad_query}, State}.

-spec terminate(term(), state()) -> {'sg_logger', [term()]}.

terminate(swap, {_, 0, Buff}) ->
    {sg_logger, Buff};
terminate(swap, {_, Lost, Buff}) ->
    Myevent = {info, group_leader(), {self(), {lost_messages, Lost}, []}},
    {sg_logger, [tag_event(Myevent)|Buff]};
terminate(_, _) ->
    {sg_logger, []}.

handle_event2(Event, {1, Lost, Buff}) ->
    display(tag_event(Event)),
    {ok, {1, Lost+1, Buff}};
handle_event2(Event, {N, Lost, Buff}) ->
    Tagged = tag_event(Event),
    display(Tagged),
    {ok, {N-1, Lost, [Tagged|Buff]}};
handle_event2(_, State) ->
    {ok, State}.

tag_event(Event) ->    
    {?CONST_FUNC_DATE_TIME, Event}.

display({Tag,{error,_,{_,Format,Args}}}) ->
    display2(Tag,Format,Args);
display({Tag,{error_report,_,{_,Type,Report}}}) ->
    display2(Tag,Type,Report);
display({Tag,{info_report,_,{_,Type,Report}}}) ->
    display2(Tag,Type,Report);
display({Tag,{info,_,{_,Error,_}}}) ->
    display2(Tag,Error,[]);
display({Tag,{info_msg,_,{_,Format,Args}}}) ->
    display2(Tag,Format,Args);
display({Tag,{warning_report,_,{_,Type,Report}}}) ->
    display2(Tag,Type,Report);
display({Tag,{warning_msg,_,{_,Format,Args}}}) ->
    display2(Tag,Format,Args);
display({Tag,{emulator,_,Chars}}) ->
    display2(Tag,Chars,[]).

add_node(X, Pid) when is_atom(X) ->
    add_node(atom_to_list(X), Pid);
add_node(X, Pid) ->
    lists:concat([X,"** at node ",node(Pid)," **~n"]).

%% Can't do io_lib:format

display2(Tag,F,A) ->
    erlang:display({sg_logger,Tag,F,A}).
