; Experiment 2 – Program 3
; Aim: To reverse an array using 8086

; Algorithm:
; Step 1: Load array and count
; Step 2: Initialize SI to start of array
; Step 3: Initialize DI to end of array
; Step 4: Swap elements at SI and DI
; Step 5: Move SI forward and DI backward
; Step 6: Repeat until SI >= DI

.ORG 2000H

DATA SEGMENT
ARRAY DW 0001H, 0002H, 0003H, 0004H, 0005H
COUNT DW 0005H
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA
    MOV DS, AX

    LEA SI, ARRAY
    MOV CX, COUNT
    DEC CX
    SHL CX, 1          ; Convert count to byte offset

    LEA DI, ARRAY
    ADD DI, CX         ; DI points to last element

L1:
    CMP SI, DI
    JGE L2

    MOV AX, [SI]
    XCHG AX, [DI]
    MOV [SI], AX

    ADD SI, 2
    SUB DI, 2
    JMP L1

L2:
    MOV AH, 4CH
    INT 21H

CODE ENDS
END START
