.MODEL SMALL
 
.CODE   
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    MOV BH,AL 
    
    MOV DL,0DH
    MOV AH,2
    INT 21H 
    MOV DL,0AH
    INT 21H
    
    CMP BL,BH
    JL L1 
    XCHG BL,BH
    
L1:
    MOV DL,BL
    MOV AH,2
    INT 21H
    
    MOV DL,BH
    INT 21H
    
    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN