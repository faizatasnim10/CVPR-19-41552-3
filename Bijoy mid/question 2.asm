
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h

.model small
.stack 100h
.data
 
 .code
 
 main proc
 mov ah,1
 int 21h
 mov dl,al
 
 mov ah,2

 mov dl,0ah
 int 21h
 mov dl, 0dh
 int 21h 
 
 
  mov ah,1
 int 21h
 mov cl,al 
 
  mov ah,1
 int 21h
 mov cl,al
 int 21h
 mov dl,cl
 
 
 mov ah,2

 mov dl,0ah
 int 21h
 mov dl, 0dh
 int 21h 
 
 
  mov ah,1
 int 21h
 mov cl,al 
 
  mov ah,1
 int 21h
 mov cl,al
 
  
  mov ah,1
 int 21h
 mov cl,al 
 
  mov ah,1
 int 21h
 mov cl,al
 int 21h
 mov dl,cl
 
 
 mov ah,2

 mov dl,0ah
 int 21h
 mov dl, 0dh
 int 21h
 
  mov ah,1
 int 21h
 mov cl,al
 
 
  mov ah,1
 int 21h
 mov cl,al 
 
  mov ah,1
 int 21h
 mov cl,al
 
  
  mov ah,1
 int 21h
 mov cl,al 
 
 mov ah,1
 int 21h
 mov cl,al
 
 
   mov ah,1
 int 21h
 mov cl,al
 
 
 
 int 21h
 mov dl,cl
 
  
 
 
 
 mov ah,2

 mov dl,0ah
 int 21h
 mov dl, 0dh
 int 21h
 

  
 mov ah,2

 int 21h
 
 main endp
 end main

ret







