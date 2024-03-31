section .data
	pesan1 db "Halo tuan siapa namamu? Namaku : " 
	pesan2 db "Halo "

section .bss
	nama resb 16

section .text
	global _start




_start:

	call _tanyaNama
	call _inputNama
	call _sapaan
	call _sebutNama

	mov rax, 60
	mov rdi, 0
	syscall

_tanyaNama:

	mov rax, 1
	mov rdi, 1
	mov rsi, pesan1
	mov rdx, 25
	syscall
	ret

_inputNama:

	mov rax, 0
	mov rdi, 0
	mov rsi, nama	
	mov rdx, 16
	syscall
	ret

_sapaan:
	
	mov rax, 1
	mov rdi, 1
	mov rsi, pesan2
	mov rdx, 5
	syscall
	ret

_sebutNama:

	mov rax, 1
	mov rdi, 1
	mov rsi, nama
	mov rdx, 16
	syscall
	ret

