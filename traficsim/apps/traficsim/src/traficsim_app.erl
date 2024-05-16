%%%-------------------------------------------------------------------
%% @doc traficsim public API
%% @end
%%%-------------------------------------------------------------------

-module(traficsim_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    traficsim_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
