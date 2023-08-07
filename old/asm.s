.section .text
.globl write
.globl exit

write: # %rax = write(%rax, %rdi, %rsi, %rdx)
	push %rbp
  mov  %rsp, %rbp
 	mov  $1, %rax
	syscall
	pop %rbp
  ret

exit:
	mov $60, %rax  # exit()
  xor %rdi, %rdi # code 0
  syscall        # end	
