; EXPERIMENT NO: 9
; PROGRAM NO: 2
; AIM: To convert ASCII to Hexadecimal

.ORG 8000H

        MOV DPTR,#4000H
        MOVX A,@DPTR

        CJNE A,#40H,L2
L2:     JC L1
        SUBB A,#07H

L1:     SUBB A,#30H

        INC DPTR
        MOVX @DPTR,A

END
