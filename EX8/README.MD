# EX8 – Implementation of Arithmetic Operations using 8051 (External Memory)

##  Aim
To perform arithmetic operations using 8051 microcontroller with external memory.

##  Programs Included
1. 8-bit Addition (with carry)
2. 8-bit Subtraction (with borrow)
3. Multiplication
4. Division
5. 16-bit Addition
6. 16-bit Subtraction
7. Evaluation of expression (x² − y)

##  Concepts Used
- 8051 Assembly Language
- External Memory Access (MOVX)
- Data Pointer (DPTR)
- Register Usage (A, B, R0–R6)
- Arithmetic Instructions (ADD, SUBB, MUL, DIV)
- Carry and Borrow Handling

## Working Principle
- Input values are stored in external memory starting at address 4000H.
- Data is accessed using DPTR and MOVX instructions.
- Arithmetic operations are performed using accumulator and registers.
- Results are stored back in external memory starting at 5000H.
- Carry or borrow is stored separately when required.

##  Outcome
- Understanding of external memory interfacing in 8051
- Ability to perform 8-bit and 16-bit arithmetic operations
- Knowledge of carry and borrow handling
- Ability to evaluate mathematical expressions using assembly language
