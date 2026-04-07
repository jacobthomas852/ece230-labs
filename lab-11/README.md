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

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

