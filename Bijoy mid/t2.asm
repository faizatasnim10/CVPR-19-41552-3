;1,5,9,13...

.MODEL SMALL 

 
.CODE   
MAIN PROC 
    MOV CX,49
    MOV BX,1
    MOV DX,1  ;initialize sum
           
TOP:
    
    ADD BX,4  
    ADD DX,BX
    LOOP TOP
    
    ;ADD DL,48
    ;MOV AH,2
    ;INT 21H
    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN