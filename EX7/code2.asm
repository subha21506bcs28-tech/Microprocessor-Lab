; Experiment 7 – Program 2
; Aim: To program 8255 in Mode 2 (Bidirectional I/O mode)

; Algorithm:
; Step 1: Load control word for Mode 2
; Step 2: Send control word to control register
; Step 3: Output data to port
; Step 4: Repeat continuously

.ORG 2000H

CODE SEGMENT
        ASSUME CS:CODE
START:
        MOV AL,94H        ; Control word for Mode 2
        MOV DX,FFFFH
        OUT DX,AL

REP:
        MOV DX,FFFDH
        MOV AL,05H
        OUT DX,AL
        JMP REP

CODE ENDS
END START
