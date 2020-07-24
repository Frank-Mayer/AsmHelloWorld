section .data
	msg db "Hello World!", 0x0A	;defined bytes
	len equ $-msg				;unsigned integer

section .text
global _main
_main:
	mov rax, 0x2000004	;SYS_write
	mov rdx, len		;string length
	mov rsi, msg		;string
	mov rdi, 1			;stdout
	syscall

	mov rax, 0x2000001	;SYS_exit
	mov rdi, 0
	syscall