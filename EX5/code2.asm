; Experiment 5 – Program 2
; Aim: To generate square waveform using 8255

; Algorithm:
; Step 1: Initialize 8255
; Step 2: Output HIGH value
; Step 3: Output LOW value
; Step 4: Add delay
; Step 5: Repeat continuously

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

L1:
        MOV AL,FFH
        MOV DX,FFE0H
        OUT DX,AL

        MOV AL,00H
        OUT DX,AL

        CALL DELAY
        JMP L1

DELAY:
        MOV BX,5555H
L2:
        DEC BX
        JNZ L2
        RET

CODE ENDS
END START
