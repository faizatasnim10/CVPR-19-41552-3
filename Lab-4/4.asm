.MODEL SMALL
.STACK 100H
.DATA
.CODE

MOV AX,05H
MOV BX,07H
MOV CX,08H
CMP AX,BX
JL IF
JMP EXIT
IF:
CMP BX,CX
JL THEN
JG ELSE
THEN:
MOV AX,0
JMP EXIT
ELSE:
MOV BX,0
JMP EXIT
EXIT:
MOV AH,4CH
INT 21H