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
In this lab, we implemented a multiplexer and a demultiplexer. The multiplexer simulates an internet valve that allows one user,
out of four users, to pass through to the output. The four users are the CEO, you, Fred, and Jill. 
The demultiplexer is used to determine where the user's data is output.
There are four output locations including the library, fire department, school, and the rib shack.
The multiplexer and demultiplexer were then connected together in the top.v file. The output of the mux is the input of the demux.
After implementing our combined design, we demonstrated the functionality to the lab TA using an FPGA board.

## Lab Questions

### In plain English describe the function and use of a multiplexer.
A multiplexer takes multiple inputs and routes them to one output. A selector is used to determine which of the inputs will be
sent to the output.

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
