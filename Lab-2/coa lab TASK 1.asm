.MODEL SMALL
.STACK 100H

.DATA

MSG1 DB "ENTER A CHARACTER: $"
MSG2 DB "ENTERED INPUT: $"
MSG3 DB "IN SMALL LETTER IT IS: $"
MSG4 DB "ENTER 1ST INTEGER: $" 
MSG5 DB "ENTER 2ND INTEGER: $"
MSG6 DB "ENTER 3RD INTEGER: $"
MSG7 DB "SUMMETION: $"
MSG8 DB "SUBSTRACTION: $"   

a DB ?
b DB ? 

.CODE

MOV AX,@DATA
MOV DS,AX

MOV AH,9         ;1ST MSG
LEA DX,MSG1
INT 21H     

MOV AH,1         ;IN CHAT 
INT 21H
MOV a,AL 

MOV AH,2         ;NL
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H     

MOV AH,9         ;2ND MSG
LEA DX,MSG2
INT 21H              

MOV AH,2         ;SHOW IN CHAT
MOV DL,a
INT 21H              

MOV AH,2         ;NL
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV AH,9         ;3RD MSG
LEA DX,MSG3
INT 21H    

ADD a,20H        ;SMALL LETTER

MOV AH,2         ;PRINT SMALL CHAT
MOV DL,a
INT 21H        

MOV AH,2         ;NL
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV AH,9         ;4TH MSG
LEA DX,MSG4
INT 21H  

MOV AH,1         ;IN 1ST INT 
INT 21H
MOV b,AL                 

MOV AH,2         ;NL
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV AH,9         ;5TH MSG
LEA DX,MSG5
INT 21H  

MOV AH,1         ;IN 2ND INT 
INT 21H
MOV BL,AL        

ADD b,BL         ;ADD 2 VALUE
SUB b,30H                   

MOV AH,2         ;NL
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV AH,9         ;6TH MSG
LEA DX,MSG6
INT 21H  

MOV AH,1         ;IN 3RD INT 
INT 21H          
MOV BL,AL 

MOV AH,2         ;NL
MOV DL,0AH
INT 21H
MOV DL,0DH
INT 21H

MOV AH,9         ;7TH MSG
LEA DX,MSG7
INT 21H            

ADD b,BL         ;ADD 3 VALUE
SUB b,30H

MOV AH,2         ;DISPLAY
MOV DL,b
INT 21H