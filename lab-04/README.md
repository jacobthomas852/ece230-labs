# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab, we were given a truth table with four inputs (A, B, C, D), and one output (Y). Using the truth table, we developed a naive equation to represent the lines that resulted in an output of 1.
From the truth table, we also developed K-maps to determine the minterms and maxterms. We used the K-maps to determine the Sum of Products (SOP) and the Products of Sums (POS). We implemnted these equations 
as Verilog code in Vivado. We used the run simulation to make sure that the waveforms were matching. Then we generated the bitstream and gave a FPGA board demonstration to the lab professor.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

### Why are the names Sum of Products and Products of Sums?
The Sum of Products (SOP) represents the minterms, which are the rows with an output of 1 on the truth table. The Products of Sums (POS) represents the maxterms, which are the rows with an output of 0 on the truth table. The SOP is an equation AND-ing the states of the inputs and using OR to combine each of these together. This is multiplication which is added together for the output. The POS is an equation that ORs the states of the inputs and then ANDs these together for the output. So, this is addition that is multiplied together for the output.

### Open the test.v file – how are we able to check that the signals match using XOR?

