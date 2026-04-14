;experinment-1 program-4
;AIM: evaluate the expression a^2+b^2+c^2
            OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
A   DB 05H
B   DB 08H
C   DB 03H
RES DW 0000H
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA
    MOV DS, AX

    ; A^2
    MOV AL, A
    MUL AL
    MOV BX, AX

    ; B^2
    MOV AL, B
    MUL AL
    ADD BX, AX

    ; C^2
    MOV AL, C
    MUL AL
    ADD BX, AX

    MOV RES, BX

    HLT

CODE ENDS
END START
