.model small
.stack 100h 

.code
main proc 
    mov ax,1234h 
    mov bx,5678h
    
    push ax 
    push bx 
    push 1111h
    
    pop cx
    pop dx
    
main endp
end main