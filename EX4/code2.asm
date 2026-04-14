; Experiment 4 – Program 2
; Aim: To display the word "HEL" using 7-segment display via 8255

; Algorithm:
; Step 1: Initialize 8255 ports
; Step 2: Load segment values for H, E, L
; Step 3: Send values to respective ports
; Step 4: Turn OFF display after delay
; Step 5: Repeat continuously

.ORG 2000H

DATA SEGMENT
VAL1 DB 76H   ; H
VAL2 DB 79H   ; E
VAL3 DB 38H   ; L
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE, DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX

        ; Initialize 8255
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL

MAIN:
        ; Display H
        MOV DX,FFE0H
        MOV AL,VAL1
        OUT DX,AL

        ; Display E
        MOV DX,FFE2H
        MOV AL,VAL2
        OUT DX,AL

        ; Display L
        MOV DX,FFE4H
        MOV AL,VAL3
        OUT DX,AL

        CALL DELAY

        ; Turn OFF
        MOV DX,FFE0H
        MOV AL,00H
        OUT DX,AL

        MOV DX,FFE2H
        OUT DX,AL

        MOV DX,FFE4H
        OUT DX,AL

        CALL DELAY
        JMP MAIN

; Delay routine
DELAY:
        MOV AH,05H
L3:
        MOV BX,FFFFH
L2:
        DEC BX
        JNZ L2
        DEC AH
        JNZ L3
        RET

CODE ENDS
END START
