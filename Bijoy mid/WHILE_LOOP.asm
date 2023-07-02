.MODEL SMALL
 
.CODE   
MAIN PROC
    
    MOV BL,0 ; char count
	MOV AH,1
	INT 21H  
	
WHILE_:
	CMP AL,0DH		; CR ?
	JE END_WHILE	;yes, exit		
	INC BL		; not CR so inc
    	INT 21H         ; read next char
    	JMP WHILE_      ; loop again


END_WHILE:  
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0dH
    INT 21H
     
    ADD BL,48
    MOV DL,BL
    INT 21H
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN