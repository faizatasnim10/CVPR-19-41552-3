.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
    
    XOR CX,CX
    MOV AH,1
    INT 21H 
        
INPUT_:
    CMP AL,0DH 
    JE INPUT_END
    PUSH AX     
    INC CX
    INT 21H   
    JMP INPUT_ 
    
INPUT_END:

    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H
    
OUTPUT_:    
    POP DX
    MOV AH,2
    INT 21H
    LOOP OUTPUT_
    

    
MAIN ENDP
END MAIN