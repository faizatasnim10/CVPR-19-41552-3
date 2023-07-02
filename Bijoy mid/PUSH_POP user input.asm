.MODEL SMALL
.STACK 100H
.DATA    
MSG1 DB "Before Reverse:$"
MSG2 DB "After Reverse:$"
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    
    MOV AH,1
    INT 21H
    PUSH AX
    
    MOV AH,1
    INT 21H
    PUSH AX
    
    
    MOV DL,0DH
    MOV AH,2
    INT 21H
    MOV DL,0AH
    INT 21H  
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    POP BX
    MOV DX,BX
    MOV AH,2
    INT 21H
    
    POP BX
    MOV DX,BX
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN