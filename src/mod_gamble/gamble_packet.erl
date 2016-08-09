%% Author: php
%% Created:
%% Description: TODO: Add description to gamble_packet
-module(gamble_packet).

%%
%% Include files
%%
-include("../include/const.common.hrl").
-include("../include/const.protocol.hrl").
%%
%% Exported Functions
%%
-export([packet_format/1]).
%%
%% API Functions
%%
%% *必须实现方法
%% 消息号与消息格式一一对应
packet_format(?MSG_ID_GAMBLE_REQUEST_ROOMS) ->
	?MSG_FORMAT_GAMBLE_REQUEST_ROOMS;
packet_format(?MSG_ID_GAMBLE_REPLY_ROOMS_INFO) ->
	?MSG_FORMAT_GAMBLE_REPLY_ROOMS_INFO;
packet_format(?MSG_ID_GAMBLE_BOOK_NEW_ROOM) ->
	?MSG_FORMAT_GAMBLE_BOOK_NEW_ROOM;
packet_format(?MSG_ID_GAMBLE_REPLY_BOOK) ->
	?MSG_FORMAT_GAMBLE_REPLY_BOOK;
packet_format(?MSG_ID_GAMBLE_JOIN_ROOM) ->
	?MSG_FORMAT_GAMBLE_JOIN_ROOM;
packet_format(?MSG_ID_GAMBLE_REPLY_JOIN) ->
	?MSG_FORMAT_GAMBLE_REPLY_JOIN;
packet_format(?MSG_ID_GAMBLE_INFORM_JOIN) ->
	?MSG_FORMAT_GAMBLE_INFORM_JOIN;
packet_format(?MSG_ID_GAMBLE_REQUEST_LEAVE) ->
	?MSG_FORMAT_GAMBLE_REQUEST_LEAVE;
packet_format(?MSG_ID_GAMBLE_INFORM_LEAVE) ->
	?MSG_FORMAT_GAMBLE_INFORM_LEAVE;
packet_format(?MSG_ID_GAMBLE_REQUEST_READY) ->
	?MSG_FORMAT_GAMBLE_REQUEST_READY;
packet_format(?MSG_ID_GAMBLE_INFORM_READY) ->
	?MSG_FORMAT_GAMBLE_INFORM_READY;
packet_format(?MSG_ID_GAMBLE_GAME_START) ->
	?MSG_FORMAT_GAMBLE_GAME_START;
packet_format(?MSG_ID_GAMBLE_PLAY_CARD) ->
	?MSG_FORMAT_GAMBLE_PLAY_CARD;
packet_format(?MSG_ID_GAMBLE_INFORM_PLAY) ->
	?MSG_FORMAT_GAMBLE_INFORM_PLAY;
packet_format(?MSG_ID_GAMBLE_PLAY_CARD2) ->
	?MSG_FORMAT_GAMBLE_PLAY_CARD2;
packet_format(?MSG_ID_GAMBLE_REPLY_RESULT) ->
	?MSG_FORMAT_GAMBLE_REPLY_RESULT;
packet_format(?MSG_ID_GAMBLE_PLAYER_GIVE_UP) ->
	?MSG_FORMAT_GAMBLE_PLAYER_GIVE_UP;
packet_format(?MSG_ID_GAMBLE_INFORM_HISTORY) ->
	?MSG_FORMAT_GAMBLE_INFORM_HISTORY;
packet_format(?MSG_ID_GAMBLE_REQUEST_CHIP) ->
	?MSG_FORMAT_GAMBLE_REQUEST_CHIP;
packet_format(?MSG_ID_GAMBLE_REPLY_CHIP) ->
	?MSG_FORMAT_GAMBLE_REPLY_CHIP;
packet_format(?MSG_ID_GAMBLE_EXCHANGE_CHIP) ->
	?MSG_FORMAT_GAMBLE_EXCHANGE_CHIP;
packet_format(?MSG_ID_GAMBLE_GAMBLE_RESULT) ->
	?MSG_FORMAT_GAMBLE_GAMBLE_RESULT;
packet_format(?MSG_ID_GAMBLE_PLAY_AGAIN) ->
	?MSG_FORMAT_GAMBLE_PLAY_AGAIN;
packet_format(?MSG_ID_GAMBLE_EXCHANGE_GOLD) ->
	?MSG_FORMAT_GAMBLE_EXCHANGE_GOLD;
packet_format(?MSG_ID_GAMBLE_LOST_CONN) ->
	?MSG_FORMAT_GAMBLE_LOST_CONN;
packet_format(?MSG_ID_GAMBLE_COME_BACK) ->
	?MSG_FORMAT_GAMBLE_COME_BACK;
packet_format(?MSG_ID_GAMBLE_NEED_COMEBACK) ->
	?MSG_FORMAT_GAMBLE_NEED_COMEBACK;
packet_format(?MSG_ID_GAMBLE_NEVEREND) ->
	?MSG_FORMAT_GAMBLE_NEVEREND;
packet_format(?MSG_ID_GAMBLE_NEED_ROOM_BACK) ->
	?MSG_FORMAT_GAMBLE_NEED_ROOM_BACK;
packet_format(?MSG_ID_GAMBLE_BEKICKED) ->
	?MSG_FORMAT_GAMBLE_BEKICKED;
packet_format(?MSG_ID_GAMBLE_CROSS_SERV) ->
	?MSG_FORMAT_GAMBLE_CROSS_SERV;
packet_format(?MSG_ID_GAMBLE_INVITE) ->
	?MSG_FORMAT_GAMBLE_INVITE;
packet_format(?MSG_ID_GAMBLE_OPEN_WINDOW) ->
	?MSG_FORMAT_GAMBLE_OPEN_WINDOW;
packet_format(?MSG_ID_GAMBLE_CLOSE_WINDOW) ->
	?MSG_FORMAT_GAMBLE_CLOSE_WINDOW;
packet_format(MsgId) ->
	?MSG_ERROR("~p~n", [MsgId]).
%%
%% Local Functions
%%
