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



## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

The Karnaugh map is a torus flattened into a rectangle. This means that the top and bottom
edges are connected, and both sides are connected. The reason it was designed this way is
because K-maps are meant to have any two adjacent cells have only one different bit. In this
way, the edges also end up coinciding, wrapping from 00 to 10, which have only one different
bit.

### Why are the names Sum of Products and Products of Sums?

### Open the test.v file – how are we able to check that the signals match using XOR?

The XOR gate is true if and only if the two inputs are different. This then implies that
XOR is false if and only if the two inputs are the same. Since the condition is checking
if the XOR of the two inputs are not 0, and we are using boolean arithmetic, this is the
same as checking if the XOR of the two inputs is equal to 1. Again, this is only true if
the two inputs are different. If this is the case, the condition is true and the program
prints an error message; otherwise it simply continues, doing nothing of the signals are
the same.