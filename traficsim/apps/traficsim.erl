-module(traficsim).
-export([start/0, trafic_light/0, trafic_button/2, traffic_server/0]).


start() ->

    %starts trafic_server
    Pid = spawn(trafic_light),
    register(trafic_light,Pid).
    Tc_pid = spawn(traffic_server(Pid)),
    T_button_pid = spawn(trafic_button),
    register(Traffic_server,Tc_pid)
    register(Name,Pid).
    register(T_button,T_button_pid)


trafic_light() ->
%% has a state of off or on. Is swithed by trafic_server
    receive
        Light_color ->
            io:format("The light is now ~p~n", [Light_color]).
        end,
        trafic_light()
            



        
    
trafic_button(Pressed,Tc_pid) ->
%% changed state to let trafic_server know the button was pushed
%% Listen for traffic_server to tell it to change states back to unpressed
%Pushed or not pushed
% 
Pressed =:= 'y' ->
    Tc_pid ! {self(),'y'}.

Pressed =:= 'n' -> 
    Tc_pid ! 'n'


end.

trafic_server() ->
   receive
    {From, Button_state} 

    Stat_of_light = green
    

    
    %IF BUTTON IS PUSHED, timer:cancel(TRef)
    timer:cancel(TRef)




%% Tells light to switch state based on a timer
%% 
%% 
%% 
%% 
 
%%______________________________________
case (Stat_of_light) of (green) ->
    

    Tref = apply_after(2000),

    
    %change state to next color
    Pid ! yellow,
    Stat_of_light = yellow.

case (Stat_of_light) of (yellow) ->
    
    Tref = apply_after(2000)
    
    %change state to next color
    Pid ! red,
    Stat_of_light = red.

case (Stat_of_light) of (red) ->
    
    Tref = apply_after(2000)
    
    %change state to next color
    Pid ! green,
    Stat_of_light = green.

end,
trafic_server().
% 
% 

%% recive signal from button on crosswalk and change states of lights
%% When light state changes, change trafic_button state to unpressed




