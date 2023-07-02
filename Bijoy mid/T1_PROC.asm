.MODEL SMALL
.STACK 100H
.DATA
MSG1 db "Hi, I am from Main Procedure$" 
MSG2 db "Hi, I am from Second Procedure$"
MSG3 db "Hi, I am from Third Procedure$"

.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    CALL NL
    CALL SECOND
    CALL NL
    CALL THIRD 
    
    MOV AH,4CH
    INT 21H
    
MAIN ENDP

 

SECOND PROC 
    LEA DX,MSG2
    MOV AH,9
    INT 21H    
    RET
    
SECOND ENDP

THIRD PROC
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H    
    RET
    
THIRD ENDP 
           
NL PROC
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H
    
    RET
NL ENDP    

END MAIN