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
Edgar Rios Negrete and Jacob Thomas

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
The always block will automatically run when ever any signal used inside changes. It is helpful 
with combinational logic becasue it automatically includes all inputs in the sensitivty list 
(assuming its `always @(*)`). This prevents some errors and ensures the block outputs correctly
without missing singals.

### What importance is memory to digital circuits?
Digital memory provides us the chance to turn circuits sequential rather than just combinational.
For example, a combinational circuit has no history and its current output is strictly determined by
the input. A sequencial circuit can hold state and take in current input at the same time. On the
previous lab, we saw that when the CEO (or any user really) tries to send a message, the bus is 
temporarily filled with the wrong values. With memory, this problem can be solved. 
