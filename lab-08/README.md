# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

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

### In plain English describe the function and use of a multiplexer.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer is used to route one input to one of several outputs.
A number is used to select which of the outputs the input is sent to.
Demultiplexers only have one (or zero, if disabled) output active at a time.

### What other uses might these circuits have? (Think Shannon’s)
These circuits can be used to implement arbitrary logical functions using
Shannon's algorithm. multiplexers are a way to think of the functions in terms of
selecting which set of inputs to direct to the output, and basing the output
on the values of those inputs. Demultiplexers are a way to think of the functions
as minterms or maxterms, as a result of their property of outputs being one-hot,
allowing us to check if any one of the connected outputs are active.
