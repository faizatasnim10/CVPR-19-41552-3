.MODEL SMALL
.STACK 100H
.DATA
.CODE

MOV AH,1
INT 21H
MOV BL,AL

MOV AH,2  
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H    

MOV AH,1   
INT 21H
MOV BH,AL

ADD BL,BH 
SUB BL,30H

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV AH,1
INT 21H 

ADD BL,AL 
SUB BL,30H 

MOV AH,2
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H
 

MOV AH,2
MOV DL,BL
INT 21H