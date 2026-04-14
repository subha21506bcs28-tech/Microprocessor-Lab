8086 SUBRACTION:
---------------
              OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUM1 DW AAAAH
NUM2 DW BBBBH
DIFF DW 0000H
BR DB 00H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV CL,00H
                MOV AX,NUM1
                SUB AX,NUM2
                JNC L1
                INC CL
L1:             MOV DIFF,AX
                MOV BR,CL
CODE ENDS
END
