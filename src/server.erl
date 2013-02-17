-module(server).

-behaviour(gen_server).

-export([start/0]).

-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

-record(state, {}).

start() ->
    gen_server:start_link({local, server_quux}, ?MODULE, [], []).

init([]) ->
    {ok, #state{}}.

handle_call("hello", _From, State) ->
    {reply, "world", State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.
