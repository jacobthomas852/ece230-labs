# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Madeline Garner and Jacob Thomas

## Lab Summary
In this lab, we learned about using Verilog modules to design circuitry based on combinatoral logic.
We used our previous experiences with Karnaugh maps to design optimized functions in both
sum-of-products and product-of-sums forms, then implemented them in separate Verilog modules. We then
learned about how our`top.v` file acts as the entrypoint for a Verilog project, and wrote a top module
to combine both of the modules we had just designed. We then discovered how the `constraints.xdc` file
is used to tell Vivado which physical pins map to specific variables in our Verilog schematics.

## Lab Questions

### 1 - Explain the role of the Top Level file.
The top level file is the entrypoint of our Verilog schematic. It is used to describe the whole circuit's
functionality. However, for larger projects, it would get far too complicated to design the entire circuit
in one file, so we can use modules to insert other pieces of functionality into the circuit in an abstracted
manner. The top level file, in this case, is still used to describe the "whole circuit," despite not containing
every detail, because it gives an abstracted, overarching (top-level!) view of the circuit.

### 2 - Explain the function of the Constraints file.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?

