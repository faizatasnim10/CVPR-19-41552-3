.model small
.stack 100h 

.code
main proc 
    XOR CX,CX
    
    MOV AH,1
    INT 21H
    
WHILE_:
    CMP AL,0DH
    JE END_WHILE
    
    PUSH AX
    INC CX    
    INT 21H
    JMP WHILE_  
    
END_WHILE:
    MOV DL,0AH
    MOV AH,2
    INT 21H
    MOV DL,0DH
    INT 21H
    
    JCXZ EXIT
TOP:    
    POP DX
    INT 21H
    LOOP TOP
    
EXIT:
    MOV AH, 4CH
    INT 21H

main endp
end main