; Experiment 2 – Program 1
; Aim: To sort an array in ascending order using 8086

; Algorithm:
; Step 1: Load array and count
; Step 2: Compare adjacent elements
; Step 3: Swap if first > second
; Step 4: Repeat for all elements (Bubble sort)
; Step 5: Stop when sorted

.ORG 2000H

DATA SEGMENT
ARRAY DW 0005H,0003H,0002H,0001H,0004H
COUNT DW 0005H
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA

START:
        MOV AX,DATA
        MOV DS,AX

        MOV DX,COUNT
        DEC DX

L2:
        MOV CX,DX
        MOV SI,OFFSET ARRAY

L1:
        MOV AX,[SI]
        CMP AX,[SI+2]
        JBE L3

        XCHG AX,[SI+2]
        XCHG AX,[SI]

L3:
        ADD SI,2
        LOOP L1

        DEC DX
        JNZ L2

        HLT

CODE ENDS
END START
