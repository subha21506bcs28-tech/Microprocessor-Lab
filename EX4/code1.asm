; Experiment 4 – Program 1
; Aim: To interface 7-segment display using 8255 and display digits (0–F)

; Algorithm:
; Step 1: Initialize data segment
; Step 2: Configure 8255 control word
; Step 3: Load 7-segment codes into array
; Step 4: Send each code to output port
; Step 5: Provide delay for visibility
; Step 6: Repeat continuously

.ORG 2000H

DATA SEGMENT
LIST DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H
     DB 7FH,6FH,77H,7CH,39H,5EH,79H,71H
COUNT DB 10H
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX

        ; Initialize 8255 (Port A as output)
        MOV AL,80H
        MOV DX,FFE6H
        OUT DX,AL

REPEAT:
        MOV SI,OFFSET LIST
        MOV CL,COUNT

L1:
        MOV AL,[SI]
        MOV DX,FFE0H      ; Port A
        OUT DX,AL
        CALL DELAY
        INC SI
        DEC CL
        JNZ L1
        JMP REPEAT

; Delay routine
DELAY:
        MOV AH,15H
L3:
        MOV BX,AAAAH
L2:
        DEC BX
        JNZ L2
        DEC AH
        JNZ L3
        RET

CODE ENDS
END START
