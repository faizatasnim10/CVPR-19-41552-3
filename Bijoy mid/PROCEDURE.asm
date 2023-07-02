.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB "From main procedure$"
MSG2 DB "From second procedure$"
MSG3 DB "From third procedure$"
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    
    CALL SECOND
    CALL THIRD
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP

SECOND PROC
    CALL NEW_LINE
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    RET
    
    SECOND ENDP

THIRD PROC
    CALL NEW_LINE
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    RET
    
    THIRD ENDP

NEW_LINE PROC
    MOV DL,0DH
    MOV AH,2
    INT 21H
    MOV DL,0AH
    INT 21H
    RET
    NEW_LINE ENDP

    
END MAIN