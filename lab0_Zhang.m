%% Lab1 by Devon Chin, Ari Gottesman, Ted Zhang
%% Exercise 1
t = [ 0:10 ]
plot( t, 11.052*(1 - exp(-0.693*t)) )
%a.maximum speed:11.  mph:2.236*11=24.596; that is really fast for a person
%because average people run at speed 6.5 mph.
%b. because it only plot for one integer for each value point.

%% Excercise 2
t= [0:0.01:10]
xlabel('time');
ylabel('velocity');
title('Griffith-Joyner''s modeled velocity, 1988');
plot(t, 11.052*(1-exp(-0.693*t)))
%For '-k', the graph shows a horizontal solid line in color black 
%For '--r', the graph turns dashed in red
%For '-.g', the graph turns dashed and dot in green
%For ':c' , the graph turns to dot line with light blue colr

%% Excercise 3
hold on
plot( [0 10], [11.052, 11.052], '--b' )
legend( 'velocity', 'maximum', 'Location', 'southeast' );
hold off

%% Excercise 4
[ t1, v1 ] = ode45( @(t,v) 7.661 - 0.693*v, [ 0, 10 ], 0 );
plot(t1, v1, 'ok')
xlabel('time');
ylabel('velocity');
title('Griffith-Joyner''s modeled velocity, 1988');
legend( 'velocity', 'maximum', 'Location', 'southeast' );
% The space is uneven becasue the change in velocity depends on the current
% velocity(Autonomous equation)

%% Excercise 5
rhs = @(t,v) 7.661 - 0.693*v;
rhs(0,0)
rhs(10.49,11.052)
rhs(1.15,6)
%The value shown below shows the dv/dt of the point 






    



