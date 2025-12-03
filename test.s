	.file	"test.cpp"
	.text
	.section	.rodata
	.type	_ZL1_, @object
	.size	_ZL1_, 1
_ZL1_:
	.zero	1
	.type	_ZL3tie, @object
	.size	_ZL3tie, 1
_ZL3tie:
	.zero	1
	.text
	.globl	_Z1fi
	.type	_Z1fi, @function
_Z1fi:
.LFB3836:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L2
	movl	-20(%rbp), %edx
	leaq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN3OptIiEC1Ei
	movq	-16(%rbp), %rax
	jmp	.L3
.L2:
	leaq	_ZL1_(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3OptIiEC1ERK12_DefaultType
	movq	-16(%rbp), %rax
.L3:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3836:
	.size	_Z1fi, .-_Z1fi
	.globl	main
	.type	main, @function
main:
.LFB3837:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$5, %edi
	call	_Z1fi
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK3OptIiEcvbEv
	testb	%al, %al
	je	.L6
	movl	$1, %eax
	jmp	.L8
.L6:
	movl	$0, %eax
.L8:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3837:
	.size	main, .-main
	.section	.text._ZN3OptIiEC2Ei,"axG",@progbits,_ZN3OptIiEC5Ei,comdat
	.align 2
	.weak	_ZN3OptIiEC2Ei
	.type	_ZN3OptIiEC2Ei, @function
_ZN3OptIiEC2Ei:
.LFB4215:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4215:
	.size	_ZN3OptIiEC2Ei, .-_ZN3OptIiEC2Ei
	.weak	_ZN3OptIiEC1Ei
	.set	_ZN3OptIiEC1Ei,_ZN3OptIiEC2Ei
	.section	.text._ZN3OptIiEC2ERK12_DefaultType,"axG",@progbits,_ZN3OptIiEC5ERK12_DefaultType,comdat
	.align 2
	.weak	_ZN3OptIiEC2ERK12_DefaultType
	.type	_ZN3OptIiEC2ERK12_DefaultType, @function
_ZN3OptIiEC2ERK12_DefaultType:
.LFB4218:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4218:
	.size	_ZN3OptIiEC2ERK12_DefaultType, .-_ZN3OptIiEC2ERK12_DefaultType
	.weak	_ZN3OptIiEC1ERK12_DefaultType
	.set	_ZN3OptIiEC1ERK12_DefaultType,_ZN3OptIiEC2ERK12_DefaultType
	.section	.text._ZNK3OptIiEcvbEv,"axG",@progbits,_ZNK3OptIiEcvbEv,comdat
	.align 2
	.weak	_ZNK3OptIiEcvbEv
	.type	_ZNK3OptIiEcvbEv, @function
_ZNK3OptIiEcvbEv:
.LFB4220:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK3OptIiE7is_nullEv
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4220:
	.size	_ZNK3OptIiEcvbEv, .-_ZNK3OptIiEcvbEv
	.section	.text._ZNK3OptIiE7is_nullEv,"axG",@progbits,_ZNK3OptIiE7is_nullEv,comdat
	.align 2
	.weak	_ZNK3OptIiE7is_nullEv
	.type	_ZNK3OptIiE7is_nullEv, @function
_ZNK3OptIiE7is_nullEv:
.LFB4448:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4448:
	.size	_ZNK3OptIiE7is_nullEv, .-_ZNK3OptIiE7is_nullEv
	.ident	"GCC: (Ubuntu 15.2.0-4ubuntu4) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
