# Kalman Filter for DC Motor Angular Velocity Estimation

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=simorxb/Kalman-Filter-DC-Motor)

## Summary

This project implements a Kalman Filter to estimate the angular velocity of a DC motor using noisy measurements. The Kalman Filter is a widely-used estimation algorithm that determines the unknown state of a dynamic system. This project simplifies the Kalman Filter application by using a kinematic model without prior knowledge of the DC motor's physics.

## Project Overview

The Kalman Filter estimates the angular velocity of a DC motor from a series of noisy measurements of its angular position. The filter assumes a linear dynamic system, where the state space representation is given by:

$$ 
x_k = F x_{k-1} + G \alpha_k 
$$

where:
- $$x_k = [\theta; \omega]$$ represents the state vector with angular position $$\theta$$ and angular velocity $$\omega$$.
- $$F = [ 1 ~ \Delta t; 0 ~ 1 ]$$ is the state transition matrix.
- $$G = [ \frac{1}{2}\Delta t^2; \Delta t ]$$ is the control input matrix.
- $$\alpha_k$$ is the normally distributed acceleration with mean 0 and standard deviation $$\sigma_\alpha$$.

The noisy measurement of the angular position $$\theta_k$$ is modeled as:

$$ 
\theta_k = H x_k + v_k 
$$

where:
- $$H = [1 \, 0]$$
- $$v_k$$ is normally distributed with mean 0 and standard deviation $$\sigma_\theta$$.

The Kalman Filter is implemented in MATLAB and Simulink, and the DC motor model is created using Simscape. The project demonstrates how noise affects measurements and shows the Kalman Filter's ability to estimate angular velocity accurately.

## Features

- **Kalman Filter Implementation:** MATLAB function and Simulink model.
- **DC Motor Simulation:** Simscape model for accurate representation.
- **Noise Handling:** Demonstrates the effect of noise on measurements and estimation accuracy.
- **Open Access Model:** Access via MATLAB Online for hands-on experience.

## Author

Simone Bertoni - [Website](simonebertonilab.com)

## Contact

For further communication, connect with Simone Bertoni on [LinkedIn](https://www.linkedin.com/in/simone-bertoni-control-eng/).

