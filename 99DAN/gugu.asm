extern printf
extern scanf
extern exit

global _start


section .data
select db "Hello, Select Number 1(all), 2(only) =  ",0
select1 db "You select number 1 ",10,0
select2 db "Select dan number = ",10,0
byebye db "bye bye~ ",10,0
data_bin db "%d",0
gugudan_form db "%d x %d = %d",10,0

select_data db 0
select_number db 0


section .text

_start:
	mov rdi, select
	call printf
	
	mov rdi, data_bin
	mov rsi, select_data
	call scanf
		
	mov rax, [select_data]
	cmp rax, 2

number_1:	
	je  number_2
	jg  the_end
	cmp rax, 0	
	je  the_end
	mov rdi, select1
	call printf

	mov r13, 1
	mov r14, 2
loop_:
	mov rsi, r14
	mov rdi, gugudan_form
	mov rdx,r13
	mov rax,rsi
	mul rdx
	mov rcx, rax
	mov rdx, r13
	call printf
	inc r13
	cmp r13, 10
	jne loop_
	mov r13, 1
	inc r14
	cmp r14, 20
	je the_end
	jmp loop_
	
number_2:
	mov rdi, select2
	call printf
	mov rdi, data_bin
	mov rsi, select_number
	call scanf

	mov r14, [select_number]	
	cmp r14, 19
	jg  the_end
	cmp r14, 0	
	je  the_end	
	mov r15,1
loop2_:
	mov rsi, r14
	mov rdi, gugudan_form
	mov rdx, r15
	mov rax, rsi
	mul rdx
	mov rcx, rax
	mov rdx, r15
	call printf
	inc r15
	cmp r15, 10
	jne loop2_	

the_end:
	mov rdi, byebye
	call printf
	call exit	
