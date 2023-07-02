.model small
.stack 100h    

.data  

msg db "HELLO WORLD",0AH,0DH,"$"

a db ? 

.code  

MOV AX,@DATA
MOV DS,AX

MOV AH,9
LEA DX,MSG
INT 21H

MOV AH,1
INT 21H
MOV a,AL 

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
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

MOV AH,2
MOV DL,a
INT 21H