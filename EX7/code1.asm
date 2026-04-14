; Experiment 7 – Program 1
; Aim: To program 8255 in Mode 0 (Basic Input/Output mode)

; Algorithm:
; Step 1: Load control word for Mode 0
; Step 2: Send control word to control register
; Step 3: Output data to port
; Step 4: Repeat continuously

.ORG 2000H

CODE SEGMENT
        ASSUME CS:CODE
START:
        MOV AL,90H        ; Control word for Mode 0
        MOV DX,FFFFH      ; Control register
        OUT DX,AL

REP:
        MOV DX,FFFDH      ; Port address
        MOV AL,05H
        OUT DX,AL
        JMP REP

CODE ENDS
END START
