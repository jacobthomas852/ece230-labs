# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - How might you add more than two bits together?

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate is important in calculating the sum bit for an adder. Since it is the odd function,
and the sum will be 1 if and only if only an odd number of the input bits is 1 (otherwise the
number should get pushed into the carry bit instead), the XOR gate is a very efficient and concise
way of implementing the sum bit of the output. Of course, since `A ^ B = (A & ~B) | (~A & B)`, we
could implement this function using other gates, including an all-`NAND` or all-`NOR` implementation,
but the XOR gate is very clear and helps us understand the purpose of the circuit more easily.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
Since we have two sum bits, the largest number it can output is 0b11 = 3. If the sum of the input
numbers would be larger than this, such as 0b10 + 0b10 = 0b100 = 4, we find that we cannot express
the output with only two bits. In this case, the carryout bit must be used to tell us that the sum
has experienced an overflow. In this way, the carryout bit can act as an "extra bit," though in a
typical computer architecture an overflow on addition will treat the overflow as a flag rather than
an additional sum bit.
