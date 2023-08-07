	.file	"main.c"
	.text
	.type	flush, @function
flush:
.LFB0:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movslq	pos(%rip), %rdx
	leaq	buff(%rip), %rsi
	movl	$1, %edi
	call	write@PLT
	xorl	%edx, %edx
	movl	%edx, pos(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	flush, .-flush
	.globl	_start
	.type	_start, @function
_start:
.LFB2:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	buff(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	leaq	data(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	pushq	%rax
	.cfi_def_cfa_offset 48
.L4:
	movb	0(%rbp), %bl
	testb	%bl, %bl
	je	.L11
	movb	1(%rbp), %r13b
.L6:
	movslq	pos(%rip), %rax
	leal	1(%rax), %edx
	movb	%r13b, (%r12,%rax)
	movl	%edx, pos(%rip)
	cmpl	$127, %edx
	jle	.L5
	xorl	%eax, %eax
	call	flush
.L5:
	decb	%bl
	jne	.L6
	addq	$2, %rbp
	jmp	.L4
.L11:
	xorl	%eax, %eax
	call	flush
	xorl	%edi, %edi
	call	exit@PLT
	.cfi_endproc
.LFE2:
	.size	_start, .-_start
	.local	pos
	.comm	pos,4,4
	.local	buff
	.comm	buff,128,32
	.section	.rodata
	.align 32
	.type	data, @object
	.size	data, 932
data:
	.ascii	"\024 \002.\001:\004~\001:\003.\001\n\021 \001.\001!\001Y\002"
	.ascii	"G\001P\004G\002P\002G\0015\001J\0017\001:\001\n\020 \001^\001"
	.ascii	"G\001#\0015\001?\002!\005~\002!\0017\001?\0015\001G\001B\001"
	.ascii	"5\001:\001\n\017 \001^\001B\001#\001?\007~\004!\0047\001Y\001"
	.ascii	"#\001B\001~\001\n\016 \001.\001J\001@\001P\001!\004~\001!\001"
	.ascii	"Y\001G\005B\002G\002B\001#\001@\001B\001!\001\n\016 \001~\002"
	.ascii	"#\001Y\001!\003~\001?\001B\001&\001Y\001~\002:\005.\001:\001"
	.ascii	"^\001!\001?\0025\001!\001\n\f \001.\001 \0017\001@\001B\001?"
	.ascii	"\001!\002~\001!\001P\001@\001P\001.\r \0017\001B\001J\001\n\b"
	.ascii	" \001^\001?\001Y\001P\001G\001B\002&\001G\0017\003~\001!\001"
	.ascii	"P\001@\001P\001:\001.\f \001.\001Y\001B\001:\001\n\007 \001J"
	.ascii	"\001#\001G\001Y\001?\0017\001Y\001#\001&\001P\0017\003~\001!"
	.ascii	"\001J\001&\001#\001!\003:\b.\001:\001.\001^\001P\001#\001~\001"
	.ascii	"\n\006 \001!\001#\001G\001?\0037\001Y\001#\001&\001P\0017\001"
	.ascii	"!\003~\001!\001P\001@\001G\001!\001^\b:\002^\001!\0015\001#\001"
	.ascii	"J\001\n\006 \001G\001&\001P\003J\001Y\001G\001@\001#\0015\001"
	.ascii	"?\001!\004~\001!\0015\002#\001G\001P\0045\002P\002G\001B\001"
	.ascii	"&\001@\0015\001\n\006 \001B\001#\0015\003J\001Y\001G\001@\001"
	.ascii	"#\0015\001J\001?\001!\005~\001!\001?\001Y\0015\004P\0025\003"
	.ascii	"Y\001G\001@\0015\001\n\005 \001^\001#\001B\001Y\003J\001Y\001"
	.ascii	"G\001@\001#\0015\002J\001?\001!\017~\001!\001?\0015\001&\001"
	.ascii	"5\001\n\005 \001~\001#\001B\001Y\003J\001Y\001G\001@\001#\001"
	.ascii	"5\004J\0017\001!\f~\001!\001?\001J\0015\001&\001G\001.\001\n"
	.ascii	"\005 \001~\001#\001B\001Y\003J\001Y\001G\001@\001#\0015\006J"
	.ascii	"\0027\001!\007~\002!\001?\002J\0015\001#\001B\001~\001\n\005"
	.ascii	" \001^\002#\001Y\003J\001Y\001G\001@\001#\0015\nJ\006?\005J\001"
	.ascii	"5\001#\001B\001^\001\n\006 \001P\001&\001P\001Y\002J\001Y\001"
	.ascii	"B\001@\001#\001Y\025J\0015\001&\001P\001\n\006 "
	.string	"\001:\001P\001#\001B\001G\002P\001#\001@\001B\001Y\007J\0015\003P\0015\003Y\0025\002Y\002J\001P\001@\0015\001\n\b \001^\001?\001J\001Y\001G\001&\001@\001G\001Y\006J\0015\001#\001&\0015\001?\0015\001#\001&\001#\001B\001G\0015\001Y\001J\001Y\001G\001&\001Y\001\n\r \001?\001@\001B\001Y\006J\0015\001&\001B\003 \001P\001&\001P\001Y\004J\0015\001#\001B\001~\001\n\r \001~\002#\001Y\006J\001P\001&\001G\003 \001J\001&\001B\001Y\003J\0015\001B\001&\001?\001\n\r \001.\001J\001@\001B\006Y\001B\001@\001~\004 \001J\001B\001#\003B\001#\001G\001!\001\n\016 \001.\0017\001G\007B\001?\007 \001^\001!\0017\001~\001:\001\n\021 \002.\001:\002~\002.\001\n"
	.string	""
	.ident	"GCC: (GNU) 13.1.1 20230714"
	.section	.note.GNU-stack,"",@progbits
