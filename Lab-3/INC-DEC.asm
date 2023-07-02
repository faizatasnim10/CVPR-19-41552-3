.model small
.stack 100h
.data
msg db "Hello World",0AH,0DH,"$"
msg1 db "BYE $" 
.CODE

MOV AX,@DATA
MOV DS,AX 

;MOV CX,5
MOV CX,0

PRINT:
MOV AH,9
LEA DX,MSG
INT 21H 

;DEC CX
INC CX
CMP CX,5

;JG PRINT
JL PRINT

MOV AH,9
LEA DX,MSG1
INT 21H
