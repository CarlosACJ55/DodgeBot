clear
clc

syms theta(t) phi(t)

gravity = 9.80665;    % m/s^2
motor_mass = 9;       % kg
motor_length = 0.171;  %m
motor_height = 0.130;  %m
motor_width  = 0.130;  %m
stick_mass = 0.5;
stick_radius = 0.375;
T_e = 54;             % Motor Torque Nm
J_stick = 1/3 * stick_mass * stick_radius ^ 2;
J_motors = 1/12 * motor_mass * motor_width ^ 2 + 7/48 * motor_mass * motor_length ^ 2;

%For starting parameters:
cond1 = pi / 4; %Initial Rotor position
cond2 = 0;      %Initial Rotor speed
%cond3 = alpha(0) == 0;      %Initial Rotor acceleration

[V] = odeToVectorField(diff(phi, 2) == 1/(J_motors + J_stick) * (T_e));
M = matlabFunction(V,'vars', {'t','Y'});
tspan = linspace(0, 0.1, 1000);
y0 = [cond1 cond2];
x = linspace(0, 0.1, 1000);

sol = ode45(M, tspan, y0);
figure
plot(sol.x, sol.y(1,:))
xlabel("Time (s)")
ylabel("Position (rad)")
title("Position of Motor Assembly Relative to Ground as a Function of Time")

figure
[~,dy] = gradient(sol.y);
plot(sol.x, dy)
xlabel("Time (s)")
ylabel("Angular Velocity (rad/s)")
title("Angular Velocity of Motor Assembly as a Function of Time")

figure
[~,ddy] = gradient(gradient(sol.y));
plot(sol.x, ddy)
xlabel("Time (s)")
ylabel("Angular Acceleration (rad/s)")
title("Angular Acceleration of Motor Assembly as a Function of Time")