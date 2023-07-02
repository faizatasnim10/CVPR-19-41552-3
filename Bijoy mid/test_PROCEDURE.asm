.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC 
    
    MOV BL,2
    MOV CL,1
    
    CALL P1  
    
    MOV DL,BL
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H

MAIN ENDP 


P1 PROC
     
    ADD BL,CL 
    ADD BL,48
       
    RET
    
P1 ENDP

END MAIN