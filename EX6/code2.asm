; Experiment 6 – Program 2
; Aim: To rotate a stepper motor by 90 degrees in forward and reverse direction

; Algorithm:
; Step 1: Initialize 8255
; Step 2: Load forward sequence
; Step 3: Output sequence with delay
; Step 4: Load reverse sequence
; Step 5: Output reverse sequence
; Step 6: Repeat continuously

.ORG 2000H

DATA SEGMENT
LIST1 DB 08H,04H,02H,01H   ; Reverse
LIST2 DB 01H,02H,04H,08H   ; Forward
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
        ; Forward rotation
        MOV CH,0CH
L2:
        MOV SI,OFFSET LIST1
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

        ; Reverse rotation
L4:
        MOV CH,0CH
L5:
        MOV DI,OFFSET LIST2
        MOV CL,04H

L6:
        MOV AL,[DI]
        MOV DX,FFE0H
        OUT DX,AL
        CALL DELAY
        INC DI
        DEC CL
        JNZ L6

        DEC CH
        JNZ L5
        JMP L3

DELAY:
        MOV BX,AAAAH
L7:
        DEC BX
        JNZ L7
        RET

CODE ENDS
END START
