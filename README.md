# predator_prey_model

## Description
This project analyzes the population growth of two species via a predator-prey model through the use of MATLAB.

## Summary 
Predator prey is a popular model to explore the effect population have on one another. It is modeled through the use of ODEs. You can construct a differential equation for the rate of which preys grow according to the rate of predators and vice versa. Then using an approximation such as ode45, eulers, rk4, etc. you can figure out the actual population of each at a given time. The populations growth are periodic and can be described succinctly through a phase plot. 

## USE STATEMENT
You can run predator_prey.m to create static graphs or you can run the matlab app. Try both as the static has varied graphs. predator_prey additionally gives you the option to change the form of the equation if you don't want to use the given 


\frac{dx}{dt}=(a-by)x

\frac{dy}{dt} = (-e+cx)y

where y is the predator and x is the prey


## Results 
Static folder contains the images of our prerun results. 
- Cyclic shows the cyclic relationship between predator and prey. This was the function used f = @(t,y) [(2-.5*y(2))*y(1); (-1+.5*y(1))*y(2)];
- Frequent cycles is increased growth rates for both species leading to increase in the amount of cycles within the same amount of time. f = @(t,y) [(6-.5*y(2))*y(1); (-3+.5*y(1))*y(2)]; n=1000
- Extinction shows how under when growth rates of both species are less than one, they both become extinct.


## Done 
- rk4
- rk45
- euler
- modified euler
- Model using Euler
- Model using Modified Euler
- Model using rk4
- Model using rk45
- Model using ode45
- Phase plot to compare the different models used
- Interactive graph

## Authors
- Vincent Lee
- Sean Trinh
