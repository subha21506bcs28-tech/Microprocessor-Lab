; EXPERIMENT NO: 8
; PROGRAM NO: 4
; AIM: To perform division using 8051

; ALGORITHM:
; 1. Load dividend and divisor
; 2. Perform DIV AB
; 3. Store quotient and remainder

.ORG 8000H

        MOV DPTR,#4000H

        MOVX A,@DPTR
        MOV B,A

        INC DPTR
        MOVX A,@DPTR

        DIV AB

        MOV DPTR,#5000H
        MOVX @DPTR,A

        MOV A,B
        INC DPTR
        MOVX @DPTR,A

L2:     SJMP L2
