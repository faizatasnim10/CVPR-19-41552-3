.MODEL SMALL
 
.CODE   
MAIN PROC
    MOV AH,1
    INT 21H
    
    CMP AL,'1'
    JE ODD
    CMP AL,'3'
    JE ODD   
    
    CMP AL,'2'
    JE EVEN
    CMP AL,'4'
    JE EVEN  
    
ODD: 
    MOV DL,'o'
    MOV AH,2
    INT 21H
    JMP EXIT
    
EVEN: 
    MOV DL,'e'
    MOV AH,2
    INT 21H
    JMP EXIT
    
    
EXIT:
    
MAIN ENDP
END MAIN