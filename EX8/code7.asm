; EXPERIMENT NO: 8
; PROGRAM NO: 7
; AIM: To evaluate the expression (x^2 - y) using 8051

; ALGORITHM:
; 1. Load value of x from memory
; 2. Square x using MUL instruction
; 3. Load value of y
; 4. Subtract y from x^2
; 5. Check borrow
; 6. Store result and borrow

.ORG 8000H

        MOV R1,#00H            ; borrow = 0
        MOV DPTR,#4000H

        ; Load x
        MOVX A,@DPTR
        MOV B,A                ; B = x

        ; x^2
        MUL AB                 ; A = LSB, B = MSB

        MOV R2,A               ; store LSB
        MOV R3,B               ; store MSB

        ; Load y
        INC DPTR
        MOVX A,@DPTR
        MOV R4,A               ; y

        ; Subtract y from LSB
        MOV A,R2
        CLR C
        SUBB A,R4
        MOV R5,A               ; result LSB

        ; Subtract borrow from MSB
        MOV A,R3
        SUBB A,#00H
        MOV R6,A               ; result MSB

        JNC L1
        INC R1                 ; borrow

L1:     MOV DPTR,#5000H

        ; Store result
        MOV A,R5
        MOVX @DPTR,A

        INC DPTR
        MOV A,R6
        MOVX @DPTR,A

        ; Store borrow
        INC DPTR
        MOV A,R1
        MOVX @DPTR,A

L2:     SJMP L2
