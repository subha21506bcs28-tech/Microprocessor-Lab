8086 MULTIPLICATION:
-------------------
                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUM1 DW AAAAH
NUM2 DW BBBBH
MUL1 DW 0000H
MUL2 DW 0000H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV AX,NUM1
                MOV BX,NUM2
                MUL BX
                MOV MUL1,AX
                MOV MUL2,DX
CODE ENDS
END
