; Experiment 5 – Program 5
; Aim: To generate sine waveform using lookup table

; Algorithm:
; Step 1: Store sine values in array
; Step 2: Output values sequentially
; Step 3: Reverse order for full cycle
; Step 4: Repeat for continuous waveform

.ORG 2000H

DATA SEGMENT
LIST DB 80H,8BH,96H,A0H,ABH,B5H,BFH,C8H,D1H,D9H,E1H,E8H,EDH,F3H,F7H,FAH,FDH,FEH,FFH
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX

        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL

L5:
        MOV SI,OFFSET LIST
        MOV CL,13H

L1:
        MOV AL,[SI]
        MOV DX,FFE0H
        OUT DX,AL
        INC SI
        DEC CL
        JNZ L1

        MOV CL,13H
L2:
        DEC SI
        MOV AL,[SI]
        OUT DX,AL
        DEC CL
        JNZ L2

        MOV SI,OFFSET LIST
        MOV CL,13H

L3:
        MOV AL,[SI]
        NEG AL
        OUT DX,AL
        INC SI
        DEC CL
        JNZ L3

        MOV CL,13H
L4:
        DEC SI
        MOV AL,[SI]
        NEG AL
        OUT DX,AL
        DEC CL
        JNZ L4

        JMP L5

CODE ENDS
END START
