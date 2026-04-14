; EXPERIMENT NO: 9
; PROGRAM NO: 4
; AIM: To sort an array in ascending order

.ORG 8000H

START:
        MOV R0,#05H

L1:
        MOV DPTR,#9000H
        MOV R1,#05H

L2:
        MOV R2,DPL

        MOVX A,@DPTR
        MOV B,A

        INC DPTR
        MOVX A,@DPTR

        CJNE A,B,L3
        AJMP SKIP

L3:     JC SKIP

        MOV DPL,R2
        MOVX @DPTR,A

        INC DPTR
        MOV A,B
        MOVX @DPTR,A

SKIP:
        DJNZ R1,L2
        DJNZ R0,L1

END
