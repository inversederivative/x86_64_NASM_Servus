;	Servus.asm
;
;	To build, simply run 
;		make
;
;	Then run with
;		./Servus
;
;	-----------------------------
;
;	Alternatively:
;
;	To assemble this file: 
;		nasm -f elf64 Servus.asm
;
;	To link, because we're calling the C stdlib,
;	 we need to use gcc
;		gcc -m64 -o Servus Servus.o 
;
;	To execute simply:
;		./Servus

	extern printf
	
	section .data

msg: 	db "Servus!", 10, 0
fmt:	db "%s", 10, 0


	section .text

	global main

main: 

	push 	rbp
	mov 	rbp, rsp
	mov	rdi, msg
	mov 	rsi, fmt
	xor 	rax, rax
	call 	printf
	xor 	rax, rax
	pop 	rbp
	ret
