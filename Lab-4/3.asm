.MODEL SMALL
.STACK 100H
.DATA
.CODE

MOV DL,'D'
CMP DL,'A'

JGE IF
JMP EXIT

IF:
CMP DL,'Z'
JLE THEN
JMP EXIT

THEN:
MOV AH,2
INT 21H
JMP EXIT

EXIT:
MOV AH,4CH
INT 21H