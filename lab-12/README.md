# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name

## Summary
In the lab we implemented a 5 state moore machine using both a One Hot and Binary encoding. This was useful to see both 
and learn when it is best to use one over the other. We developed next state equations for both of these methods, and mapped 
them to our 5 values (A - E). 

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One hot uses one flip flop per state in the program. Only one of these flip flops is active at all times, this is the one
that has state. Binary enoding uses significantly less flip flops, and has a more complex logic. To calculate the next state
you would need to make a truth table that maps out the next states and then calculate an equation based on the K Map. The logic
on One Hot is significantly easier. 

### Which method did your team find easier, and why?
I found the One Hot method easier to implement beacuas the assigning logic was more straight forwards and there was 
not a lot of math behind it. For the binary encoding, I had a miscalculation when I did the K map and it was hard to
find during the lab.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
You should use One Hot on an FPGA when you have a large number of states and you want to minimize any delays. FPGAs have 
a lot of registers, so this is not a waste of resources. You would use binary encoding when you have a limited ammount of 
flip flops or they are too costly. You would also use binary when you need to pass in large values like a memory address. 
