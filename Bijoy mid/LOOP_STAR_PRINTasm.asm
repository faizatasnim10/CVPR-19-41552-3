.MODEL SMALL
 
.CODE   
MAIN PROC
    
    MOV CX,10
    MOV DL,'*'   
                    ;JCXZ EXIT
TOP: 
    
    MOV AH,2
    INT 21H
    LOOP TOP
    
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN