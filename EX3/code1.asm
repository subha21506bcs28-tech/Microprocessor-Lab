; Experiment 3 – Program 1
; Aim: To display the character 'I' on the screen using BIOS interrupt

; Algorithm:
; Step 1: Set cursor position
; Step 2: Load character 'I'
; Step 3: Display character using interrupt
; Step 4: Terminate program

CODE SEGMENT
        ASSUME CS:CODE
START:
        MOV AH,02H
        MOV BH,00H
        MOV DH,03
        MOV DL,02
        INT 10H

        MOV AH,0AH
        MOV AL,'I'
        MOV CX,0002H
        INT 10H

        MOV AH,4CH
        INT 21H
CODE ENDS
END START
