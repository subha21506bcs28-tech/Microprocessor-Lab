; Experiment 3 – Program 2
; Aim: To create a file and write "HELLO WORLD" into it

; Algorithm:
; Step 1: Create a file
; Step 2: Write message into file
; Step 3: Close file
; Step 4: Open file and read contents
; Step 5: Display contents

DATA SEGMENT
FN DB "TEXT.TXT","$"
MSG DB "HELLO WORLD"
BUFFER DB 21H DUP(00H),"$"
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA,ES:DATA
START:
        MOV AX,DATA
        MOV DS,AX
        MOV ES,AX

        MOV AH,3CH
        MOV CX,000H
        MOV DX,OFFSET FN
        INT 21H

        MOV BX,AX
        MOV AH,40H
        MOV CX,0BH
        MOV DX,OFFSET MSG
        INT 21H

        MOV AH,3EH
        INT 21H

        MOV AH,3DH
        MOV DX,OFFSET FN
        INT 21H

        MOV BX,AX
        MOV AH,3FH
        MOV DX,OFFSET BUFFER
        MOV CX,0BH
        INT 21H

        MOV AH,09H
        MOV DX,OFFSET BUFFER
        INT 21H

        MOV AH,4CH
        INT 21H
CODE ENDS
END START
