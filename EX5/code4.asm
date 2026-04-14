; Experiment 5 – Program 4
; Aim: To generate staircase waveform using 8255

; Algorithm:
; Step 1: Initialize 8255
; Step 2: Output increasing step values
; Step 3: Add delay between steps
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

L1:
        MOV AL,80H
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY

        MOV AL,C0H
        OUT DX,AL
        CALL DELAY

        MOV AL,0FFH
        OUT DX,AL
        CALL DELAY

        JMP L1

DELAY:
        MOV BX,FFFFH
L2:
        DEC BX
        JNZ L2
        RET

CODE ENDS
END START
