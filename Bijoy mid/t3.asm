;5+10+15....+100

.MODEL SMALL 

 
.CODE   
MAIN PROC 
    MOV CX,18 
    MOV BX,100
    MOV AX,100   ;INITIALIZE SUM
           
TOP:
    
    SUB BX,5  
    ADD AX,BX
    LOOP TOP
    
    ;ADD DL,48
    ;MOV AH,2
    ;INT 21H
    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN