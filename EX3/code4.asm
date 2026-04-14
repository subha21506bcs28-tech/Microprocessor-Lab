; Experiment 3 – Program 4
; Aim: To display pattern of letter 'C'

; Algorithm:
; Step 1: Set cursor position
; Step 2: Print 'C' multiple times in rows
; Step 3: Adjust cursor for each row
; Step 4: Terminate program

CODE SEGMENT
        ASSUME CS:CODE
START:
        MOV AH,02H
        MOV BH,00H
        MOV DH,05H
        MOV DL,12H
        INT 10H

        MOV AH,0AH
        MOV AL,'C'
        MOV CX,0003H
        INT 10H

        MOV AH,02H
        MOV DH,06H
        MOV DL,12H
        INT 10H

        MOV AH,0AH
        MOV AL,'C'
        MOV CX,0001H
        INT 10H

        MOV AH,02H
        MOV DH,07H
        MOV DL,12H
        INT 10H

        MOV AH,0AH
        MOV AL,'C'
        MOV CX,0003H
        INT 10H

        MOV AH,4CH
        INT 21H
CODE ENDS
END START
