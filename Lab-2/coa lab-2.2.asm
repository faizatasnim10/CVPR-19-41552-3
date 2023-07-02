.model small
.stack 100h    

.data  

msg1 db "ENTER 1ST INPUT: $"    
msg2 db "ENTER 2ND INPUT: $"
msg3 db "SUMMATION: $"


a db ?

.code  

MOV AX,@DATA
MOV DS,AX

MOV AH,9
LEA DX,MSG1
INT 21H 

MOV AH,1
INT 21H
MOV a,AL 

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H


MOV AH,9
LEA DX,MSG2
INT 21H
        
MOV AH,1
INT 21H 


ADD a,AL
SUB a,30H

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H  

MOV AH,9
LEA DX,MSG3
INT 21H


MOV AH,2
MOV DL,a
INT 21H