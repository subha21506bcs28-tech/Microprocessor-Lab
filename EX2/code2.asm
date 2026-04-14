; Experiment 2 – Program 2
; Aim: To search an element in an array using 8086

; Algorithm:
; Step 1: Load key value
; Step 2: Compare with each element
; Step 3: If match found, increment counter
; Step 4: Continue till end
; Step 5: Store result

.ORG 2000H

DATA SEGMENT
ARRAY DW 0000H,0002H,0004H,0006H,0008H
COUNT DB 05H
KEY   DW 0005H
RES   DB 00H
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE, DS:DATA

START:
        MOV AX,DATA
        MOV DS,AX

        MOV AX,KEY
        MOV CL,COUNT
        LEA SI,ARRAY

        MOV BL,00H

L2:
        CMP AX,[SI]
        JNZ L1
        INC BL

L1:
        ADD SI,2
        LOOP L2

        MOV RES,BL

        HLT

CODE ENDS
END START
