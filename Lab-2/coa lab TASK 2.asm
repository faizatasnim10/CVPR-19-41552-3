.model small
.stack 100h    

.data  

msg1 db "ENTER 1ST INTEGER VALUE : $"  
msg2 db "ENTER 2ND INTEGER VALUE : $"   
msg3 db "SUMMETION : $"  
msg4 db "SUBSTRACTION : $"

a db '5'
b db '2'

.code  

MOV AX,@DATA
MOV DS,AX

MOV AH,9        ;STRING PRINT MSG1
LEA DX,MSG1
INT 21H 

MOV AH,2        ;PRINT 1INT
MOV DL,a
INT 21H
 

MOV AH,2
MOV DL,0AH         ;NEW LINE
INT 21H
MOV DL,0DH
INT 21H

                     
MOV AH,9        ;STRING PRINT MSG2
LEA DX,MSG2
INT 21H 

MOV AH,2        ;PRINT 2INT
MOV DL,b
INT 21H 
MOV BL,DL       

MOV AH,2           ;nEW LINE
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV AH,9         ;STRING PRINT mSG3
LEA DX,MSG3
INT 21H

ADD BL,a
SUB BL,30H     ;BL=7

MOV AH,2        ;PRINT SUM
MOV DL,BL
INT 21H   
MOV BL,a        ; bl= 5


MOV AH,2           ;nEW LINE
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H 

MOV AH,9         ;STRING PRINT mSG4
LEA DX,MSG4
INT 21H

SUB BL,b          ;bl=3
ADD BL,30H

MOV AH,2        ;PRINT 2INT
MOV DL,BL
INT 21H

