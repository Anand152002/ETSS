clc;
clear all;
close all;
% Define the true value of the random variable X and observation Y
true_X = 5;           % True value of X
observation_Y = true_X + 2*randn(1);  % Simulated noisy observation of X

% Define the parameters of the estimation problem
mean_X = 0;           % Mean of X
variance_X = 1;       % Variance of X
variance_noise = 2;   % Variance of the observation noise

% Calculate the LMMSE estimate of X
% The LMMSE estimate of X given Y is E[X|Y] = m_X + C_XY * inv(C_YY) * (Y - m_Y)

m_X = mean_X;
m_Y = 0; 
C_XY = 1; 
C_YY = variance_noise;

% Calculate the LMMSE estimate of X
LMMSE_estimate = m_X + C_XY * (1/C_YY) * (observation_Y - m_Y);

% Display the results
disp(['True value of X: ', num2str(true_X)]);
disp(['Noisy observation Y: ', num2str(observation_Y)]);
disp(['LMMSE estimate of X: ', num2str(LMMSE_estimate)]);