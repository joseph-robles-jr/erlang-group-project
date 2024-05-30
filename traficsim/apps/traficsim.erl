-module(traficsim).
-export().


start(Name) ->
    Pid = spawn(traficsim,trafic_server,[]),
    register(Name,Pid).


trafic_light() ->
%% has a state of off or on. Is swithed by trafic_server
% 
% 
trafic_button() ->
%% changed state to let trafic_server know the button was pushed
%% Listen for traffic_server to tell it to change states back to unpressed

trafic_server() ->
%% Tells light to switch state based on a timer
 

%% recive signal from button on crosswalk and change states of lights
%% When light state changes, change trafic_button state to unpressed




