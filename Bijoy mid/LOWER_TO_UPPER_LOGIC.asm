;lowercase to uppercase/UPPERCASE TO LOWERCASE using logic operation

.MODEL SMALL
.STACK 100H
.DATA  
    MSG2 DB "INPUT IS NOT LETTER$"
     
    
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,1
    INT 21H 
    MOV BH,AL
    
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H
UPPER: 

    CMP BH,'A'   ; CHECK UPPERCASE LETTER OR NOT
    JNGE LOWER
    CMP BH,'Z'
    JNLE LOWER 
    
    OR BH,20H    ;CONVERT UPPER TO UPPER
    MOV DL,BH
    MOV AH,2
    INT 21H
    JMP EXIT
    
LOWER:
    
    CMP BH,'a'   ; CHECK LOWERCASE LETTER OR NOT
    JNGE END_IF
    CMP BH,'z'
    JNLE END_IF
        
    AND BH,0DFH  ;CONVERT LOWER TO UPPER
    MOV DL,BH
    
    INT 21H
    JMP EXIT

     
    
END_IF:

    LEA DX,MSG2
    MOV AH,9
    INT 21H 
    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN




