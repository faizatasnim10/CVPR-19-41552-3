.MODEL SMALL
.STACK 100H
.DATA
.CODE

MOV AH,2
MOV BL,2
MOV BH,2
MOV AL,2

ADD BL,BH
ADD BL,AL 
ADD BL,30H 

MOV AH,2
MOV DL,BL
INT 21H