# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |
### Lab Summary
In this lab, we used an adder and a full adder to learn more about combinatorial logic equations and circuits. We implemented the files light.v, adder.v, full_adder.v, updated the constraints file for the switches 0-7 and leds 0-5, and created a top.v file. The light.v file demonstrates how an XOR gate is important for real world problems, such as turning on a stairway light switch to walk up and then turning it off once you reach the top of the stairs. The half adder and full adders were implemented to contain the logic equations for the truth tables. By implementing the top.v file, we were able to connect the logic of the three blocks and demonstrate our combined circuit design to the lab TAs. 

## Lab Questions

### 1 - How might you add more than two bits together?
More than two bits can be added using a ripple carry adder (RCA) and using more full adders and connecting the carry outs to the carry in of each next full adder.

### 2 - What is the importance of the XOR gate in an adder?

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

