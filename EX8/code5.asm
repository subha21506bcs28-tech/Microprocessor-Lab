; EXPERIMENT NO: 8
; PROGRAM NO: 5
; AIM: To perform 16-bit addition using 8051

; ALGORITHM:
; 1. Load lower and higher bytes
; 2. Add lower bytes
; 3. Add higher bytes with carry
; 4. Store result and carry

.ORG 8000H

        MOV R4,#00H
        MOV DPTR,#4000H

        MOVX A,@DPTR
        MOV R0,A

        INC DPTR
        MOVX A,@DPTR
        MOV R1,A

        INC DPTR
        MOVX A,@DPTR
        ADD A,R0
        MOV R2,A

        INC DPTR
        MOVX A,@DPTR
        ADDC A,R1
        MOV R3,A

        JNC L1
        INC R4

L1:     INC DPTR
        MOV A,R2
        MOVX @DPTR,A

        INC DPTR
        MOV A,R3
        MOVX @DPTR,A

        MOV A,R4
        INC DPTR
        MOVX @DPTR,A

L2:     SJMP L2
