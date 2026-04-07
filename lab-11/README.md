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

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

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
