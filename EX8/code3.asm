; EXPERIMENT NO: 8
; PROGRAM NO: 3
; AIM: To perform multiplication using 8051

; ALGORITHM:
; 1. Load two numbers
; 2. Multiply using MUL AB
; 3. Store lower and higher byte

.ORG 8000H

        MOV DPTR,#4000H

        MOVX A,@DPTR
        MOV B,A

        INC DPTR
        MOVX A,@DPTR

        MUL AB

        MOV DPTR,#5000H
        MOVX @DPTR,A

        MOV A,B
        INC DPTR
        MOVX @DPTR,A

L2:     SJMP L2
