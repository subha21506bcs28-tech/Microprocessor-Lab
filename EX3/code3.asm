; Experiment 3 – Program 3
; Aim: To compare two strings

; Algorithm:
; Step 1: Load both strings
; Step 2: Compare character by character
; Step 3: If mismatch → Not Equal
; Step 4: If all match → Equal
; Step 5: Display result

DATA SEGMENT
STR1 DB "ABCC","$"
STR2 DB "ABCC","$"
COUNT DB 04H
OUT1 DB "EQUAL","$"
OUT2 DB "NOT EQUAL","$"
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX

        MOV SI,OFFSET STR1
        MOV DI,OFFSET STR2
        MOV BL,COUNT
        CLD

L2:
        CMPSB
        JZ L1
        JMP L3

L1:
        DEC BL
        JNZ L2

        MOV AH,09H
        MOV DX,OFFSET OUT1
        INT 21H
        JMP L4

L3:
        MOV AH,09H
        MOV DX,OFFSET OUT2
        INT 21H

L4:
        MOV AH,4CH
        INT 21H
CODE ENDS
END START
