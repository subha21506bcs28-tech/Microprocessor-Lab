; EXPERIMENT NO: 8
; PROGRAM NO: 2
; AIM: To perform 8-bit subtraction using 8051 with borrow

; ALGORITHM:
; 1. Load two numbers
; 2. Subtract second from first
; 3. Check borrow
; 4. Store result and borrow

.ORG 8000H

        MOV R1,#00H
        MOV DPTR,#4000H

        MOVX A,@DPTR
        MOV R0,A

        INC DPTR
        MOVX A,@DPTR
        MOV R2,A

        MOV A,R0
        CLR C
        SUBB A,R2

        JNC L1
        INC R1

L1:     MOV DPTR,#5000H
        MOVX @DPTR,A

        INC DPTR
        MOV A,R1
        MOVX @DPTR,A

L2:     SJMP L2
