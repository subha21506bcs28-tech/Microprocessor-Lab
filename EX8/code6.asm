; EXPERIMENT NO: 8
; PROGRAM NO: 6
; AIM: To perform 16-bit subtraction using 8051

; ALGORITHM:
; 1. Load two 16-bit numbers
; 2. Subtract lower bytes
; 3. Subtract higher bytes with borrow
; 4. Store result and borrow

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
        MOV R5,A

        MOV A,R0
        CLR C
        SUBB A,R5
        MOV R2,A

        INC DPTR
        MOVX A,@DPTR
        MOV R5,A

        MOV A,R1
        SUBB A,R5
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
