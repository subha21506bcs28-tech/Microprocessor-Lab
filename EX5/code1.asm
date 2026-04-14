; Experiment 5 – Program 1
; Aim: To interface ADC using 8255 and read analog data

; Algorithm:
; Step 1: Initialize 8255 control word
; Step 2: Start ADC conversion
; Step 3: Wait for End of Conversion (EOC)
; Step 4: Read digital data from ADC
; Step 5: Repeat continuously

.ORG 2000H

DATA SEGMENT
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX

        MOV AL,98H
        MOV DX,FFE6H
        OUT DX,AL

L2:
        MOV AL,00H
        MOV DX,FFE2H
        OUT DX,AL
        OUT DX,AL

        MOV AL,02H
        MOV DX,FFE4H
        OUT DX,AL
        MOV AL,03H
        OUT DX,AL
        MOV AL,01H
        OUT DX,AL
        MOV AL,00H
        OUT DX,AL

        MOV DX,FFE4H
L1:
        IN AL,DX
        RCL AL,01H
        JNC L1

        MOV AL,04H
        MOV DX,FFE4H
        OUT DX,AL

        MOV DX,FFE0H
        IN AL,DX

        JMP L2
CODE ENDS
END START
