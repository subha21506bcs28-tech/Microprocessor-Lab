; Experiment 7 – Program 3
; Aim: To program 8255 in Mode 3 (control/extended mode operation)

; Algorithm:
; Step 1: Load control word
; Step 2: Send control word to 8255
; Step 3: Output data to port
; Step 4: Repeat continuously

.ORG 2000H

CODE SEGMENT
        ASSUME CS:CODE
START:
        MOV AL,96H        ; Control word
        MOV DX,FFFFH
        OUT DX,AL

REP:
        MOV DX,FFFDH
        MOV AL,05H
        OUT DX,AL
        JMP REP

CODE ENDS
END START
