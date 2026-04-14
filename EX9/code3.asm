; EXPERIMENT NO: 9
; PROGRAM NO: 3
; AIM: To convert BCD to Binary

.ORG 8000H

START:
        MOV DPTR,#9000H
        MOVX A,@DPTR

        ANL A,#0FH
        MOV R0,A

        MOVX A,@DPTR
        ANL A,#F0H
        SWAP A

        MOV B,#0AH
        MUL AB

        ADD A,R0

        INC DPTR
        MOVX @DPTR,A

END
