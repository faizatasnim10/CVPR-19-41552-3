.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,'5'
    MOV BX,'6'    
    PUSH AX
    PUSH BX
    POP AX
    POP BX
    
    MOV DX,AX
    MOV AH,2
    INT 21H
    
    MOV DX,BX
    MOV AH,2
    INT 21H
    
    MAIN ENDP
END MAIN