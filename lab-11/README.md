# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Edgar Rios and Jacob Thomas

## Summary
In this lab we implemented 2 counters (a modulo counter and ripple counter) using techniques 
we have learned throughout the semester. We have combined flip flops (both d and t flip flops)
and adders to get these counters working. These are techniques that build on each other to make
many more complex systems that we see in everyday computers. We also learned that you cannot have 
more than 1 always block in a module. 

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter divides the clock by 2 * count because it completes two full cycles, 
one cycle gets completed on high the other cycle gets completed on the low. In our code,
we use `mod_out` to keep track of this cycle change. To toggle this, we used a flip flop 
to help show the change in led[6]. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
This is because we designed the t-flipflops to switch on the rising edge of the previous, with the clock
input being the output of the previous flip-flop's data. When the first flip-flop recieves a clock signal
and switches to 1, the next flip-flop receives that one as a rising edge on the clock and also toggles its value
from zero to one. This causes the next flip-flop to recieve a rising edge, and it continues. This is what makes
this implementation a down counter instead of an up counter.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Using the formula f(x) = 100000 KHz * 1/2^n, where *n* is the ring counter width, we will solve for *n* when f(x)
= 1 KHz.

1 = 100000 * 1/(2^n)

2^n = 100000

log_2(2^n) = log_2(100000)

n = log_2(100000) = 16.61

So we would round to either f(16) = 1.525 KHz or f(17) = 0.7629 KHz, since we can only have an integer number of
flip-flops.
