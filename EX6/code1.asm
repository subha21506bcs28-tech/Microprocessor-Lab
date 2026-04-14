; Experiment 6 – Program 1
; Aim: To rotate a stepper motor by 360 degrees using 8255

; Algorithm:
; Step 1: Initialize 8255 control word
; Step 2: Load step sequence (clockwise rotation)
; Step 3: Output sequence to port
; Step 4: Add delay between steps
; Step 5: Repeat sequence for full rotation

.ORG 2000H

DATA SEGMENT
LIST DB 01H,02H,04H,08H
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX

        ; Initialize 8255
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL

L3:
        MOV CH,32H       ; Number of rotations
L2:
        MOV SI,OFFSET LIST
        MOV CL,04H

L1:
        MOV AL,[SI]
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY
        INC SI
        DEC CL
        JNZ L1

        DEC CH
        JNZ L2
        JMP L3

DELAY:
        MOV BX,AAAAH
L4:
        DEC BX
        JNZ L4
        RET

CODE ENDS
END START
