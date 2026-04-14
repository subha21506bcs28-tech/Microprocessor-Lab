; Experiment 5 – Program 3
; Aim: To generate triangle waveform using 8255

; Algorithm:
; Step 1: Initialize 8255
; Step 2: Increment output value (rising edge)
; Step 3: Decrement output value (falling edge)
; Step 4: Repeat continuously

.ORG 2000H

DATA SEGMENT
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX

        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL

        MOV AL,00H

L1:
        MOV DX,FFE0H
        OUT DX,AL
        INC AL
        CMP AL,0FFH
        JNZ L1

L2:
        MOV DX,FFE0H
        OUT DX,AL
        DEC AL
        CMP AL,00H
        JNZ L2

        JMP L1

CODE ENDS
END START
