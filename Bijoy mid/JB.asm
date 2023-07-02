.MODEL SMALL                                                       
.STACK 100
.DATA
.CODE
MAIN PROC

MOV AL,'A'
MOV BL,'B'

CMP AL,BL
JB L1
MOV DL,BL
MOV AH,2
INT 21H
JMP EXIT

L1: 
MOV DL,AL
MOV AH,2
INT 21H
JMP EXIT

EXIT:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN





