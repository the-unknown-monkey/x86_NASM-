%macro test
	mov eax,4
	mov ebx,1
	mov ecx,string
	mov edx,length
	int 80h
%endmacro
section .text
global _start
_start:
	
	
	mov eax,1
	mov ebx,0
	int 80h
section .data
	string : db 'hello world using macro',0ah
	length : equ $-string
