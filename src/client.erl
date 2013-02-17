-module(client).

-export([start/0]).

start() ->
    Reply = gen_server:call({server_quux, 'server_node@127.0.0.1'}, "hello"),
    io:format("reply is ~p~n", [Reply]),
    timer:sleep(30000),
    erlang:halt().
