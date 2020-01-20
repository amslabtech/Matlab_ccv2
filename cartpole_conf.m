g = 9.81;   % [m/s^2]
max_v = 1;  % [m/s]

%{
*.w (= width)  : m
*.l (= length) : m
*.h (= height) : m
*.r (= radius) : m
*.rho (= ƒÏ)    : kg/m^3
*.m (= mass)   : kg
*.color        : RGB
%}
ground.w = 10;
ground.l = 0.03;
ground.h = 10;
ground.color = [0.5 0.7 0.8];

body.w = 0.5;
body.l = 0.2;
body.h = 0.2;
body.rho = 1000;
body.m = body.w * body.l * body.h * body.rho; 
body.color = [0.25 0.40 0.70];

stick.w = 0.05;
stick.l = 1;
stick.h = 0.05;
stick.rho = 1000;
stick.m = stick.w * stick.l * stick.h * stick.rho;
stick.color = [0.0 0.5 0.0];

tire.r = 0.15;
tire.l = 0.1;
tire.rho = 5000;
tire.m = pi * tire.r^2 * tire.l * tire.rho;
tire.color = [0.0 0.0 0.0];

omni.r = 0.05;
omni.rho = 1000;
omni.m = 4 * pi * omni.r^3 * omni.rho / 3;
omni.color = [0.4 0.4 0.4];

cartpole_init_pose = [-(ground.w/2-1) tire.r+ground.l/2 0]; % [m m m]

m_cart = body.m + 2*tire.m + 4*omni.m;

% for steer control
max_steer = 0.42;           % [rad]
waypoint_radius = 0.1;      % [m]
waypoint_length = 0.05;     % [m]
path = [4.0 0.0 2.0];       % [m]
tread = tire.l + body.h;    % [m]

env = 'cartpole';
open_system(env);
sim(env);