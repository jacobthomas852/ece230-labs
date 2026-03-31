# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Edgar Rios and Jacob Thomas

## Summary
In this lab, we learned about sequential circuits and memory using edge-triggered
circuitry and clocks. We also designed three different types of edge-triggered
flip-flops, including the D-flipflop, T-flipflop, and JK-flipflop. We triggered
these on the positive edge of the clock circuit to make them synchronous.

## Lab Questions

### What is difference between edge and level sensitive circuits?
Level sensitive circuits can update at any time while the clock signal is high. Since most
clock signals are high for half the period and low for half the period, there is actually a fairly
large portion of time (half) where the circuit can update. this means that if an input changes during
the high period, the circuit could update at a time which we don't expect. The solution is edge sensitive
circuits, which greatly minimize the active time to a very small fraction of the clock's period. This way,
we can be much more accurate in knowing when circuits can update, and signals can synchronously register
across many circuits if they are connected to the same clock.

### Why is it important to declare initial state?
Initial state is important because we want a known starting point. When a component is turned on, it 
may use leftover inputs or take in random values based on physical component. For example, if we were making
a counter, we would want to start at 0 and work out way up. If we do not declare a starting point, we may 
start at a random and unpredictable point. 

### What do edge sensitive circuits let us build?
Edge sensitive circuits allow us to build most of modern technology. Edge sensitive circuits allows us to 
build synchronous things, which is almost all of the technology today. Anything from simple calculators
to modern cell phones. With edge sensitive circuits, we can build up to everything related to computer science.
