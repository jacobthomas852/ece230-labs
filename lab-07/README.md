# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Madeline Garner and Jacob Thomas

## Summary
In this lab, we learned about using negative number representations in binary. This includes one's and two's
complement representations. We found that the one's complement negative of a number is represented by inverting
all the bits, while two's complement first inverts all the bits and then adds one. This applies only to negative
numbers; positive numbers are the same as usual. In the context of arithmetic, we discovered that subtraction can
be implemented by taking the one's complement of a number to be subtracted, then adding the final carry back into
that sum. Two's complement is useful because it does not require this final carry, making subtraction use the same
circuitry as addition except with a different interpretation.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The sum output bit and the difference output bit have the same value for the same inputs (the output pattern is
0110 for both). The difference between the Half Adder and the Half Subtracter is that the Half adder has a carry
bit, which is only on when both inputs are 1 (since you need an extra bit to represent 2), while the Half Subtractor
instead has a borrow bit, which is only on when B > A, since we need a way to tell if we need to subtract from the
next bit due to the nature of subtraction.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry of one's complement makes it harder to use due to the additional circuitry needed to implement it. When implementing one's compliment, it is also possible to do it incorrectly and cause a combinatorial loop. Implementing one's compliment rather than two's compliment causes the circuit to be much slower, so it is recommended to use two's compliment.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case for two's complement is when the negative number has a 1 for the most significant bit and then is followed by all 0s. Two's complement is performed by flipping all of the bits in the number, and then adding one. For example, if the number is 1000, when you flip the bits you get 0111. Adding one to this number causes it to be 1000, which is the same as when we started.
