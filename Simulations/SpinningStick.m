clear
clc

syms theta(t) phi(t)

gravity = 9.80665;    % m/s^2
rod_mass = 1/2;       % kg
rod_radius = 0.375;   % Meters
T_e = 28.7;             % Motor Torque Nm
J_rod = 1/3 * rod_mass * rod_radius ^ 2;
T_L = rod_mass * gravity * rod_radius * cos(phi);

%For starting parameters:
cond1 = pi / 4; %Initial Rotor position
cond2 = 0;      %Initial Rotor speed
%cond3 = alpha(0) == 0;      %Initial Rotor acceleration

[V] = odeToVectorField(diff(phi, 2) == 1/J_rod * (T_e - T_L));
M = matlabFunction(V,'vars', {'t','Y'});
tspan = linspace(0, 0.1, 1000);
y0 = [cond1 cond2];
x = linspace(0, 0.1, 1000);

sol = ode45(M, tspan, y0);
figure
plot(sol.x, sol.y(1,:))
xlabel("Time (s)")
ylabel("Position (rad)")
title("Position of Stick Relative to Ground as a Function of Time")

figure
[~,dy] = gradient(sol.y);
plot(sol.x, dy)
xlabel("Time (s)")
ylabel("Angular Velocity (rad/s)")
title("Angular Velocity of Stick as a Function of Time")


figure
[~,ddy] = gradient(gradient(sol.y));
plot(sol.x, ddy)
xlabel("Time (s)")
ylabel("Angular Acceleration (rad/s)")
title("Angular Acceleration of Stick as a Function of Time")
