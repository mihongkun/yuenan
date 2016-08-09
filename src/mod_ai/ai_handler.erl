%% Author: php
%% Created: 
%% Description: TODO: Add description to ai_handler
-module(ai_handler).

%%
%% Include files
%%
-include("../include/const.common.hrl").
-include("../include/const.protocol.hrl").
%%
%% Exported Functions
%%
-export([handler/3]).
%%
%% API Functions
%%
%% ai播放结束
handler(?MSG_ID_AI_CS_END, Player, {}) ->
	ai_api:set_battle_on(Player, ?false),
	{?ok, Player};
handler(MsgId,Player,Datas) ->
	?MSG_ERROR("MsgId:~p PlayerUid:~p Binary:~p~n",[MsgId, element(2,Player), Datas]),
	{?ok, Player}.
%%
%% Local Functions
%%
