8086 DIVISION:
-------------
              OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUM1 DW 0004H
NUM2 DW 0002H
QUO DW 0000H
REM DW 0000H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV DX,0000H
                MOV AX,NUM1
                MOV BX,NUM2
                DIV BX
                MOV QUO,AX
                MOV REM,DX
CODE ENDS
END
