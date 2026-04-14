; EXPERIMENT NO: 8
; PROGRAM NO: 1
; AIM: To perform 8-bit addition using 8051 with carry

; ALGORITHM:
; 1. Load first number from memory
; 2. Load second number
; 3. Add both numbers
; 4. Check carry
; 5. Store result and carry

.ORG 8000H

        MOV R1,#00H
        MOV DPTR,#4000H

        MOVX A,@DPTR
        MOV R0,A

        INC DPTR
        MOVX A,@DPTR

        ADD A,R0
        JNC L1
        INC R1

L1:     MOV DPTR,#5000H
        MOVX @DPTR,A

        INC DPTR
        MOV A,R1
        MOVX @DPTR,A

L2:     SJMP L2
