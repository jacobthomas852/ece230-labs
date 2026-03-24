# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

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
In this lab, we created simple memory systems as a way to learn how behavioral Verilog
works. We started with a simple D-latch, which stores data when an Enable bit is active.
Then we made a small 8-bit memory system, with four bytes of individual storage which are
chosen by a selector. This system also only stores on Enable, and always displays the data
in the byte currently selected by the selection bits.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog typically doesn't work very well with circular circuits, because it is
difficult to tell if the circuit will stabilize. Behavioral Verilog solves this by describing
exactly when data should change, particularly through its use of the `always` block.

### What is the meaning of always @(\*) in a sensitivity block?

### What importance is memory to digital circuits?
