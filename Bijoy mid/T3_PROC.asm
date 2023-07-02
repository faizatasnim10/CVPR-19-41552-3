.MODEL SMALL 
.STACK 100H   
.DATA
MSG1 DB "TYPE A CHARACTER: $"
MSG2 DB "THE ASCII CODE OF A IN BINARY IS: $"
MSG3 DB "THE NUMBER OF '0' BITS IS: $"
    
.CODE
MAIN PROC     
    MOV AX,@DATA
    MOV DS,AX
    
    CALL TASK 
   
EXIT:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP


TASK PROC
    XOR BL,BL  ;CLEAR COUNTER
    MOV CX,8
             
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    MOV AH,1    ;INPUT
    INT 21H
    MOV BH,AL
    
    CALL NL     ;NEWLINE
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H 
TOP:  
	ROL BH,1
	JC L1 
	
	INC BL      ;COUNT '0' 
	
	MOV DL,'0'  ;BINARY OUTPUT
    MOV AH,2
    INT 21H
	LOOP TOP
	JMP L2
	
L1:
    ;INC BL
    MOV DL,'1'  ;BINARY OUTPUT
    MOV AH,2
    INT 21H    
    LOOP TOP
    
L2: 
    CALL NL     ;NEWLINE
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
	ADD BL,48
    MOV DL,BL
    MOV AH,2
    INT 21H 
	RET 
    
TASK ENDP  

NL PROC
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H
    RET
NL ENDP

END MAIN