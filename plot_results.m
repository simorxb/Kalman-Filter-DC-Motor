% Access the signals from out.logsout

omega = out.logsout.get('omega').Values.Data;
t_omega = out.logsout.get('omega').Values.Time;

current = out.logsout.get('current').Values.Data;
t_current = out.logsout.get('current').Values.Time;

omega_est = out.logsout.get('omega_est').Values.Data(:);
t_omega_est = out.logsout.get('omega_est').Values.Time;

theta = out.logsout.get('theta').Values.Data(:);
t_theta = out.logsout.get('theta').Values.Time;

theta_est = out.logsout.get('theta_est').Values.Data;
t_theta_est = out.logsout.get('theta_est').Values.Time;

theta_meas = out.logsout.get('theta_meas').Values.Data;
t_theta_meas = out.logsout.get('theta_meas').Values.Time;


% Create the first figure
figure;

% Subplot for omega
subplot(2, 1, 1);
plot(t_omega, omega, 'LineWidth', 2);
hold on;
plot(t_omega_est, omega_est, 'LineWidth', 2);
hold off;

ylabel('Angular speed - \omega (rad/s)');
legend({'Real', 'Estimated by the kalman Filter'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Subplot for theta
subplot(2, 1, 2);
plot(t_theta, theta*pi/180, 'LineWidth', 2);
hold on;
plot(t_theta_meas, theta_meas*pi/180, 'LineWidth', 2);
plot(t_theta_est, theta_est*pi/180, 'LineWidth', 2);
hold off;
xlabel('Time (s)');
ylabel('Angular position - \theta (deg)');
legend({'Real', 'Measured', 'Estimated by the Kalman Filter'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;