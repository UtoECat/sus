.section .rodata
susdata: # SUSPICIOUS DATA
.incbin "data.bin"

.section .data
buff: # for BUFFERED IO
	.space 128

.section .text
.global _start 

# %rbx = INPUT CHAR POINTER

# %rdx = IO BUFFER INDEX
# %r8  = COUNT OF CHAR
# %r9  = current char value

# %rsi = STATIC, IO buffer, RESETTED
# %rax = RESETTED
# %rdi = static (1), RESETTED
# %rsi = static (IO BUFF), RESETTED

# buffered IO. destroys %rax, %rdi, %rsi. ARGS(%rdx), sets %rdx to 0
flush:
	mov $1, %rax  # %rax = write(%rax, %rdi, %rsi, %rdx)
	mov $1, %rdi  # поток № 1 — stdout (CONST)
	lea buff(%rip), %rsi # calculate buffer pointer
	syscall        # вызов ядра
	mov $0, %rdx # reset size
	ret

putch: # ARG(%r9 RO) uses %rdx, see flush()
	lea  buff(%rip), %rax
	movb %r9b, (%rax, %rdx, 1) # store in buffer
	inc  %rdx # increment position in buffer
	mov  $128, %rax
	test %rdx, %rax # test (BAND) for overflow
	jnz  flush # flush IO buffer to stdout
	ret

_start:
	mov $0, %rdx  # pos in IO buffer => length
	lea susdata(%rip), %rbx # input ptr

_vm_loop: # while(true) { 
	movb (%rbx), %r8b  # get count
	test %r8, %r8 # is zero?
	jz  _vm_end # break

	movb 1(%rbx), %r9b # get char
	add $2, %rbx # increment

_vm_putc: // for (;%r8;%r8--) {
	call putch
	dec %r8
	jnz _vm_putc # }
	
	jmp _vm_loop # }

_vm_end:
	mov  $0x0A, %r9 
	call putch
	call flush # final flush

  mov $60, %rax  # exit()
  xor %rdi, %rdi # code 0
  syscall        # end
