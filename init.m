%% Init params

m = 0.1;            % Mass of the disc (kg)
r = 0.05;           % Radius of the disc (m)
J = 0.5*m*r^2;      % Moment of inertia of the disc (kg*m^2)
b = 0.0000095;      % Viscous friction coefficient (N*m*s)
kt = 0.0187;        % Torque constant (N*m/A)
R = 0.6;            % Armature resistance (Ohm)
L = 0.35/1000;      % Armature inductance (H)
ke = 0.0191;        % Back EMF constant (V*s/rad)

%% Kalman Filter

T = 0.01;           % Sampling time (s)
H = [1 0];          % Measurement matrix
F = [1 T; 0 1];     % State transition matrix
G = [0.5*T^2; T];   % Input matrix

s_alpha = 300;      % Angular acceleration noise standard deviation
s_theta = 1;        % Measurement noise standard deviation

Q = G*G'*s_alpha^2; % Process noise covariance matrix
RR = s_theta^2;     % Measurement noise covariance

P0 = 0*eye(2,2);    % Initial error covariance matrix
x0 = [0; 0];        % Initial state estimate [theta; omega]


