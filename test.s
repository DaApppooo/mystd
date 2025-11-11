	.file	"test.cpp"
	.text
	.section	.text._ZNSt8__format5_SinkIcE10_M_reserveEm,"axG",@progbits,_ZNSt8__format5_SinkIcE10_M_reserveEm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format5_SinkIcE10_M_reserveEm
	.type	_ZNSt8__format5_SinkIcE10_M_reserveEm, @function
_ZNSt8__format5_SinkIcE10_M_reserveEm:
.LFB5329:
	.cfi_startproc
	endbr64
	movq	16(%rdi), %rcx
	movq	24(%rdi), %rdx
	movq	%rdi, %rax
	subq	8(%rdi), %rdx
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	cmpq	%rsi, %rdi
	jnb	.L7
	cmpq	%rsi, %rcx
	jb	.L8
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rax), %rdx
	movq	%rax, %rdi
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	call	*(%rdx)
	movq	(%rsp), %rax
	movq	16(%rax), %rdx
	movq	24(%rax), %rcx
	subq	8(%rax), %rcx
	subq	%rcx, %rdx
	cmpq	8(%rsp), %rdx
	jb	.L12
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5329:
	.size	_ZNSt8__format5_SinkIcE10_M_reserveEm, .-_ZNSt8__format5_SinkIcE10_M_reserveEm
	.section	.text._ZNSt8__format5_SinkIcE7_M_bumpEm,"axG",@progbits,_ZNSt8__format5_SinkIcE7_M_bumpEm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format5_SinkIcE7_M_bumpEm
	.type	_ZNSt8__format5_SinkIcE7_M_bumpEm, @function
_ZNSt8__format5_SinkIcE7_M_bumpEm:
.LFB5530:
	.cfi_startproc
	endbr64
	addq	%rsi, 24(%rdi)
	ret
	.cfi_endproc
.LFE5530:
	.size	_ZNSt8__format5_SinkIcE7_M_bumpEm, .-_ZNSt8__format5_SinkIcE7_M_bumpEm
	.section	.text._ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv,"axG",@progbits,_ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv
	.type	_ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv, @function
_ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv:
.LFB6821:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rax
	movq	%rax, 24(%rdi)
	ret
	.cfi_endproc
.LFE6821:
	.size	_ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv, .-_ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv
	.section	.text._ZNSt12format_errorD2Ev,"axG",@progbits,_ZNSt12format_errorD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12format_errorD2Ev
	.type	_ZNSt12format_errorD2Ev, @function
_ZNSt12format_errorD2Ev:
.LFB3720:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVSt12format_error(%rip), %rax
	movq	%rax, (%rdi)
	jmp	_ZNSt13runtime_errorD2Ev@PLT
	.cfi_endproc
.LFE3720:
	.size	_ZNSt12format_errorD2Ev, .-_ZNSt12format_errorD2Ev
	.weak	_ZNSt12format_errorD1Ev
	.set	_ZNSt12format_errorD1Ev,_ZNSt12format_errorD2Ev
	.section	.text._ZNSt12format_errorD0Ev,"axG",@progbits,_ZNSt12format_errorD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt12format_errorD0Ev
	.type	_ZNSt12format_errorD0Ev, @function
_ZNSt12format_errorD0Ev:
.LFB3722:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVSt12format_error(%rip), %rax
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rax, (%rdi)
	movq	%rdi, 8(%rsp)
	call	_ZNSt13runtime_errorD2Ev@PLT
	movq	8(%rsp), %rdi
	movl	$16, %esi
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE3722:
	.size	_ZNSt12format_errorD0Ev, .-_ZNSt12format_errorD0Ev
	.section	.text._ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc,"axG",@progbits,_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc
	.type	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc, @function
_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc:
.LFB6004:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	56(%rdi), %r14
	movq	8(%rdi), %r13
	movq	16(%r14), %rbx
	subq	%r13, %rsi
	jne	.L33
.L19:
	movq	%rbx, 16(%r14)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movq	%rsi, %r12
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	%rbp, %rsi
	jnb	.L24
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L35:
	movq	%r13, %rsi
	movq	%rbp, %rdx
	addq	%rbp, %r13
	subq	%rbp, %r12
	call	memcpy@PLT
	addq	%rbp, 24(%rbx)
.L32:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*(%rax)
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	%rbp, %r12
	jb	.L34
.L24:
	testq	%rbp, %rbp
	jne	.L35
	movq	%rdi, 24(%rbx)
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L34:
	testq	%r12, %r12
	je	.L19
.L20:
	movq	%r12, %rdx
	movq	%r13, %rsi
	call	memcpy@PLT
	addq	%r12, 24(%rbx)
	movq	%rbx, 16(%r14)
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6004:
	.size	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc, .-_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.isra.0.str1.1,"aMS",@progbits,1
.LC0:
	.string	"basic_string::append"
.LC1:
	.string	"basic_string::_M_create"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.isra.0,"axG",@progbits,_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE,comdat
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.isra.0:
.LFB6858:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %rcx
	movq	%rsi, %r10
	movabsq	$9223372036854775806, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rax, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	movq	8(%rdi), %rdx
	subq	%rdx, %rsi
	cmpq	%rcx, %rsi
	jb	.L74
	movq	(%rdi), %r8
	leaq	16(%rdi), %r9
	movq	%rdi, %rbx
	leaq	(%rdx,%rcx), %rbp
	cmpq	%r9, %r8
	je	.L75
	movq	16(%rdi), %rsi
	cmpq	%rbp, %rsi
	jb	.L43
.L39:
	testq	%rcx, %rcx
	je	.L44
	leaq	(%r8,%rdx), %rdi
	cmpq	$1, %rcx
	je	.L76
	movq	%rcx, %rdx
	movq	%r10, %rsi
	call	memcpy@PLT
	movq	(%rbx), %r8
.L44:
	movq	%rbp, 8(%rbx)
	movb	$0, (%r8,%rbp)
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
	cmpq	%rbp, %rax
	jb	.L40
	leaq	(%rsi,%rsi), %rdi
	movq	%rdi, %r14
	cmpq	%rdi, %rbp
	jb	.L47
.L42:
	leaq	1(%rbp), %rdi
	movq	%rbp, %r14
.L48:
	movq	%rcx, 40(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r9, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	_Znwm@PLT
	movq	32(%rsp), %r10
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%rax, %r11
	testq	%r10, %r10
	movq	40(%rsp), %rcx
	setne	%sil
	testq	%rdx, %rdx
	jne	.L49
	testq	%rbp, %rbp
	je	.L60
	testb	%sil, %sil
	je	.L60
	movq	%rax, %rdi
	cmpq	$1, %rcx
	je	.L77
.L51:
	movq	%rcx, %rdx
	movq	%r10, %rsi
	movq	%r11, 24(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy@PLT
	movq	24(%rsp), %r11
	movq	16(%rsp), %r9
	movq	8(%rsp), %r8
.L60:
	cmpq	%r9, %r8
	je	.L56
.L53:
	movq	16(%rbx), %rax
	movq	%r8, %rdi
	movq	%r11, 8(%rsp)
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %r11
.L56:
	movq	%r11, (%rbx)
	movq	%r11, %r8
	movq	%r14, 16(%rbx)
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L47:
	leaq	1(%rdi), %rdi
	cmpq	%r14, %rax
	jnb	.L48
	movabsq	$9223372036854775807, %rdi
	movq	%rax, %r14
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L75:
	cmpq	$15, %rbp
	jbe	.L39
	cmpq	%rbp, %rax
	jb	.L40
	cmpq	$29, %rbp
	ja	.L42
	movl	$31, %edi
	movl	$30, %r14d
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L49:
	testq	%rcx, %rcx
	setne	%al
	andl	%esi, %eax
	movl	%eax, %r15d
	cmpq	$1, %rdx
	je	.L78
	movq	%r8, %rsi
	movq	%r11, %rdi
	movq	%rcx, 40(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r9, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy@PLT
	testb	%r15b, %r15b
	movq	8(%rsp), %r8
	movq	16(%rsp), %rdx
	movq	24(%rsp), %r9
	movq	32(%rsp), %r10
	movq	%rax, %r11
	movq	40(%rsp), %rcx
	je	.L60
	leaq	(%r11,%rdx), %rdi
	cmpq	$1, %rcx
	jne	.L51
	movzbl	(%r10), %eax
	movb	%al, (%rdi)
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L76:
	movzbl	(%r10), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %r8
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L78:
	movzbl	(%r8), %eax
	movb	%al, (%r11)
	testb	%r15b, %r15b
	je	.L60
	leaq	1(%r11), %rdi
	cmpq	$1, %rcx
	jne	.L51
	movzbl	(%r10), %eax
	movb	%al, 1(%r11)
	cmpq	%r9, %r8
	jne	.L53
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L77:
	movzbl	(%r10), %eax
	movb	%al, (%r11)
	cmpq	%r9, %r8
	jne	.L53
	jmp	.L56
.L40:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L74:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6858:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.isra.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"basic_string::_M_replace_aux"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0:
.LFB6862:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	movabsq	$9223372036854775806, %rsi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	(%rdx,%rsi), %rcx
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	8(%rdi), %rax
	subq	%rax, %rcx
	cmpq	%r13, %rcx
	jb	.L116
	movq	%r13, %rbp
	movq	(%rdi), %rcx
	movl	%r8d, %r14d
	leaq	16(%rdi), %r8
	subq	%rdx, %rbp
	movq	%rdi, %rbx
	addq	%rax, %rbp
	cmpq	%r8, %rcx
	je	.L120
	movq	16(%rdi), %rdi
	cmpq	%rbp, %rdi
	jb	.L121
.L82:
	leaq	(%rdx,%r12), %rsi
	subq	%rsi, %rax
	je	.L86
	cmpq	%r13, %rdx
	je	.L86
	addq	%r12, %rcx
	leaq	(%rcx,%rdx), %rsi
	leaq	(%rcx,%r13), %rdi
	cmpq	$1, %rax
	je	.L122
	movq	%rax, %rdx
	call	memmove@PLT
	movq	(%rbx), %rcx
.L86:
	testq	%r13, %r13
	je	.L97
.L127:
	leaq	(%rcx,%r12), %rdi
	cmpq	$1, %r13
	je	.L123
	movsbl	%r14b, %esi
	movq	%r13, %rdx
	call	memset@PLT
	movq	(%rbx), %rcx
.L97:
	movq	%rbp, 8(%rbx)
	movb	$0, (%rcx,%rbp)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L121:
	.cfi_restore_state
	addq	%r12, %rdx
	subq	%rdx, %rax
	movq	%rdx, 24(%rsp)
	movq	%rax, %r15
	cmpq	%rbp, %rsi
	jb	.L124
	leaq	(%rdi,%rdi), %rax
	movq	%rax, (%rsp)
	cmpq	%rax, %rbp
	jb	.L90
.L89:
	movq	%rbp, (%rsp)
	leaq	1(%rbp), %rdi
.L91:
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	_Znwm@PLT
	testq	%r12, %r12
	movq	8(%rsp), %r8
	movq	16(%rsp), %rcx
	movq	%rax, %r9
	je	.L92
	cmpq	$1, %r12
	je	.L125
	movq	%rcx, %rsi
	movq	%r12, %rdx
	movq	%rax, %rdi
	movq	%r8, 8(%rsp)
	call	memcpy@PLT
	movq	(%rbx), %rcx
	movq	8(%rsp), %r8
	movq	%rax, %r9
.L92:
	testq	%r15, %r15
	je	.L94
	movq	24(%rsp), %rsi
	leaq	0(%r13,%r12), %rdi
	addq	%r9, %rdi
	addq	%rcx, %rsi
	cmpq	$1, %r15
	je	.L126
	movq	%r15, %rdx
	movq	%r9, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	memcpy@PLT
	movq	(%rbx), %rcx
	movq	16(%rsp), %r9
	movq	8(%rsp), %r8
.L94:
	cmpq	%rcx, %r8
	je	.L96
	movq	16(%rbx), %rax
	movq	%rcx, %rdi
	movq	%r9, 8(%rsp)
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %r9
.L96:
	movq	(%rsp), %rax
	movq	%r9, (%rbx)
	movq	%r9, %rcx
	movq	%rax, 16(%rbx)
	testq	%r13, %r13
	je	.L97
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L90:
	cmpq	(%rsp), %rsi
	jnb	.L88
	movabsq	$9223372036854775807, %rdi
	movq	%rsi, (%rsp)
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L120:
	cmpq	$15, %rbp
	jbe	.L82
	leaq	(%rdx,%r12), %rdi
	subq	%rdi, %rax
	movq	%rdi, 24(%rsp)
	movq	%rax, %r15
	cmpq	%rbp, %rsi
	jb	.L84
	cmpq	$29, %rbp
	ja	.L89
	movq	$30, (%rsp)
.L88:
	movq	(%rsp), %rax
	leaq	1(%rax), %rdi
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L123:
	movb	%r14b, (%rdi)
	movq	(%rbx), %rcx
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L122:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rcx
	testq	%r13, %r13
	je	.L97
	jmp	.L127
	.p2align 4,,10
	.p2align 3
.L125:
	movzbl	(%rcx), %eax
	movb	%al, (%r9)
	movq	(%rbx), %rcx
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L126:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	movq	(%rbx), %rcx
	jmp	.L94
.L124:
	jmp	.L84
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0.cold, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0.cold:
.LFSB6862:
.L84:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L116:
	leaq	.LC2(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6862:
	.text
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
	.section	.text.unlikely
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0.cold, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text._ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv,"axG",@progbits,_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv
	.type	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv, @function
_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv:
.LFB5119:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %r8
	movq	24(%rdi), %rcx
	subq	%r8, %rcx
	je	.L161
	movabsq	$9223372036854775806, %rax
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rax, %rsi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	296(%rdi), %rdx
	subq	%rdx, %rsi
	cmpq	%rcx, %rsi
	jb	.L164
	movq	288(%rdi), %r9
	leaq	304(%rdi), %r11
	leaq	(%rcx,%rdx), %rbp
	cmpq	%r11, %r9
	je	.L165
	movq	304(%rdi), %rsi
	cmpq	%rbp, %rsi
	jb	.L136
.L132:
	leaq	(%r9,%rdx), %rdi
	cmpq	$1, %rcx
	je	.L166
	movq	%rcx, %rdx
	movq	%r8, %rsi
	call	memcpy@PLT
	movq	288(%rbx), %r10
.L138:
	movq	%rbp, 296(%rbx)
	movb	$0, (%r10,%rbp)
	movq	8(%rbx), %rax
	movq	%rax, 24(%rbx)
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	.cfi_restore_state
	cmpq	%rbp, %rax
	jb	.L133
	leaq	(%rsi,%rsi), %rdi
	movq	%rdi, %r14
	cmpq	%rdi, %rbp
	jb	.L140
.L135:
	leaq	1(%rbp), %rdi
	movq	%rbp, %r14
.L141:
	movq	%r11, 40(%rsp)
	movq	%r9, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	call	_Znwm@PLT
	movq	24(%rsp), %rdx
	movq	8(%rsp), %r8
	movq	16(%rsp), %rcx
	movq	32(%rsp), %r9
	movq	%rax, %r10
	testq	%rdx, %rdx
	movq	40(%rsp), %r11
	jne	.L142
	testq	%r8, %r8
	je	.L153
	movq	%rax, %rdi
	cmpq	$1, %rcx
	je	.L167
.L144:
	movq	%rcx, %rdx
	movq	%r8, %rsi
	movq	%r10, 24(%rsp)
	movq	%r11, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	memcpy@PLT
	movq	24(%rsp), %r10
	movq	16(%rsp), %r11
	movq	8(%rsp), %r9
.L153:
	cmpq	%r11, %r9
	je	.L149
.L146:
	movq	304(%rbx), %rax
	movq	%r9, %rdi
	movq	%r10, 8(%rsp)
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %r10
.L149:
	movq	%r10, 288(%rbx)
	movq	%r14, 304(%rbx)
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L166:
	movzbl	(%r8), %eax
	movb	%al, (%rdi)
	movq	288(%rbx), %r10
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L165:
	cmpq	$15, %rbp
	jbe	.L132
	cmpq	%rbp, %rax
	jb	.L133
	cmpq	$29, %rbp
	ja	.L135
	movl	$31, %edi
	movl	$30, %r14d
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L142:
	cmpq	$1, %rdx
	je	.L168
	movq	%r9, %rsi
	movq	%rax, %rdi
	movq	%r11, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	memcpy@PLT
	movq	24(%rsp), %r8
	movq	8(%rsp), %r9
	movq	16(%rsp), %rdx
	movq	32(%rsp), %rcx
	movq	%rax, %r10
	testq	%r8, %r8
	movq	40(%rsp), %r11
	je	.L153
	leaq	(%r10,%rdx), %rdi
	cmpq	$1, %rcx
	jne	.L144
	movzbl	(%r8), %eax
	movb	%al, (%rdi)
	jmp	.L153
	.p2align 4,,10
	.p2align 3
.L161:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 14
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 14, -16
	leaq	1(%rdi), %rdi
	cmpq	%r14, %rax
	jnb	.L141
	movabsq	$9223372036854775807, %rdi
	movq	%rax, %r14
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L167:
	movzbl	(%r8), %eax
	movb	%al, (%r10)
	cmpq	%r11, %r9
	jne	.L146
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L168:
	movzbl	(%r9), %eax
	movb	%al, (%r10)
	testq	%r8, %r8
	je	.L153
	leaq	1(%r10), %rdi
	cmpq	$1, %rcx
	jne	.L144
	movzbl	(%r8), %eax
	movb	%al, 1(%r10)
	cmpq	%r11, %r9
	jne	.L146
	jmp	.L149
.L164:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L133:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5119:
	.size	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv, .-_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv
	.section	.rodata.str1.1
.LC4:
	.string	"basic_string::_M_replace"
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.p2align 4
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0:
.LFB6864:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	8(%rdi), %rax
	movabsq	$9223372036854775806, %rdi
	leaq	(%rdx,%rdi), %rsi
	subq	%rax, %rsi
	cmpq	%r8, %rsi
	jb	.L213
	movq	%r8, %rbp
	movq	(%rbx), %r12
	leaq	16(%rbx), %r13
	subq	%rdx, %rbp
	addq	%rax, %rbp
	cmpq	%r13, %r12
	je	.L217
	movq	16(%rbx), %rsi
	cmpq	%rbp, %rsi
	jb	.L218
.L172:
	leaq	(%r12,%r9), %r13
	movq	%rax, %rdi
	addq	%rdx, %r9
	subq	%r9, %rdi
	cmpq	%r12, %rcx
	jnb	.L219
.L176:
	testq	%rdi, %rdi
	je	.L180
	cmpq	%r8, %rdx
	je	.L180
	leaq	0(%r13,%rdx), %rsi
	cmpq	$1, %rdi
	je	.L220
	movq	%rdi, %rdx
	leaq	0(%r13,%r8), %rdi
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	memmove@PLT
	movq	8(%rsp), %r8
	movq	(%rsp), %rcx
.L180:
	testq	%r8, %r8
	je	.L221
.L183:
	cmpq	$1, %r8
	je	.L222
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r13, %rdi
	call	memcpy@PLT
	movq	(%rbx), %r10
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L221:
	movq	(%rbx), %r10
.L181:
	movq	%rbp, 8(%rbx)
	movb	$0, (%r10,%rbp)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L219:
	.cfi_restore_state
	addq	%r12, %rax
	cmpq	%rcx, %rax
	jb	.L176
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L218:
	addq	%r9, %rdx
	subq	%rdx, %rax
	movq	%rdx, 24(%rsp)
	movq	%rax, %r14
	cmpq	%rbp, %rdi
	jb	.L223
	leaq	(%rsi,%rsi), %rax
	movq	%rax, %r15
	cmpq	%rax, %rbp
	jb	.L187
.L186:
	leaq	1(%rbp), %rdi
	movq	%rbp, %r15
.L188:
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r9, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %r9
	movq	8(%rsp), %rcx
	movq	16(%rsp), %r8
	movq	%rax, %r10
	testq	%r9, %r9
	je	.L189
	cmpq	$1, %r9
	je	.L224
	movq	%r9, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r9, (%rsp)
	call	memcpy@PLT
	movq	16(%rsp), %r8
	movq	8(%rsp), %rcx
	movq	(%rsp), %r9
	movq	%rax, %r10
.L189:
	testq	%rcx, %rcx
	je	.L191
	testq	%r8, %r8
	je	.L191
	leaq	(%r10,%r9), %rdi
	cmpq	$1, %r8
	je	.L225
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r9, 16(%rsp)
	movq	%r10, 8(%rsp)
	movq	%r8, (%rsp)
	call	memcpy@PLT
	movq	16(%rsp), %r9
	movq	8(%rsp), %r10
	movq	(%rsp), %r8
.L191:
	testq	%r14, %r14
	je	.L193
	movq	24(%rsp), %rsi
	leaq	(%r8,%r9), %rdi
	addq	%r10, %rdi
	addq	%r12, %rsi
	cmpq	$1, %r14
	je	.L226
	movq	%r14, %rdx
	movq	%r10, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %r10
.L193:
	cmpq	%r13, %r12
	je	.L195
	movq	16(%rbx), %rax
	movq	%r12, %rdi
	movq	%r10, (%rsp)
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	movq	(%rsp), %r10
.L195:
	movq	%r10, (%rbx)
	movq	%r15, 16(%rbx)
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L187:
	cmpq	%rax, %rdi
	jnb	.L185
	movq	%rdi, %r15
	movabsq	$9223372036854775807, %rdi
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L217:
	cmpq	$15, %rbp
	jbe	.L172
	addq	%r9, %rdx
	subq	%rdx, %rax
	movq	%rdx, 24(%rsp)
	movq	%rax, %r14
	cmpq	%rbp, %rdi
	jb	.L174
	cmpq	$29, %rbp
	ja	.L186
	movl	$30, %r15d
.L185:
	leaq	1(%r15), %rdi
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L220:
	movzbl	(%rsi), %edx
	movb	%dl, 0(%r13,%r8)
	testq	%r8, %r8
	jne	.L183
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L222:
	movzbl	(%rcx), %eax
	movb	%al, 0(%r13)
	movq	(%rbx), %r10
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L224:
	movzbl	(%r12), %eax
	movb	%al, (%r10)
	jmp	.L189
	.p2align 4,,10
	.p2align 3
.L225:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L226:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	.L193
.L223:
	jmp	.L174
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0.cold, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0.cold:
.LFSB6864:
.L213:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	leaq	.LC4(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L174:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L177:
	movq	%rdi, %r9
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm@PLT
	movq	(%rbx), %r10
	jmp	.L181
	.cfi_endproc
.LFE6864:
	.text
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0
	.section	.text.unlikely
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0.cold, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0.cold
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text._ZNSt8__format18__write_escape_seqINS_10_Sink_iterIcEEcEET_S3_jSt17basic_string_viewIT0_St11char_traitsIS5_EE.constprop.0,"axG",@progbits,_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,comdat
	.p2align 4
	.type	_ZNSt8__format18__write_escape_seqINS_10_Sink_iterIcEEcEET_S3_jSt17basic_string_viewIT0_St11char_traitsIS5_EE.constprop.0, @function
_ZNSt8__format18__write_escape_seqINS_10_Sink_iterIcEEcEET_S3_jSt17basic_string_viewIT0_St11char_traitsIS5_EE.constprop.0:
.LFB6865:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%esi, %eax
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %r14
	movq	%r14, 40(%rsp)
	movq	%rcx, %r14
	testl	%eax, %eax
	jne	.L228
	movb	$48, 8(%rsp)
	movl	$1, %r13d
.L229:
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movl	$2, %r12d
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	$2, %rbp
	jbe	.L238
	jmp	.L234
	.p2align 4,,10
	.p2align 3
.L266:
	movq	%r14, %rsi
	movq	%rbp, %rdx
	addq	%rbp, %r14
	subq	%rbp, %r12
	call	memcpy@PLT
	addq	%rbp, 24(%rbx)
.L263:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*(%rax)
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	%rbp, %r12
	jb	.L265
.L238:
	testq	%rbp, %rbp
	jne	.L266
	movq	%rdi, 24(%rbx)
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L265:
	testq	%r12, %r12
	jne	.L234
.L239:
	leaq	1(%rdi), %rax
	movq	%rax, 24(%rbx)
	movb	$123, (%rdi)
	movq	24(%rbx), %rdi
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	je	.L267
.L240:
	testq	%r13, %r13
	jne	.L268
.L241:
	leaq	1(%rdi), %rax
	movq	%rax, 24(%rbx)
	movb	$125, (%rdi)
	movq	24(%rbx), %rax
	subq	8(%rbx), %rax
	cmpq	16(%rbx), %rax
	je	.L269
.L248:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L270
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L228:
	.cfi_restore_state
	movdqa	.LC6(%rip), %xmm0
	bsrl	%eax, %edx
	leal	4(%rdx), %r13d
	shrl	$2, %r13d
	movaps	%xmm0, 16(%rsp)
	cmpl	$255, %eax
	jbe	.L230
	leal	-1(%r13), %edx
	.p2align 6
	.p2align 4
	.p2align 3
.L231:
	movl	%eax, %esi
	movl	%edx, %ecx
	andl	$15, %esi
	movzbl	16(%rsp,%rsi), %esi
	movb	%sil, 8(%rsp,%rcx)
	movl	%eax, %ecx
	leal	-1(%rdx), %esi
	shrl	$8, %eax
	shrl	$4, %ecx
	subl	$2, %edx
	andl	$15, %ecx
	movzbl	16(%rsp,%rcx), %ecx
	movb	%cl, 8(%rsp,%rsi)
	cmpl	$255, %eax
	ja	.L231
.L230:
	cmpl	$15, %eax
	jbe	.L232
	movl	%eax, %edx
	shrl	$4, %eax
	andl	$15, %edx
	movzbl	16(%rsp,%rdx), %edx
	movb	%dl, 9(%rsp)
	movzbl	16(%rsp,%rax), %eax
.L233:
	movb	%al, 8(%rsp)
	jmp	.L229
	.p2align 4,,10
	.p2align 3
.L234:
	movq	%r12, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	24(%rbx), %rdi
	addq	%r12, %rdi
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L268:
	movq	16(%rbx), %rbp
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	leaq	8(%rsp), %r12
	subq	%rax, %rbp
	cmpq	%rbp, %r13
	jnb	.L246
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L272:
	movq	%r12, %rsi
	movq	%rbp, %rdx
	addq	%rbp, %r12
	subq	%rbp, %r13
	call	memcpy@PLT
	addq	%rbp, 24(%rbx)
.L264:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*(%rax)
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	%rbp, %r13
	jb	.L271
.L246:
	testq	%rbp, %rbp
	jne	.L272
	movq	%rdi, 24(%rbx)
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L271:
	testq	%r13, %r13
	je	.L241
.L242:
	movq	%r13, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	24(%rbx), %rdi
	addq	%r13, %rdi
	jmp	.L241
	.p2align 4,,10
	.p2align 3
.L232:
	movzbl	16(%rsp,%rax), %eax
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L269:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*(%rax)
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L267:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*(%rax)
	movq	24(%rbx), %rdi
	jmp	.L240
.L270:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6865:
	.size	_ZNSt8__format18__write_escape_seqINS_10_Sink_iterIcEEcEET_S3_jSt17basic_string_viewIT0_St11char_traitsIS5_EE.constprop.0, .-_ZNSt8__format18__write_escape_seqINS_10_Sink_iterIcEEcEET_S3_jSt17basic_string_viewIT0_St11char_traitsIS5_EE.constprop.0
	.section	.text.unlikely._ZSt20__throw_format_errorPKc,"axG",@progbits,_ZSt20__throw_format_errorPKc,comdat
	.weak	_ZSt20__throw_format_errorPKc
	.type	_ZSt20__throw_format_errorPKc, @function
_ZSt20__throw_format_errorPKc:
.LFB3718:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3718
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movl	$16, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%rax
	.cfi_def_cfa_offset 32
	call	__cxa_allocate_exception@PLT
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, %rbx
.LEHB0:
	call	_ZNSt13runtime_errorC2EPKc@PLT
.LEHE0:
	leaq	16+_ZTVSt12format_error(%rip), %rax
	leaq	_ZNSt12format_errorD1Ev(%rip), %rdx
	movq	%rbx, %rdi
	movq	%rax, (%rbx)
	leaq	_ZTISt12format_error(%rip), %rsi
.LEHB1:
	call	__cxa_throw@PLT
.L275:
	endbr64
	movq	%rax, %rbp
.L274:
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE1:
	.cfi_endproc
.LFE3718:
	.section	.gcc_except_table._ZSt20__throw_format_errorPKc,"aG",@progbits,_ZSt20__throw_format_errorPKc,comdat
.LLSDA3718:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3718-.LLSDACSB3718
.LLSDACSB3718:
	.uleb128 .LEHB0-.LFB3718
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L275-.LFB3718
	.uleb128 0
	.uleb128 .LEHB1-.LFB3718
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3718:
	.section	.text.unlikely._ZSt20__throw_format_errorPKc,"axG",@progbits,_ZSt20__throw_format_errorPKc,comdat
	.size	_ZSt20__throw_format_errorPKc, .-_ZSt20__throw_format_errorPKc
	.section	.rodata._ZNSt8__format39__unmatched_left_brace_in_format_stringEv.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"format error: unmatched '{' in format string"
	.section	.text.unlikely._ZNSt8__format39__unmatched_left_brace_in_format_stringEv,"axG",@progbits,_ZNSt8__format39__unmatched_left_brace_in_format_stringEv,comdat
	.weak	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
	.type	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv, @function
_ZNSt8__format39__unmatched_left_brace_in_format_stringEv:
.LFB3723:
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC7(%rip), %rdi
	pushq	%rax
	.cfi_def_cfa_offset 16
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE3723:
	.size	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv, .-_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
	.section	.rodata._ZNSt8__format39__conflicting_indexing_in_format_stringEv.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"format error: conflicting indexing style in format string"
	.section	.text.unlikely._ZNSt8__format39__conflicting_indexing_in_format_stringEv,"axG",@progbits,_ZNSt8__format39__conflicting_indexing_in_format_stringEv,comdat
	.weak	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
	.type	_ZNSt8__format39__conflicting_indexing_in_format_stringEv, @function
_ZNSt8__format39__conflicting_indexing_in_format_stringEv:
.LFB3725:
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC8(%rip), %rdi
	pushq	%rax
	.cfi_def_cfa_offset 16
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE3725:
	.size	_ZNSt8__format39__conflicting_indexing_in_format_stringEv, .-_ZNSt8__format39__conflicting_indexing_in_format_stringEv
	.section	.rodata._ZNSt8__format33__invalid_arg_id_in_format_stringEv.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"format error: invalid arg-id in format string"
	.section	.text.unlikely._ZNSt8__format33__invalid_arg_id_in_format_stringEv,"axG",@progbits,_ZNSt8__format33__invalid_arg_id_in_format_stringEv,comdat
	.weak	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.type	_ZNSt8__format33__invalid_arg_id_in_format_stringEv, @function
_ZNSt8__format33__invalid_arg_id_in_format_stringEv:
.LFB3726:
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC9(%rip), %rdi
	pushq	%rax
	.cfi_def_cfa_offset 16
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE3726:
	.size	_ZNSt8__format33__invalid_arg_id_in_format_stringEv, .-_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"format error: argument used for width or precision must be a non-negative integer"
	.section	.text.unlikely
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.p2align 4
	.type	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0, @function
_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0:
.LFB6866:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movzbl	(%rsi), %eax
	movzwl	%di, %edi
	movq	%rax, %rdx
	andl	$15, %edx
	cmpq	%rdx, %rdi
	jnb	.L284
	movq	(%rsi), %rax
	leaq	(%rdi,%rdi,4), %rcx
	salq	$4, %rdi
	addq	8(%rsi), %rdi
	movdqa	(%rdi), %xmm0
	shrq	$4, %rax
	shrq	%cl, %rax
	movaps	%xmm0, 32(%rsp)
	andl	$31, %eax
.L285:
	leaq	.L289(%rip), %rdx
	movb	%al, 48(%rsp)
	movzbl	%al, %eax
	movdqa	32(%rsp), %xmm0
	movslq	(%rdx,%rax,4), %rax
	movaps	%xmm0, (%rsp)
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L289:
	.long	.L286-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L293-.L289
	.long	.L292-.L289
	.long	.L291-.L289
	.long	.L290-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.long	.L288-.L289
	.text
	.p2align 4,,10
	.p2align 3
.L284:
	testb	$15, %al
	jne	.L286
	movq	(%rsi), %rax
	shrq	$4, %rax
	cmpq	%rax, %rdi
	jnb	.L286
	salq	$5, %rdi
	addq	8(%rsi), %rdi
	movdqu	(%rdi), %xmm0
	movzbl	16(%rdi), %eax
	movaps	%xmm0, 32(%rsp)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L291:
	movq	(%rsp), %rax
	testq	%rax, %rax
	js	.L294
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L292:
	.cfi_restore_state
	movl	(%rsp), %eax
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L293:
	.cfi_restore_state
	movslq	(%rsp), %rax
	testl	%eax, %eax
	js	.L294
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L290:
	.cfi_restore_state
	movq	(%rsp), %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold, @function
_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold:
.LFSB6866:
.L286:
	.cfi_def_cfa_offset 80
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
.L294:
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L288:
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6866:
	.text
	.size	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0, .-_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	.section	.text.unlikely
	.size	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold, .-_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.p2align 4
	.type	_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0, @function
_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0:
.LFB6868:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movzbl	(%rsi), %eax
	movzwl	%di, %edi
	movq	%rax, %rdx
	andl	$15, %edx
	cmpq	%rdx, %rdi
	jnb	.L298
	movq	(%rsi), %rax
	leaq	(%rdi,%rdi,4), %rcx
	salq	$4, %rdi
	addq	8(%rsi), %rdi
	movdqa	(%rdi), %xmm0
	shrq	$4, %rax
	shrq	%cl, %rax
	movaps	%xmm0, 32(%rsp)
	andl	$31, %eax
.L299:
	leaq	.L303(%rip), %rdx
	movb	%al, 48(%rsp)
	movzbl	%al, %eax
	movdqa	32(%rsp), %xmm0
	movslq	(%rdx,%rax,4), %rax
	movaps	%xmm0, (%rsp)
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L303:
	.long	.L300-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L307-.L303
	.long	.L306-.L303
	.long	.L305-.L303
	.long	.L304-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.long	.L302-.L303
	.text
	.p2align 4,,10
	.p2align 3
.L298:
	testb	$15, %al
	jne	.L300
	movq	(%rsi), %rax
	shrq	$4, %rax
	cmpq	%rax, %rdi
	jnb	.L300
	salq	$5, %rdi
	addq	8(%rsi), %rdi
	movdqu	(%rdi), %xmm0
	movzbl	16(%rdi), %eax
	movaps	%xmm0, 32(%rsp)
	jmp	.L299
	.p2align 4,,10
	.p2align 3
.L305:
	movq	(%rsp), %rax
	testq	%rax, %rax
	js	.L308
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L306:
	.cfi_restore_state
	movl	(%rsp), %eax
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L307:
	.cfi_restore_state
	movslq	(%rsp), %rax
	testl	%eax, %eax
	js	.L308
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L304:
	.cfi_restore_state
	movq	(%rsp), %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold, @function
_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold:
.LFSB6868:
.L300:
	.cfi_def_cfa_offset 80
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
.L308:
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L302:
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6868:
	.text
	.size	_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0, .-_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	.section	.text.unlikely
	.size	_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold, .-_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0.cold
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata._ZNSt8__format29__failed_to_parse_format_specEv.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"format error: failed to parse format-spec"
	.section	.text.unlikely._ZNSt8__format29__failed_to_parse_format_specEv,"axG",@progbits,_ZNSt8__format29__failed_to_parse_format_specEv,comdat
	.weak	_ZNSt8__format29__failed_to_parse_format_specEv
	.type	_ZNSt8__format29__failed_to_parse_format_specEv, @function
_ZNSt8__format29__failed_to_parse_format_specEv:
.LFB3727:
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	leaq	.LC13(%rip), %rdi
	pushq	%rax
	.cfi_def_cfa_offset 16
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE3727:
	.size	_ZNSt8__format29__failed_to_parse_format_specEv, .-_ZNSt8__format29__failed_to_parse_format_specEv
	.section	.text._ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_,"axG",@progbits,_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_,comdat
	.p2align 4
	.weak	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_
	.type	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_, @function
_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_:
.LFB4517:
	.cfi_startproc
	endbr64
	movsbw	(%rdi), %ax
	movq	%rdi, %r9
	movq	%rsi, %r10
	cmpb	$48, %al
	je	.L333
	leal	-49(%rax), %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	cmpb	$8, %dl
	ja	.L315
	leaq	1(%r9), %rcx
	cmpq	%r10, %rcx
	je	.L317
	movzbl	1(%r9), %edx
	subl	$48, %edx
	cmpb	$9, %dl
	ja	.L317
	movq	%r9, %r8
	xorl	%eax, %eax
	movl	$16, %r11d
	jmp	.L318
	.p2align 4,,10
	.p2align 3
.L334:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	leal	(%rcx,%rax,2), %eax
.L321:
	addq	$1, %r8
	cmpq	%r8, %r10
	je	.L324
.L318:
	movzbl	(%r8), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L319
	subl	$4, %r11d
	jns	.L334
	movl	$10, %edx
	mulw	%dx
	jo	.L332
	movzbl	%cl, %ecx
	addw	%ax, %cx
	jc	.L332
	movl	%ecx, %eax
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L333:
	addq	$1, %r9
	xorl	%esi, %esi
	movq	%r9, %rdi
.L315:
	movq	%rdi, %rdx
	movl	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L317:
	movw	%ax, %si
	movq	%rcx, %rdi
	subw	$48, %si
	movq	%rdi, %rdx
	movl	%esi, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L319:
	cmpq	%r8, %r9
	jne	.L324
.L332:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
.L324:
	movw	%ax, %si
	movq	%r8, %rdi
	movq	%rdi, %rdx
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE4517:
	.size	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_, .-_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_
	.section	.text._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_,"axG",@progbits,_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_,comdat
	.p2align 4
	.weak	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.type	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_, @function
_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_:
.LFB4708:
	.cfi_startproc
	endbr64
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movdqa	.LC14(%rip), %xmm0
	movq	%fs:40, %rcx
	movq	%rcx, 216(%rsp)
	movl	%edx, %ecx
	movaps	%xmm0, (%rsp)
	movdqa	.LC15(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 185(%rsp)
	cmpl	$99, %edx
	jbe	.L336
	subl	$1, %esi
	.p2align 4
	.p2align 3
.L337:
	movl	%ecx, %edx
	movl	%ecx, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r8d
	subl	%r8d, %eax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	addl	%eax, %eax
	leal	1(%rax), %r9d
	movzbl	(%rsp,%rax), %eax
	movzbl	(%rsp,%r9), %r9d
	movb	%r9b, (%rdi,%rdx)
	leal	-1(%rsi), %edx
	subl	$2, %esi
	movb	%al, (%rdi,%rdx)
	cmpl	$9999, %r8d
	ja	.L337
.L336:
	leal	48(%rcx), %eax
	cmpl	$9, %ecx
	jbe	.L339
	addl	%ecx, %ecx
	leal	1(%rcx), %eax
	movzbl	(%rsp,%rax), %eax
	movb	%al, 1(%rdi)
	movzbl	(%rsp,%rcx), %eax
.L339:
	movb	%al, (%rdi)
	movq	216(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L343
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L343:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4708:
	.size	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_, .-_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	.section	.rodata._ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE.str1.8,"aMS",@progbits,1
	.align 8
.LC27:
	.string	"format error: width must be non-zero in format string"
	.align 8
.LC28:
	.string	"format error: invalid width or precision in format-spec"
	.section	.text._ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE,"axG",@progbits,_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	.type	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE, @function
_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE:
.LFB4948:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %r8
	movzbl	(%rsi), %edx
	cmpb	$48, %dl
	je	.L384
	movq	%rdi, %r9
	movzbl	%dl, %eax
	movq	%rcx, %rdi
	movq	%rsi, %r10
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rcx
	cmpb	$9, (%rcx,%rax)
	ja	.L346
	xorl	%eax, %eax
	movl	$16, %edi
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L385:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	addq	$1, %rsi
	leal	(%rcx,%rax,2), %eax
	cmpq	%rsi, %r8
	je	.L356
.L355:
	movzbl	(%rsi), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L347
	subl	$4, %edi
	jns	.L385
	movl	$10, %edx
	mulw	%dx
	jo	.L352
	movzbl	%cl, %ecx
	addw	%ax, %cx
	jc	.L352
	addq	$1, %rsi
	movl	%ecx, %eax
	cmpq	%rsi, %r8
	jne	.L355
	.p2align 4
	.p2align 3
.L356:
	movw	%ax, 4(%r9)
	movl	$1, %edx
.L357:
	movzwl	(%r9), %eax
	andl	$3, %edx
	sall	$7, %edx
	andw	$-385, %ax
	orl	%edx, %eax
	movw	%ax, (%r9)
.L344:
	movq	%rsi, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L346:
	.cfi_restore_state
	cmpb	$123, %dl
	jne	.L344
	leaq	1(%rsi), %rsi
	cmpq	%rsi, %r8
	je	.L386
	movsbw	1(%r10), %ax
	cmpb	$125, %al
	je	.L387
	cmpb	$48, %al
	je	.L388
	leal	-49(%rax), %edx
	cmpb	$8, %dl
	ja	.L365
	leaq	2(%r10), %rcx
	cmpq	%rcx, %r8
	je	.L365
	movzbl	2(%r10), %edx
	subl	$48, %edx
	cmpb	$9, %dl
	jbe	.L380
	subl	$48, %eax
	movq	%rcx, %rsi
	.p2align 4
	.p2align 3
.L368:
	cmpb	$125, (%rsi)
	jne	.L365
	cmpl	$2, 16(%rdi)
	je	.L378
	movl	$1, 16(%rdi)
	jmp	.L362
	.p2align 4,,10
	.p2align 3
.L347:
	cmpq	%rsi, %r10
	jne	.L356
.L352:
	leaq	.LC28(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L387:
	cmpl	$1, 16(%rdi)
	je	.L378
	movq	24(%rdi), %rax
	movl	$2, 16(%rdi)
	leaq	1(%rax), %rdx
	movq	%rdx, 24(%rdi)
.L362:
	addq	$1, %rsi
	movw	%ax, 4(%r9)
	cmpq	%rsi, %r10
	je	.L344
	movl	$2, %edx
	jmp	.L357
.L388:
	leaq	2(%r10), %rsi
	xorl	%eax, %eax
	cmpq	%rsi, %r8
	jne	.L368
.L365:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L380:
	movq	%rsi, %r11
	xorl	%eax, %eax
	movl	$16, %ebx
	jmp	.L367
	.p2align 4,,10
	.p2align 3
.L390:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	leal	(%rcx,%rax,2), %eax
.L371:
	addq	$1, %r11
	cmpq	%r11, %r8
	je	.L389
.L367:
	movzbl	(%r11), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L369
	movl	%ebx, %edx
	subl	$4, %edx
	movl	%edx, %ebx
	jns	.L390
	movl	$10, %edx
	mulw	%dx
	jo	.L365
	movzbl	%cl, %ecx
	addw	%ax, %cx
	jc	.L365
	movl	%ecx, %eax
	jmp	.L371
.L369:
	cmpq	%r11, %rsi
	je	.L365
	movq	%r11, %rsi
.L376:
	cmpq	%rsi, %r8
	jne	.L368
	jmp	.L365
	.p2align 4,,10
	.p2align 3
.L389:
	movq	%r8, %rsi
	jmp	.L376
.L386:
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L384:
	leaq	.LC27(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L378:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
	.cfi_endproc
.LFE4948:
	.size	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE, .-_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	.section	.text._ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_,"axG",@progbits,_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_,comdat
	.p2align 4
	.weak	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	.type	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_, @function
_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_:
.LFB4950:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L399
	bsrl	%edx, %eax
	movq	%rsi, %rcx
	subq	%rdi, %rsi
	addl	$4, %eax
	shrl	$2, %eax
	movl	%eax, %r8d
	cmpq	%r8, %rsi
	jb	.L400
	movdqa	.LC6(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	cmpl	$255, %edx
	jbe	.L394
	subl	$1, %eax
	.p2align 6
	.p2align 4
	.p2align 3
.L395:
	movl	%edx, %esi
	movl	%eax, %ecx
	andl	$15, %esi
	movzbl	(%rsp,%rsi), %esi
	movb	%sil, (%rdi,%rcx)
	movl	%edx, %ecx
	leal	-1(%rax), %esi
	shrl	$8, %edx
	shrl	$4, %ecx
	subl	$2, %eax
	andl	$15, %ecx
	movzbl	(%rsp,%rcx), %ecx
	movb	%cl, (%rdi,%rsi)
	cmpl	$255, %edx
	ja	.L395
.L394:
	leaq	(%rdi,%r8), %rcx
	cmpl	$15, %edx
	jbe	.L396
	movl	%edx, %eax
	shrl	$4, %edx
	andl	$15, %eax
	movzbl	(%rsp,%rax), %eax
	movb	%al, 1(%rdi)
	movzbl	(%rsp,%rdx), %eax
.L397:
	movb	%al, (%rdi)
	xorl	%eax, %eax
.L393:
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	24(%rsp), %rcx
	subq	%fs:40, %rcx
	jne	.L403
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L399:
	.cfi_restore_state
	movq	%rdi, %rcx
	movl	$48, %eax
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L396:
	movl	%edx, %edx
	movzbl	(%rsp,%rdx), %eax
	jmp	.L397
	.p2align 4,,10
	.p2align 3
.L400:
	movl	$75, %eax
	jmp	.L393
.L403:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4950:
	.size	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_, .-_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	.section	.text._ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_,"axG",@progbits,_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_,comdat
	.p2align 4
	.weak	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	.type	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_, @function
_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_:
.LFB4953:
	.cfi_startproc
	endbr64
	testl	%edx, %edx
	je	.L411
	bsrl	%edx, %eax
	leal	3(%rax), %ecx
	movl	$2863311531, %eax
	imulq	%rax, %rcx
	movq	%rsi, %rax
	subq	%rdi, %rax
	shrq	$33, %rcx
	movl	%ecx, %r8d
	cmpq	%r8, %rax
	jb	.L412
	cmpl	$63, %edx
	jbe	.L407
	subl	$1, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
.L408:
	movl	%edx, %eax
	movl	%ecx, %esi
	andl	$7, %eax
	addl	$48, %eax
	movb	%al, (%rdi,%rsi)
	movl	%edx, %eax
	leal	-1(%rcx), %esi
	shrl	$6, %edx
	shrl	$3, %eax
	subl	$2, %ecx
	andl	$7, %eax
	addl	$48, %eax
	movb	%al, (%rdi,%rsi)
	cmpl	$63, %edx
	ja	.L408
.L407:
	leaq	(%rdi,%r8), %rsi
	cmpl	$7, %edx
	jbe	.L414
	movl	%edx, %eax
	shrl	$3, %edx
	andl	$7, %eax
	addl	$48, %eax
	movb	%al, 1(%rdi)
.L414:
	addl	$48, %edx
.L410:
	xorl	%eax, %eax
	movb	%dl, (%rdi)
	movq	%rax, %rdx
	movq	%rsi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L411:
	movq	%rdi, %rsi
	movl	$48, %edx
	jmp	.L410
	.p2align 4,,10
	.p2align 3
.L412:
	movl	$75, %eax
	movq	%rax, %rdx
	movq	%rsi, %rax
	ret
	.cfi_endproc
.LFE4953:
	.size	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_, .-_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	.section	.rodata._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE.str1.1,"aMS",@progbits,1
.LC29:
	.string	"false"
.LC30:
	.string	"true"
	.section	.text._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE
	.type	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE, @function
_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE:
.LFB5096:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.L418(%rip), %rcx
	movzbl	%dl, %edx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$272, %rsp
	.cfi_def_cfa_offset 304
	movslq	(%rcx,%rdx,4), %rax
	movq	%fs:40, %rbx
	movq	%rbx, 264(%rsp)
	movq	%rsi, %rbx
	addq	%rcx, %rax
	notrack jmp	*%rax
	.section	.rodata._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,"aG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,comdat
	.align 4
	.align 4
.L418:
	.long	.L415-.L418
	.long	.L426-.L418
	.long	.L425-.L418
	.long	.L424-.L418
	.long	.L423-.L418
	.long	.L422-.L418
	.long	.L421-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L420-.L418
	.long	.L419-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.long	.L415-.L418
	.section	.text._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE,comdat
	.p2align 4,,10
	.p2align 3
.L422:
	movq	(%rdi), %rax
	movq	%rax, %r11
	movq	%rax, %r9
	shrq	$63, %r11
	negq	%r9
	cmovs	%rax, %r9
	cmpq	$9, %r9
	jbe	.L480
	movq	%r9, %rcx
	movl	$1, %r8d
	movabsq	$3777893186295716171, %rsi
	jmp	.L459
	.p2align 4,,10
	.p2align 3
.L456:
	cmpq	$999, %rcx
	jbe	.L518
	cmpq	$9999, %rcx
	jbe	.L519
	movq	%rcx, %rax
	addl	$4, %r8d
	mulq	%rsi
	cmpq	$99999, %rcx
	jbe	.L455
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L459:
	cmpq	$99, %rcx
	ja	.L456
	addl	$1, %r8d
.L455:
	movq	(%rbx), %rax
	leal	(%r8,%r11), %r10d
	movq	%r9, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, %rsi
	movq	(%rax), %rdi
	movl	%r8d, 28(%rsp)
	movq	%r10, (%rsp)
	movq	(%rdi), %rax
	call	*8(%rax)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L415
	movdqa	.LC14(%rip), %xmm0
	movq	24(%rax), %rcx
	movq	16(%rsp), %r9
	movq	(%rsp), %r10
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC15(%rip), %xmm0
	movb	$45, (%rcx)
	addq	8(%rsp), %rcx
	cmpq	$99, %r9
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 233(%rsp)
	jbe	.L460
	movabsq	$2951479051793528259, %r11
	movl	28(%rsp), %r8d
	subl	$1, %r8d
	.p2align 4
	.p2align 3
.L461:
	movq	%r9, %rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%r11
	movq	%r9, %rax
	shrq	$2, %rdx
	imulq	$100, %rdx, %rsi
	subq	%rsi, %rax
	movq	%r9, %rsi
	movq	%rdx, %r9
	movl	%r8d, %edx
	movzbl	49(%rsp,%rax,2), %r14d
	movzbl	48(%rsp,%rax,2), %eax
	movb	%r14b, (%rcx,%rdx)
	leal	-1(%r8), %edx
	subl	$2, %r8d
	movb	%al, (%rcx,%rdx)
	cmpq	$9999, %rsi
	ja	.L461
.L460:
	leal	48(%r9), %eax
	cmpq	$9, %r9
	jbe	.L463
	movzbl	49(%rsp,%r9,2), %eax
	movb	%al, 1(%rcx)
	movzbl	48(%rsp,%r9,2), %eax
.L463:
	movb	%al, (%rcx)
.L517:
	movq	(%rdi), %rax
	movq	%r10, %rsi
	call	*16(%rax)
	movq	8(%rbx), %rax
	movb	$1, (%rax)
	.p2align 4
	.p2align 3
.L415:
	movq	264(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L520
	addq	$272, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L420:
	.cfi_restore_state
	movq	(%rdi), %r8
	movq	%r8, %rdi
	movq	%r8, (%rsp)
	call	strlen@PLT
	movq	%rax, %r14
	movq	(%rbx), %rax
	movq	%r14, %rsi
	movq	(%rax), %rdi
	movq	(%rdi), %rax
	call	*8(%rax)
	testq	%rax, %rax
	je	.L415
	movq	24(%rax), %rdi
	movq	(%rsp), %rsi
	movq	%r14, %rdx
	movq	%rax, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %rcx
.L516:
	movq	(%rcx), %rax
	movq	%r14, %rsi
	movq	%rcx, %rdi
	call	*16(%rax)
	movq	8(%rbx), %rax
	movb	$1, (%rax)
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L419:
	movq	(%rbx), %rax
	movq	(%rdi), %r14
	movq	8(%rdi), %r15
	movq	(%rax), %rdi
	movq	%r14, %rsi
	movq	(%rdi), %rax
	call	*8(%rax)
	testq	%rax, %rax
	je	.L415
	movq	24(%rax), %rdi
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%rax, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %rcx
	jmp	.L516
	.p2align 4,,10
	.p2align 3
.L426:
	leaq	.LC29(%rip), %rax
	movzbl	(%rdi), %edx
	movq	%rdi, 16(%rsp)
	movq	%rax, 32(%rsp)
	leaq	.LC30(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	(%rbx), %rax
	xorl	$1, %edx
	movzbl	%dl, %edx
	movq	(%rax), %rdi
	addl	$4, %edx
	movslq	%edx, %rsi
	movl	%edx, 8(%rsp)
	movq	(%rdi), %rax
	movq	%rsi, (%rsp)
	call	*8(%rax)
	testq	%rax, %rax
	je	.L415
	movq	16(%rsp), %r8
	movl	8(%rsp), %edx
	movq	24(%rax), %rcx
	movq	(%rsp), %rsi
	movzbl	(%r8), %edi
	cmpl	$8, %edx
	movq	32(%rsp,%rdi,8), %rdi
	jnb	.L428
	testb	$4, %dl
	jne	.L521
	testl	%edx, %edx
	je	.L429
	movzbl	(%rdi), %r8d
	movb	%r8b, (%rcx)
	testb	$2, %dl
	jne	.L522
.L429:
	movq	(%rax), %rdx
	movq	%rax, %rdi
	call	*16(%rdx)
	movq	8(%rbx), %rax
	movb	$1, (%rax)
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L425:
	movq	(%rbx), %rax
	movq	%rdi, (%rsp)
	movl	$1, %esi
	movq	(%rax), %rdi
	movq	(%rdi), %rax
	call	*8(%rax)
	testq	%rax, %rax
	je	.L415
	movq	(%rsp), %r8
	movq	24(%rax), %rdx
	movq	%rax, %rdi
	movl	$1, %esi
	movzbl	(%r8), %ecx
	movb	%cl, (%rdx)
	movq	(%rax), %rdx
	call	*16(%rdx)
	movq	8(%rbx), %rax
	movb	$1, (%rax)
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L424:
	movl	(%rdi), %eax
	movl	%eax, %r10d
	movl	%eax, %r8d
	shrl	$31, %r10d
	negl	%r8d
	cmovs	%eax, %r8d
	cmpl	$9, %r8d
	jbe	.L477
	movl	%r8d, %ecx
	movl	$1, %r9d
	movabsq	$3777893186295716171, %rsi
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L436:
	cmpl	$999, %ecx
	jbe	.L523
	cmpl	$9999, %ecx
	jbe	.L524
	movl	%ecx, %eax
	addl	$4, %r9d
	mulq	%rsi
	shrq	$11, %rdx
	cmpl	$99999, %ecx
	jbe	.L435
	movl	%edx, %ecx
.L439:
	cmpl	$99, %ecx
	ja	.L436
	addl	$1, %r9d
.L435:
	movq	(%rbx), %rax
	leal	(%r10,%r9), %esi
	movl	%r8d, 16(%rsp)
	movl	%r9d, 28(%rsp)
	movq	(%rax), %rdi
	movl	%r10d, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	(%rdi), %rax
	call	*8(%rax)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L415
	movdqa	.LC14(%rip), %xmm0
	movq	24(%rax), %rcx
	movzbl	8(%rsp), %r10d
	movl	16(%rsp), %r8d
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC15(%rip), %xmm0
	movq	(%rsp), %rsi
	movb	$45, (%rcx)
	addq	%r10, %rcx
	cmpl	$99, %r8d
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 233(%rsp)
	jbe	.L441
	movl	28(%rsp), %r9d
	subl	$1, %r9d
	.p2align 4
	.p2align 3
.L442:
	movl	%r8d, %edx
	movl	%r8d, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %r10d
	subl	%r10d, %eax
	movl	%r8d, %r10d
	movl	%edx, %r8d
	movl	%r9d, %edx
	addl	%eax, %eax
	leal	1(%rax), %r11d
	movzbl	48(%rsp,%rax), %eax
	movzbl	48(%rsp,%r11), %r11d
	movb	%r11b, (%rcx,%rdx)
	leal	-1(%r9), %edx
	subl	$2, %r9d
	movb	%al, (%rcx,%rdx)
	cmpl	$9999, %r10d
	ja	.L442
.L441:
	leal	48(%r8), %eax
	cmpl	$9, %r8d
	jbe	.L444
	addl	%r8d, %r8d
	leal	1(%r8), %eax
	movzbl	48(%rsp,%rax), %eax
	movb	%al, 1(%rcx)
	movzbl	48(%rsp,%r8), %eax
.L444:
	movb	%al, (%rcx)
	movq	(%rdi), %rax
	call	*16(%rax)
	movq	8(%rbx), %rax
	movb	$1, (%rax)
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L423:
	movl	(%rdi), %r8d
	cmpl	$9, %r8d
	jbe	.L445
	movl	%r8d, %ecx
	movl	$1, %r9d
	movabsq	$3777893186295716171, %rsi
	jmp	.L450
	.p2align 4,,10
	.p2align 3
.L446:
	cmpl	$999, %ecx
	jbe	.L525
	cmpl	$9999, %ecx
	jbe	.L526
	movl	%ecx, %eax
	addl	$4, %r9d
	mulq	%rsi
	shrq	$11, %rdx
	cmpl	$99999, %ecx
	jbe	.L447
	movl	%edx, %ecx
.L450:
	cmpl	$99, %ecx
	ja	.L446
	addl	$1, %r9d
.L447:
	movq	(%rbx), %rax
	movl	%r9d, %r10d
	movl	%r8d, 8(%rsp)
	movl	%r9d, 16(%rsp)
	movq	%r10, %rsi
	movq	(%rax), %rdi
	movq	%r10, (%rsp)
	movq	(%rdi), %rax
	call	*8(%rax)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L415
	movdqa	.LC14(%rip), %xmm0
	movl	8(%rsp), %r8d
	movq	24(%rax), %rcx
	movq	(%rsp), %r10
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC15(%rip), %xmm0
	cmpl	$99, %r8d
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 233(%rsp)
	jbe	.L451
	movl	16(%rsp), %r9d
	subl	$1, %r9d
	.p2align 4
	.p2align 3
.L452:
	movl	%r8d, %edx
	movl	%r8d, %eax
	imulq	$1374389535, %rdx, %rdx
	shrq	$37, %rdx
	imull	$100, %edx, %esi
	subl	%esi, %eax
	movl	%r8d, %esi
	movl	%edx, %r8d
	movl	%r9d, %edx
	addl	%eax, %eax
	leal	1(%rax), %r11d
	movzbl	48(%rsp,%rax), %eax
	movzbl	48(%rsp,%r11), %r11d
	movb	%r11b, (%rcx,%rdx)
	leal	-1(%r9), %edx
	subl	$2, %r9d
	movb	%al, (%rcx,%rdx)
	cmpl	$9999, %esi
	ja	.L452
	cmpl	$999, %esi
	ja	.L451
.L453:
	addl	$48, %r8d
.L454:
	movb	%r8b, (%rcx)
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L421:
	movq	(%rdi), %r9
	cmpq	$9, %r9
	jbe	.L464
	movq	%r9, %rcx
	movl	$1, %r8d
	movabsq	$3777893186295716171, %rsi
	jmp	.L469
	.p2align 4,,10
	.p2align 3
.L465:
	cmpq	$999, %rcx
	jbe	.L527
	cmpq	$9999, %rcx
	jbe	.L528
	movq	%rcx, %rax
	addl	$4, %r8d
	mulq	%rsi
	cmpq	$99999, %rcx
	jbe	.L466
	movq	%rdx, %rcx
	shrq	$11, %rcx
.L469:
	cmpq	$99, %rcx
	ja	.L465
	addl	$1, %r8d
.L466:
	movq	(%rbx), %rax
	movl	%r8d, %r10d
	movq	%r9, 8(%rsp)
	movl	%r8d, 16(%rsp)
	movq	%r10, %rsi
	movq	(%rax), %rdi
	movq	%r10, (%rsp)
	movq	(%rdi), %rax
	call	*8(%rax)
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.L415
	movdqa	.LC14(%rip), %xmm0
	movq	8(%rsp), %r9
	movq	24(%rax), %rcx
	movq	(%rsp), %r10
	movaps	%xmm0, 48(%rsp)
	movdqa	.LC15(%rip), %xmm0
	cmpq	$99, %r9
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 233(%rsp)
	jbe	.L470
	movabsq	$2951479051793528259, %r11
	movl	16(%rsp), %r8d
	subl	$1, %r8d
	.p2align 4
	.p2align 3
.L471:
	movq	%r9, %rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%r11
	movq	%r9, %rax
	shrq	$2, %rdx
	imulq	$100, %rdx, %rsi
	subq	%rsi, %rax
	movq	%r9, %rsi
	movq	%rdx, %r9
	movl	%r8d, %edx
	movzbl	49(%rsp,%rax,2), %r14d
	movzbl	48(%rsp,%rax,2), %eax
	movb	%r14b, (%rcx,%rdx)
	leal	-1(%r8), %edx
	subl	$2, %r8d
	movb	%al, (%rcx,%rdx)
	cmpq	$9999, %rsi
	ja	.L471
	cmpq	$999, %rsi
	ja	.L470
.L472:
	addl	$48, %r9d
.L473:
	movb	%r9b, (%rcx)
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L428:
	movq	(%rdi), %r8
	movq	%r8, (%rcx)
	movl	%edx, %r8d
	movq	-8(%rdi,%r8), %r9
	movq	%r9, -8(%rcx,%r8)
	leaq	8(%rcx), %r8
	andq	$-8, %r8
	subq	%r8, %rcx
	addl	%ecx, %edx
	subq	%rcx, %rdi
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L429
	andl	$-8, %edx
	xorl	%ecx, %ecx
.L432:
	movl	%ecx, %r9d
	addl	$8, %ecx
	movq	(%rdi,%r9), %r10
	movq	%r10, (%r8,%r9)
	cmpl	%edx, %ecx
	jb	.L432
	jmp	.L429
	.p2align 4,,10
	.p2align 3
.L470:
	movzbl	49(%rsp,%r9,2), %eax
	movzbl	48(%rsp,%r9,2), %r9d
	movb	%al, 1(%rcx)
	jmp	.L473
	.p2align 4,,10
	.p2align 3
.L451:
	addl	%r8d, %r8d
	leal	1(%r8), %eax
	movzbl	48(%rsp,%r8), %r8d
	movzbl	48(%rsp,%rax), %eax
	movb	%al, 1(%rcx)
	jmp	.L454
	.p2align 4,,10
	.p2align 3
.L527:
	addl	$2, %r8d
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L523:
	addl	$2, %r9d
	jmp	.L435
	.p2align 4,,10
	.p2align 3
.L518:
	addl	$2, %r8d
	jmp	.L455
	.p2align 4,,10
	.p2align 3
.L525:
	addl	$2, %r9d
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L526:
	addl	$3, %r9d
	jmp	.L447
	.p2align 4,,10
	.p2align 3
.L528:
	addl	$3, %r8d
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L519:
	addl	$3, %r8d
	jmp	.L455
	.p2align 4,,10
	.p2align 3
.L524:
	addl	$3, %r9d
	jmp	.L435
.L445:
	movq	(%rbx), %rax
	movl	%r8d, (%rsp)
	movl	$1, %esi
	movq	(%rax), %rdi
	movq	(%rdi), %rax
	call	*8(%rax)
	movl	(%rsp), %r8d
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L415
	movq	24(%rdi), %rcx
	movl	$1, %r10d
	jmp	.L453
.L477:
	movl	$1, %r9d
	jmp	.L435
.L464:
	movq	(%rbx), %rax
	movq	%r9, (%rsp)
	movl	$1, %esi
	movq	(%rax), %rdi
	movq	(%rdi), %rax
	call	*8(%rax)
	movq	(%rsp), %r9
	testq	%rax, %rax
	movq	%rax, %rdi
	je	.L415
	movq	24(%rdi), %rcx
	movl	$1, %r10d
	jmp	.L472
.L480:
	movl	$1, %r8d
	jmp	.L455
.L521:
	movl	(%rdi), %r8d
	movl	%r8d, (%rcx)
	movl	-4(%rdi,%rdx), %edi
	movl	%edi, -4(%rcx,%rdx)
	jmp	.L429
.L522:
	movzwl	-2(%rdi,%rdx), %edi
	movw	%di, -2(%rcx,%rdx)
	jmp	.L429
.L520:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5096:
	.size	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE, .-_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:
.LFB5220:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx
	leaq	16(%rdi), %rsi
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	(%rdi), %r12
	cmpq	%r12, %rsi
	je	.L548
	movq	16(%rdi), %rax
	cmpq	%rbx, %rax
	jb	.L549
.L529:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L549:
	.cfi_restore_state
	movabsq	$9223372036854775806, %rdx
	cmpq	%rbx, %rdx
	jb	.L532
	addq	%rax, %rax
	leaq	1(%rbx), %rdi
	cmpq	%rax, %rbx
	jb	.L550
.L537:
	movq	%rsi, 8(%rsp)
	call	_Znwm@PLT
	movq	8(%rsp), %rsi
	movq	%rax, %r13
	movq	8(%rbp), %rax
	testq	%rax, %rax
	leaq	1(%rax), %rdx
	je	.L533
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	memcpy@PLT
.L539:
	movq	16(%rbp), %rax
	movq	%r12, %rdi
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L540:
	movq	%r13, 0(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L550:
	.cfi_restore_state
	cmpq	%rax, %rdx
	leaq	1(%rax), %rcx
	movabsq	$9223372036854775807, %rdi
	cmovb	%rdx, %rax
	cmovnb	%rcx, %rdi
	movq	%rax, %rbx
	jmp	.L537
	.p2align 4,,10
	.p2align 3
.L548:
	cmpq	$15, %rbx
	jbe	.L529
	movabsq	$9223372036854775806, %rax
	cmpq	%rbx, %rax
	jb	.L532
	movl	$30, %eax
	movq	%rsi, 8(%rsp)
	cmpq	%rax, %rbx
	cmovb	%rax, %rbx
	leaq	1(%rbx), %rdi
	call	_Znwm@PLT
	movq	8(%rsp), %rsi
	movq	%rax, %r13
	movq	8(%rbp), %rax
	testq	%rax, %rax
	leaq	1(%rax), %rdx
	jne	.L551
.L533:
	movzbl	(%r12), %eax
	movb	%al, 0(%r13)
	cmpq	%r12, %rsi
	jne	.L539
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L551:
	movq	%r13, %rdi
	call	memcpy@PLT
	jmp	.L540
.L532:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5220:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:
.LFB5631:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	16(%rdi), %rax
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	%rdx, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	8(%rdi), %r13
	movq	(%rdi), %r12
	movq	%rax, (%rsp)
	addq	%r13, %rbx
	cmpq	%r12, %rax
	je	.L584
	movabsq	$9223372036854775806, %rsi
	movq	16(%rdi), %rax
	cmpq	%rbx, %rsi
	jb	.L554
	leaq	1(%rbx), %rdi
	cmpq	%rbx, %rax
	jnb	.L560
	addq	%rax, %rax
	cmpq	%rax, %rbx
	jnb	.L560
	leaq	1(%rax), %rdi
	movq	%rax, %rbx
	cmpq	%rax, %rsi
	jnb	.L560
	movabsq	$9223372036854775807, %rdi
	movq	%rsi, %rbx
	.p2align 4
	.p2align 3
.L560:
	leaq	(%r15,%rdx), %rax
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	subq	%rax, %r13
	movq	%rax, 24(%rsp)
	call	_Znwm@PLT
	testq	%r15, %r15
	movq	8(%rsp), %rcx
	movq	16(%rsp), %r8
	movq	%rax, %r14
	je	.L561
	cmpq	$1, %r15
	je	.L585
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	call	memcpy@PLT
	movq	16(%rsp), %r8
	movq	8(%rsp), %rcx
.L561:
	testq	%rcx, %rcx
	je	.L563
	testq	%r8, %r8
	je	.L563
	leaq	(%r14,%r15), %rdi
	cmpq	$1, %r8
	je	.L586
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r8, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %r8
.L563:
	testq	%r13, %r13
	jne	.L587
.L565:
	cmpq	%r12, (%rsp)
	je	.L567
	movq	16(%rbp), %rax
	movq	%r12, %rdi
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L567:
	movq	%r14, 0(%rbp)
	movq	%rbx, 16(%rbp)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L587:
	.cfi_restore_state
	movq	24(%rsp), %rsi
	leaq	(%r15,%r8), %rdi
	addq	%r14, %rdi
	addq	%r12, %rsi
	cmpq	$1, %r13
	je	.L588
	movq	%r13, %rdx
	call	memcpy@PLT
	jmp	.L565
	.p2align 4,,10
	.p2align 3
.L584:
	movabsq	$9223372036854775806, %rax
	cmpq	%rbx, %rax
	jb	.L554
	leaq	-16(%rbx), %rax
	leaq	1(%rbx), %rdi
	cmpq	$13, %rax
	ja	.L560
	movl	$31, %edi
	movl	$30, %ebx
	jmp	.L560
	.p2align 4,,10
	.p2align 3
.L585:
	movzbl	(%r12), %eax
	movb	%al, (%r14)
	jmp	.L561
	.p2align 4,,10
	.p2align 3
.L586:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	testq	%r13, %r13
	je	.L565
	jmp	.L587
	.p2align 4,,10
	.p2align 3
.L588:
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	.L565
.L554:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5631:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.section	.text._ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm,"axG",@progbits,_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm
	.type	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm, @function
_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm:
.LFB6100:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	304(%rdi), %r9
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	8(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	296(%rdi), %r12
	subq	%rcx, %r8
	jne	.L628
.L590:
	movq	288(%rbx), %rcx
	addq	%r12, %rbp
	cmpq	%r9, %rcx
	je	.L629
	movq	304(%rbx), %r8
	cmpq	%rbp, %r8
	jb	.L630
.L597:
	movq	%rbp, 296(%rbx)
	movb	$0, (%rcx,%rbp)
	movq	288(%rbx), %rax
	movq	296(%rbx), %rdx
	movq	%rax, 8(%rbx)
	addq	%r12, %rax
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	movq	%rdx, 16(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L630:
	.cfi_restore_state
	movabsq	$9223372036854775806, %rax
	cmpq	%rbp, %rax
	jb	.L598
	leaq	(%r8,%r8), %r13
	cmpq	%r13, %rbp
	jb	.L602
	leaq	1(%rbp), %rdi
	movq	%rbp, %r13
.L603:
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	_Znwm@PLT
	testq	%r12, %r12
	movq	(%rsp), %rcx
	movq	8(%rsp), %r8
	movq	%rax, %r14
	leaq	1(%r12), %rdx
	je	.L631
	movq	%rcx, %rsi
	movq	%r14, %rdi
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %r8
	movq	(%rsp), %rcx
.L605:
	movq	%rcx, %rdi
	leaq	1(%r8), %rsi
	call	_ZdlPvm@PLT
	movq	%r14, %rcx
.L614:
	movq	%rcx, 288(%rbx)
	movq	%r13, 304(%rbx)
	jmp	.L597
	.p2align 4,,10
	.p2align 3
.L602:
	leaq	1(%r13), %rdi
	cmpq	%r13, %rax
	jnb	.L603
	movabsq	$9223372036854775807, %rdi
	movq	%rax, %r13
	jmp	.L603
	.p2align 4,,10
	.p2align 3
.L629:
	cmpq	$15, %rbp
	jbe	.L597
	movabsq	$9223372036854775806, %rax
	cmpq	%rbp, %rax
	jb	.L598
	movl	$30, %r13d
	movq	%r9, (%rsp)
	cmpq	%r13, %rbp
	cmovnb	%rbp, %r13
	leaq	1(%r13), %rdi
	call	_Znwm@PLT
	testq	%r12, %r12
	movq	(%rsp), %r9
	leaq	1(%r12), %rdx
	jne	.L632
	movzbl	(%r9), %edx
	movb	%dl, (%rax)
.L604:
	movq	%rax, %rcx
	jmp	.L614
	.p2align 4,,10
	.p2align 3
.L628:
	movabsq	$9223372036854775806, %rax
	subq	%r12, %rax
	cmpq	%r8, %rax
	jb	.L633
	movq	288(%rdi), %rdi
	cmpq	%r9, %rdi
	je	.L615
	movq	304(%rbx), %rax
.L592:
	leaq	(%r8,%r12), %r13
	cmpq	%r13, %rax
	jb	.L593
	addq	%r12, %rdi
	cmpq	$1, %r8
	je	.L634
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r9, (%rsp)
	call	memcpy@PLT
	movq	(%rsp), %r9
.L595:
	movq	288(%rbx), %rax
	movq	%r13, 296(%rbx)
	movb	$0, (%rax,%r13)
	movq	8(%rbx), %rax
	movq	296(%rbx), %r12
	movq	%rax, 24(%rbx)
	jmp	.L590
	.p2align 4,,10
	.p2align 3
.L632:
	cmpl	$8, %edx
	jnb	.L608
	testb	$4, %dl
	jne	.L635
	testl	%edx, %edx
	je	.L604
	movzbl	(%r9), %ecx
	movb	%cl, (%rax)
	testb	$2, %dl
	je	.L604
	movl	%edx, %edx
	movzwl	-2(%r9,%rdx), %ecx
	movw	%cx, -2(%rax,%rdx)
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L608:
	movq	(%r9), %rcx
	movq	%rcx, (%rax)
	movl	%edx, %ecx
	movq	-8(%r9,%rcx), %rsi
	movq	%rsi, -8(%rax,%rcx)
	leaq	8(%rax), %rcx
	movq	%rax, %rsi
	andq	$-8, %rcx
	subq	%rcx, %rsi
	addl	%esi, %edx
	subq	%rsi, %r9
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L604
	andl	$-8, %edx
	xorl	%esi, %esi
.L612:
	movl	%esi, %edi
	addl	$8, %esi
	movq	(%r9,%rdi), %r8
	movq	%r8, (%rcx,%rdi)
	cmpl	%edx, %esi
	jb	.L612
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L634:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.L595
	.p2align 4,,10
	.p2align 3
.L593:
	leaq	288(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r9, (%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	(%rsp), %r9
	jmp	.L595
	.p2align 4,,10
	.p2align 3
.L615:
	movl	$15, %eax
	jmp	.L592
.L635:
	movl	(%r9), %ecx
	movl	%edx, %edx
	movl	%ecx, (%rax)
	movl	-4(%r9,%rdx), %ecx
	movl	%ecx, -4(%rax,%rdx)
	jmp	.L604
.L631:
	movzbl	(%rcx), %eax
	movb	%al, (%r14)
	jmp	.L605
.L633:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L598:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6100:
	.size	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm, .-_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm
	.section	.text._ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm,"axG",@progbits,_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm
	.type	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm, @function
_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm:
.LFB6104:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	24(%rdi), %r10
	subq	8(%rdi), %r10
	movq	%rdi, %r9
	movq	296(%rdi), %rax
	addq	%rsi, %r10
	cmpq	%r10, %rax
	jb	.L647
	cmpq	%rax, %r10
	jnb	.L643
.L646:
	movq	288(%r9), %rax
	movq	%r10, 296(%r9)
	movb	$0, (%rax,%r10)
.L643:
	leaq	32(%r9), %rax
	movq	$256, 16(%r9)
	movq	%rax, 8(%r9)
	movq	%rax, 24(%r9)
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L647:
	.cfi_restore_state
	movabsq	$9223372036854775806, %rdx
	movq	%r10, %r8
	subq	%rax, %r8
	subq	%rax, %rdx
	cmpq	%r8, %rdx
	jb	.L648
	movq	288(%rdi), %rdi
	leaq	304(%r9), %rdx
	cmpq	%rdx, %rdi
	je	.L644
	movq	304(%r9), %rdx
.L639:
	cmpq	%r10, %rdx
	jb	.L649
.L640:
	addq	%rax, %rdi
	cmpq	$1, %r8
	je	.L650
	movq	%r8, %rdx
	xorl	%esi, %esi
	movq	%r9, 8(%rsp)
	movq	%r10, (%rsp)
	call	memset@PLT
	movq	8(%rsp), %r9
	movq	(%rsp), %r10
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L650:
	movb	$0, (%rdi)
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L649:
	leaq	288(%r9), %rdi
	movq	%rax, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r10, 24(%rsp)
	movq	%r9, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rax, (%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	16(%rsp), %r9
	movq	24(%rsp), %r10
	movq	8(%rsp), %r8
	movq	(%rsp), %rax
	movq	288(%r9), %rdi
	jmp	.L640
	.p2align 4,,10
	.p2align 3
.L644:
	movl	$15, %edx
	jmp	.L639
.L648:
	leaq	.LC2(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6104:
	.size	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm, .-_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm
	.section	.text._ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev,"axG",@progbits,_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	.type	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev, @function
_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev:
.LFB5696:
	.cfi_startproc
	endbr64
	movq	16(%rdi), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, 16(%rdi)
	movsbl	(%rdx), %eax
	testb	%al, %al
	js	.L652
	movl	$1, %ecx
.L653:
	movl	%eax, (%rdi)
	movl	$256, %eax
	movb	%cl, 26(%rdi)
	movw	%ax, 24(%rdi)
	movq	%rdx, 16(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L652:
	cmpb	$-63, %al
	jbe	.L669
	movq	32(%rdi), %rsi
	cmpq	%rsi, %rcx
	je	.L669
	cmpb	$-33, %al
	jbe	.L672
	cmpb	$-17, %al
	ja	.L655
	cmpb	$-32, %al
	je	.L663
	cmpb	$-19, %al
	movl	$-65, %r8d
	movl	$-97, %ecx
	movl	$-128, %r9d
	cmove	%ecx, %r8d
.L656:
	movzbl	1(%rdx), %ecx
	cmpb	%r9b, %cl
	jb	.L669
	cmpb	%cl, %r8b
	jb	.L669
	leaq	2(%rdx), %r8
	movq	%r8, 16(%rdi)
	cmpq	%r8, %rsi
	je	.L658
	movzbl	2(%rdx), %esi
	leal	-128(%rsi), %r8d
	cmpb	$63, %r8b
	ja	.L658
	andl	$15, %eax
	andl	$63, %ecx
	andl	$63, %esi
	sall	$6, %eax
	orl	%eax, %ecx
	movl	%esi, %eax
	sall	$6, %ecx
	orl	%ecx, %eax
	movl	$3, %ecx
	jmp	.L653
	.p2align 4,,10
	.p2align 3
.L672:
	movzbl	1(%rdx), %ecx
	leal	-128(%rcx), %esi
	cmpb	$63, %sil
	ja	.L669
	andl	$31, %eax
	andl	$63, %ecx
	sall	$6, %eax
	orl	%ecx, %eax
	movl	$2, %ecx
	jmp	.L653
	.p2align 4,,10
	.p2align 3
.L669:
	movl	$1, %ecx
	movl	$65533, %eax
	jmp	.L653
	.p2align 4,,10
	.p2align 3
.L655:
	cmpb	$-12, %al
	ja	.L669
	cmpb	$-16, %al
	je	.L667
	cmpb	$-12, %al
	movl	$-65, %r8d
	movl	$-113, %ecx
	movl	$-128, %r9d
	cmove	%ecx, %r8d
.L659:
	movzbl	1(%rdx), %ecx
	cmpb	%r9b, %cl
	jb	.L669
	cmpb	%cl, %r8b
	jb	.L669
	leaq	2(%rdx), %r8
	movq	%r8, 16(%rdi)
	cmpq	%r8, %rsi
	je	.L658
	movzbl	2(%rdx), %r8d
	leal	-128(%r8), %r9d
	cmpb	$63, %r9b
	ja	.L658
	leaq	3(%rdx), %r9
	movq	%r9, 16(%rdi)
	cmpq	%r9, %rsi
	je	.L671
	movzbl	3(%rdx), %esi
	leal	-128(%rsi), %r9d
	cmpb	$63, %r9b
	ja	.L671
	andl	$7, %eax
	andl	$63, %ecx
	andl	$63, %r8d
	andl	$63, %esi
	sall	$6, %eax
	orl	%eax, %ecx
	movl	%esi, %eax
	sall	$6, %ecx
	orl	%ecx, %r8d
	movl	$4, %ecx
	sall	$6, %r8d
	orl	%r8d, %eax
	jmp	.L653
.L663:
	movl	$-96, %r9d
	movl	$-65, %r8d
	jmp	.L656
.L658:
	movl	$2, %ecx
	movl	$65533, %eax
	jmp	.L653
.L667:
	movl	$-112, %r9d
	movl	$-65, %r8d
	jmp	.L659
.L671:
	movl	$3, %ecx
	movl	$65533, %eax
	jmp	.L653
	.cfi_endproc
.LFE5696:
	.size	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev, .-_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	.section	.text._ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE,"axG",@progbits,_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE
	.type	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE, @function
_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE:
.LFB5196:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	addq	%r8, %rcx
	movq	%rdi, %rax
	addq	$-128, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %r9
	movq	%r9, 120(%rsp)
	movq	%rdx, %r9
	cmpq	%r8, %rcx
	je	.L674
	movzbl	(%rsi), %edx
	jmp	.L676
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L695:
	addq	$1, %r8
	cmpq	%r8, %rcx
	je	.L674
.L676:
	cmpb	(%r8), %dl
	jne	.L695
.L675:
	movq	%rsi, %rax
.L673:
	movq	120(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L696
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L674:
	.cfi_restore_state
	cmpq	%r9, %rsi
	je	.L677
	movq	%rsi, %xmm0
	leaq	32(%rsp), %rdi
	movq	%rax, 16(%rsp)
	xorl	%eax, %eax
	punpcklqdq	%xmm0, %xmm0
	movq	%rsi, 8(%rsp)
	movq	%rdi, %rbx
	movw	%ax, 56(%rsp)
	movq	%r9, 64(%rsp)
	movq	%r9, (%rsp)
	movups	%xmm0, 40(%rsp)
	movb	$0, 58(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	64(%rsp), %rcx
	movzbl	56(%rsp), %edx
	movdqa	32(%rsp), %xmm0
	movzbl	57(%rsp), %r10d
	movq	48(%rsp), %rdi
	movzbl	58(%rsp), %r8d
	movq	%rcx, 112(%rsp)
	movzbl	%dl, %ecx
	movaps	%xmm0, 80(%rsp)
	addl	$1, %ecx
	movdqa	48(%rsp), %xmm0
	movq	(%rsp), %r9
	cmpl	%r10d, %ecx
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rax
	movaps	%xmm0, 96(%rsp)
	je	.L697
.L678:
	movl	80(%rsp,%rdx,4), %edx
	cmpl	$55295, %edx
	ja	.L698
.L681:
	cmpq	%r9, %rdi
	je	.L677
	movzbl	(%rdi), %ecx
	cmpb	$62, %cl
	je	.L688
	cmpb	$94, %cl
	je	.L689
	cmpb	$60, %cl
	je	.L699
	.p2align 4
	.p2align 3
.L677:
	movzbl	(%rsi), %edx
	cmpb	$62, %dl
	je	.L690
	cmpb	$94, %dl
	je	.L691
	cmpb	$60, %dl
	jne	.L675
	movl	$1, %ecx
.L686:
	movzbl	(%rax), %edx
	movl	$32, 8(%rax)
	andl	$-4, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	leaq	1(%rsi), %rax
	jmp	.L673
	.p2align 4,,10
	.p2align 3
.L691:
	movl	$3, %ecx
	jmp	.L686
.L697:
	cmpq	%rdi, %r9
	je	.L677
	movzbl	%r8b, %ecx
	addq	%rdi, %rcx
	cmpq	%rcx, %r9
	je	.L677
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	movq	%r9, 16(%rsp)
	movb	%dl, 31(%rsp)
	movq	%rcx, 48(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	48(%rsp), %rdi
	movzbl	31(%rsp), %edx
	movq	16(%rsp), %r9
	movq	8(%rsp), %rsi
	movq	(%rsp), %rax
	jmp	.L678
	.p2align 4,,10
	.p2align 3
.L690:
	movl	$2, %ecx
	jmp	.L686
.L699:
	movl	$1, %ecx
.L683:
	movl	%edx, 8(%rax)
	movzbl	(%rax), %edx
	andl	$-4, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	leaq	1(%rdi), %rax
	jmp	.L673
.L698:
	leal	-57344(%rdx), %ecx
	cmpl	$1056767, %ecx
	ja	.L677
	jmp	.L681
.L689:
	movl	$3, %ecx
	jmp	.L683
.L688:
	movl	$2, %ecx
	jmp	.L683
.L696:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5196:
	.size	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE, .-_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE
	.section	.text._ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,"axG",@progbits,_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	.type	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE, @function
_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE:
.LFB4550:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %r11d
	movq	%rdi, %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	andl	$15, %r11d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %r12
	movq	%r12, 152(%rsp)
	movq	%rsi, %r12
	movq	8(%rsi), %rsi
	movq	$0, 52(%rsp)
	movdqu	(%r12), %xmm0
	movq	%xmm0, %rax
	cmpq	%rax, %rsi
	je	.L701
	movzbl	(%rax), %r13d
	cmpb	$125, %r13b
	je	.L701
	cmpb	$123, %r13b
	je	.L702
	movq	%rdi, 32(%rsp)
	xorl	%edi, %edi
	movw	%di, 88(%rsp)
	leaq	64(%rsp), %rdi
	movq	%xmm0, 24(%rsp)
	punpcklqdq	%xmm0, %xmm0
	movl	%edx, 44(%rsp)
	movb	%r11b, 16(%rsp)
	movq	%rsi, 96(%rsp)
	movq	%rsi, 8(%rsp)
	movups	%xmm0, 72(%rsp)
	movb	$0, 90(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	96(%rsp), %rcx
	movzbl	88(%rsp), %ebp
	movdqa	64(%rsp), %xmm0
	movzbl	89(%rsp), %r10d
	movq	%rcx, 144(%rsp)
	movzbl	%bpl, %ecx
	movq	80(%rsp), %rdi
	movaps	%xmm0, 112(%rsp)
	addl	$1, %ecx
	movdqa	80(%rsp), %xmm0
	movzbl	90(%rsp), %r8d
	cmpl	%r10d, %ecx
	movq	8(%rsp), %rsi
	movzbl	16(%rsp), %r11d
	movq	24(%rsp), %rax
	movq	32(%rsp), %r9
	movaps	%xmm0, 128(%rsp)
	movl	44(%rsp), %edx
	je	.L874
.L703:
	movl	112(%rsp,%rbp,4), %r8d
	cmpl	$55295, %r8d
	ja	.L875
.L706:
	cmpq	%rdi, %rsi
	je	.L710
	movzbl	(%rdi), %ecx
	cmpb	$62, %cl
	je	.L794
	cmpb	$94, %cl
	je	.L795
	movl	$1, %r10d
	cmpb	$60, %cl
	je	.L709
.L710:
	cmpb	$62, %r13b
	je	.L712
	cmpb	$94, %r13b
	je	.L713
	cmpb	$60, %r13b
	jne	.L702
.L714:
	movl	$1, %r10d
.L716:
	addq	$1, %rax
	movl	$32, %r8d
.L711:
	cmpq	%rax, %rsi
	jne	.L715
.L717:
	movzwl	52(%rsp), %ecx
	andl	$15, %edx
	xorl	%esi, %esi
	sall	$11, %edx
	movw	%si, 56(%rsp)
	orl	%r10d, %edx
	andw	$-31232, %cx
	orl	%ecx, %edx
	movw	%dx, 52(%rsp)
	jmp	.L718
	.p2align 4,,10
	.p2align 3
.L701:
	leal	0(,%r11,8), %edx
	movzbl	53(%rsp), %r11d
	movl	$32, %r8d
	andl	$-121, %r11d
	orl	%edx, %r11d
	movb	%r11b, 53(%rsp)
.L718:
	movq	52(%rsp), %rdx
	movl	%r8d, 8(%r9)
	movq	%rdx, (%r9)
	movq	152(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L870
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L702:
	.cfi_restore_state
	movl	$32, %r8d
	xorl	%r10d, %r10d
.L715:
	movzbl	(%rax), %r13d
	cmpb	$125, %r13b
	je	.L717
.L790:
	leal	-32(%r13), %ecx
	cmpb	$13, %cl
	jbe	.L719
	xorl	%ecx, %ecx
.L720:
	xorl	%edi, %edi
.L789:
	xorl	%r15d, %r15d
	cmpb	$48, %r13b
	je	.L876
.L728:
	movzbl	%r13b, %ebx
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rbp
	cmpb	$9, 0(%rbp,%rbx)
	ja	.L732
.L723:
	cmpq	%rax, %rsi
	je	.L733
	movl	%r11d, %r14d
	movq	%rax, 8(%rsp)
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	movl	$16, %r13d
	movl	%edx, %r11d
	jmp	.L741
	.p2align 4,,10
	.p2align 3
.L878:
	leal	0(%rbp,%rbp,4), %ebp
	movzbl	%r12b, %r12d
	leal	(%r12,%rbp,2), %ebp
.L736:
	addq	$1, %rbx
	cmpq	%rbx, %rsi
	je	.L877
.L741:
	movzbl	(%rbx), %eax
	leal	-48(%rax), %r12d
	cmpb	$9, %r12b
	ja	.L734
	subl	$4, %r13d
	jns	.L878
	movl	$10, %edx
	movl	%ebp, %eax
	mulw	%dx
	jo	.L733
	movzbl	%r12b, %r12d
	addw	%ax, %r12w
	jc	.L733
	movl	%r12d, %ebp
	jmp	.L736
	.p2align 4,,10
	.p2align 3
.L719:
	movzbl	%cl, %ecx
	leaq	CSWTCH.759(%rip), %rdi
	movl	(%rdi,%rcx,4), %edi
	testl	%edi, %edi
	jne	.L721
	cmpb	$35, %r13b
	jne	.L879
	xorl	%ecx, %ecx
.L722:
	leaq	1(%rax), %rdi
	cmpq	%rdi, %rsi
	jne	.L880
.L726:
	movzbl	%cl, %eax
	orl	$16, %r10d
	andl	$15, %edx
	sall	$2, %eax
	sall	$11, %edx
	orl	%r10d, %eax
	orl	%edx, %eax
	movzwl	52(%rsp), %edx
	andw	$-31232, %dx
	orl	%edx, %eax
	xorl	%edx, %edx
	movw	%ax, 52(%rsp)
	movq	%rdi, %rax
	movw	%dx, 56(%rsp)
	jmp	.L718
	.p2align 4,,10
	.p2align 3
.L721:
	movl	%edi, %ecx
	leaq	1(%rax), %rbx
	andl	$3, %ecx
	cmpq	%rbx, %rsi
	jne	.L881
.L725:
	andl	$3, %edi
	movzwl	52(%rsp), %eax
	andl	$15, %edx
	xorl	%ecx, %ecx
	sall	$2, %edi
	sall	$11, %edx
	movw	%cx, 56(%rsp)
	orl	%r10d, %edi
	andw	$-31232, %ax
	orl	%edx, %edi
	orl	%eax, %edi
	movq	%rbx, %rax
	movw	%di, 52(%rsp)
	jmp	.L718
.L874:
	cmpq	%rdi, %rsi
	je	.L705
	movzbl	%r8b, %ecx
	addq	%rdi, %rcx
	cmpq	%rcx, %rsi
	je	.L705
	leaq	64(%rsp), %rdi
	movq	%rsi, 16(%rsp)
	movb	%r11b, 8(%rsp)
	movq	%rcx, 80(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	80(%rsp), %rdi
	movl	44(%rsp), %edx
	movq	32(%rsp), %r9
	movq	24(%rsp), %rax
	movq	16(%rsp), %rsi
	movzbl	8(%rsp), %r11d
	jmp	.L703
.L795:
	movl	$3, %r10d
.L709:
	leaq	1(%rdi), %rax
	jmp	.L711
	.p2align 4,,10
	.p2align 3
.L713:
	movl	$3, %r10d
	jmp	.L716
	.p2align 4,,10
	.p2align 3
.L712:
	movl	$2, %r10d
	jmp	.L716
.L876:
	leaq	1(%rax), %rbx
	cmpq	%rbx, %rsi
	jne	.L882
.L729:
	movzbl	%cl, %eax
	orl	$64, %r10d
	sall	$4, %edi
	andl	$15, %edx
	sall	$2, %eax
	sall	$11, %edx
	orl	%r10d, %eax
	orl	%edi, %eax
	orl	%edx, %eax
	movzwl	52(%rsp), %edx
	andw	$-31232, %dx
	orl	%edx, %eax
	movw	%ax, 52(%rsp)
	xorl	%eax, %eax
	movw	%ax, 56(%rsp)
	movq	%rbx, %rax
	jmp	.L718
.L732:
	cmpb	$123, %r13b
	je	.L883
.L724:
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	cmpq	%rax, %rsi
	je	.L742
.L788:
	cmpb	$76, %r13b
	je	.L884
	subl	$63, %r13d
	cmpb	$57, %r13b
	ja	.L805
	leaq	.L774(%rip), %r12
	movzbl	%r13b, %r13d
	movslq	(%r12,%r13,4), %r13
	addq	%r13, %r12
	notrack jmp	*%r12
	.section	.rodata._ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,"aG",@progbits,_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,comdat
	.align 4
	.align 4
.L774:
	.long	.L806-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L807-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L808-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L809-.L774
	.long	.L810-.L774
	.long	.L811-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L812-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L813-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L805-.L774
	.long	.L814-.L774
	.section	.text._ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,"axG",@progbits,_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,comdat
.L880:
	movzbl	1(%rax), %r13d
	cmpb	$125, %r13b
	je	.L726
	movq	%rdi, %rax
	movl	$1, %edi
	jmp	.L789
	.p2align 4,,10
	.p2align 3
.L882:
	movzbl	1(%rax), %r13d
	cmpb	$125, %r13b
	je	.L729
	movq	%rbx, %rax
	movl	$1, %r15d
	cmpb	$48, %r13b
	jne	.L728
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L870
	leaq	.LC27(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L805:
	xorl	%r12d, %r12d
.L772:
	cmpq	%rax, %rsi
	je	.L784
.L785:
	cmpb	$125, (%rax)
	jne	.L786
.L784:
	sall	$4, %edi
	movzbl	%cl, %edx
	sall	$5, %r12d
	movzbl	%r15b, %ecx
	sall	$2, %edx
	sall	$6, %ecx
	movw	%bp, 56(%rsp)
	sall	$7, %ebx
	orl	%r10d, %edx
	sall	$11, %r11d
	orl	%edi, %edx
	orl	%r12d, %edx
	orl	%ecx, %edx
	movzwl	52(%rsp), %ecx
	orl	%ebx, %edx
	orl	%r11d, %edx
	andw	$-31232, %cx
	orl	%ecx, %edx
	movw	%dx, 52(%rsp)
	jmp	.L718
.L883:
	leaq	1(%rax), %rbx
	cmpq	%rbx, %rsi
	je	.L885
	movsbw	1(%rax), %bp
	cmpb	$125, %bpl
	je	.L886
	cmpb	$48, %bpl
	je	.L887
	leal	-49(%rbp), %r13d
	cmpb	$8, %r13b
	jbe	.L888
.L753:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L870
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L705:
	movl	112(%rsp,%rbp,4), %ecx
	cmpl	$55295, %ecx
	jbe	.L710
	subl	$57344, %ecx
	cmpl	$1056767, %ecx
	jbe	.L710
.L707:
	cmpb	$62, %r13b
	je	.L712
	cmpb	$94, %r13b
	je	.L713
	cmpb	$60, %r13b
	je	.L714
	movl	$32, %r8d
	xorl	%r10d, %r10d
	jmp	.L790
.L814:
	xorl	%r12d, %r12d
.L773:
	addq	$1, %rax
	movl	$5, %r11d
	jmp	.L772
.L813:
	xorl	%r12d, %r12d
.L775:
	testl	%edx, %edx
	jne	.L783
	addq	$1, %rax
	xorl	%r11d, %r11d
	jmp	.L772
.L812:
	xorl	%r12d, %r12d
.L776:
	addq	$1, %rax
	movl	$4, %r11d
	jmp	.L772
.L811:
	xorl	%r12d, %r12d
.L777:
	addq	$1, %rax
	movl	$1, %r11d
	jmp	.L772
.L810:
	xorl	%r12d, %r12d
.L778:
	testl	%edx, %edx
	je	.L783
	addq	$1, %rax
	movl	$7, %r11d
	jmp	.L772
.L809:
	xorl	%r12d, %r12d
.L779:
	addq	$1, %rax
	movl	$2, %r11d
	jmp	.L772
.L808:
	xorl	%r12d, %r12d
.L780:
	addq	$1, %rax
	movl	$6, %r11d
	jmp	.L772
.L807:
	xorl	%r12d, %r12d
.L781:
	addq	$1, %rax
	movl	$3, %r11d
	jmp	.L772
.L806:
	xorl	%r12d, %r12d
.L782:
	cmpl	$7, %edx
	je	.L889
.L783:
	cmpq	%rax, %rsi
	je	.L784
.L786:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L870
	call	_ZNSt8__format29__failed_to_parse_format_specEv
	.p2align 4,,10
	.p2align 3
.L734:
	movl	%r11d, %edx
	movl	%r14d, %r11d
	cmpq	%rbx, 8(%rsp)
	je	.L733
	movq	%rbx, %rax
	movl	$1, %ebx
.L767:
	cmpq	%rax, %rsi
	je	.L742
	movzbl	(%rax), %r13d
	cmpb	$125, %r13b
	jne	.L788
.L742:
	movzbl	%cl, %ecx
	sall	$4, %edi
	movzbl	%r15b, %esi
	andl	$15, %edx
	sall	$2, %ecx
	sall	$6, %esi
	movw	%bp, 56(%rsp)
	sall	$7, %ebx
	orl	%r10d, %ecx
	sall	$11, %edx
	orl	%edi, %ecx
	orl	%esi, %ecx
	orl	%ebx, %ecx
	orl	%edx, %ecx
	movzwl	52(%rsp), %edx
	andw	$-31232, %dx
	orl	%edx, %ecx
	movw	%cx, 52(%rsp)
	jmp	.L718
.L794:
	movl	$2, %r10d
	jmp	.L709
.L881:
	movzbl	1(%rax), %r13d
	cmpb	$125, %r13b
	je	.L725
	movq	%rbx, %rax
	cmpb	$35, %r13b
	je	.L722
	jmp	.L720
	.p2align 4,,10
	.p2align 3
.L884:
	leaq	1(%rax), %r12
	cmpq	%r12, %rsi
	jne	.L890
.L770:
	movzbl	52(%rsp), %eax
	sall	$2, %ecx
	sall	$4, %edi
	movl	%r15d, %edx
	sall	$6, %edx
	andl	$3, %ebx
	sall	$3, %r11d
	movw	%bp, 56(%rsp)
	andl	$-16, %eax
	sall	$7, %ebx
	orl	%r10d, %eax
	orl	%ecx, %eax
	andl	$-17, %eax
	orl	%edi, %eax
	orl	$32, %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, 52(%rsp)
	movzwl	52(%rsp), %eax
	andw	$-385, %ax
	orl	%ebx, %eax
	movzbl	%ah, %edx
	movw	%ax, 52(%rsp)
	movl	%edx, %eax
	andl	$-121, %eax
	orl	%r11d, %eax
	movb	%al, 53(%rsp)
	movq	%r12, %rax
	jmp	.L718
.L875:
	leal	-57344(%r8), %ecx
	cmpl	$1056767, %ecx
	ja	.L707
	jmp	.L706
.L890:
	movzbl	1(%rax), %eax
	cmpb	$125, %al
	je	.L770
	subl	$63, %eax
	cmpb	$57, %al
	ja	.L816
	leaq	.L791(%rip), %r13
	movzbl	%al, %eax
	movslq	0(%r13,%rax,4), %rax
	addq	%r13, %rax
	notrack jmp	*%rax
	.section	.rodata._ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,"aG",@progbits,_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,comdat
	.align 4
	.align 4
.L791:
	.long	.L817-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L818-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L819-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L820-.L791
	.long	.L821-.L791
	.long	.L822-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L823-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L824-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L816-.L791
	.long	.L825-.L791
	.section	.text._ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,"axG",@progbits,_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE,comdat
	.p2align 4,,10
	.p2align 3
.L877:
	movl	%r11d, %edx
	movq	%rsi, %rax
	movl	$1, %ebx
	jmp	.L742
.L886:
	cmpl	$1, 16(%r12)
	je	.L766
	movl	$2, 16(%r12)
	movq	24(%r12), %rbp
	leaq	1(%rbp), %r13
	movq	%r13, 24(%r12)
.L750:
	leaq	1(%rbx), %r12
	xorl	%ebx, %ebx
	cmpq	%rax, %r12
	cmovne	%r12, %rax
	movl	$2, %r12d
	cmovne	%r12d, %ebx
	jmp	.L767
.L888:
	leaq	2(%rax), %r13
	cmpq	%r13, %rsi
	je	.L753
	movzbl	2(%rax), %r14d
	subl	$48, %r14d
	cmpb	$9, %r14b
	ja	.L754
	xorl	%ebp, %ebp
	movq	%rax, %r14
	movq	%r12, 8(%rsp)
	movq	%rbx, %r13
	movl	%ebp, %eax
	movq	%r9, %r12
	movl	%edx, 16(%rsp)
	movl	%ecx, %r9d
	movl	$16, 24(%rsp)
	movq	%r14, %rbp
	jmp	.L763
.L892:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	leal	(%rcx,%rax,2), %eax
.L757:
	addq	$1, %r13
	cmpq	%r13, %rsi
	je	.L891
.L763:
	movzbl	0(%r13), %ecx
	subl	$48, %ecx
	cmpb	$9, %cl
	ja	.L755
	subl	$4, 24(%rsp)
	jns	.L892
	movl	$10, %edx
	mulw	%dx
	jo	.L759
	movzbl	%cl, %ecx
	addw	%cx, %ax
	jnc	.L757
.L759:
	movl	%r9d, %ecx
	movl	16(%rsp), %edx
	movq	%r12, %r9
	movq	8(%rsp), %r12
	movq	%rbp, %rax
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
.L760:
	testq	%rbx, %rbx
	sete	%r13b
.L752:
	cmpq	%rbx, %rsi
	je	.L753
	testb	%r13b, %r13b
	jne	.L753
.L792:
	cmpb	$125, (%rbx)
	jne	.L753
	cmpl	$2, 16(%r12)
	je	.L766
	movl	$1, 16(%r12)
	jmp	.L750
.L887:
	leaq	2(%rax), %rbx
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
	jmp	.L752
.L889:
	addq	$1, %rax
	movl	$15, %r11d
	jmp	.L772
.L754:
	subl	$48, %ebp
	movq	%r13, %rbx
	jmp	.L792
.L755:
	movq	%rbp, %r14
	movl	%r9d, %ecx
	movl	%eax, %ebp
	movq	%r12, %r9
	movl	16(%rsp), %edx
	movq	8(%rsp), %r12
	movq	%r14, %rax
	cmpq	%r13, %rbx
	je	.L893
	movq	%r13, %rbx
	jmp	.L760
.L891:
	movq	%rbp, %rbx
	movl	%r9d, %ecx
	movl	%eax, %ebp
	movq	%r12, %r9
	movq	%rbx, %rax
	movq	8(%rsp), %r12
	movl	16(%rsp), %edx
	movq	%rsi, %rbx
	jmp	.L760
.L733:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	je	.L744
.L870:
	call	__stack_chk_fail@PLT
.L893:
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.L760
.L879:
	movsbq	%r13b, %rcx
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdi
	movl	$0, %r15d
	cmpb	$9, (%rdi,%rcx)
	movl	$0, %edi
	movl	$0, %ecx
	jbe	.L723
	jmp	.L724
.L816:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L785
.L825:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L773
.L824:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L775
.L823:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L776
.L822:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L777
.L821:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L778
.L820:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L779
.L819:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L780
.L818:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L781
.L817:
	movq	%r12, %rax
	movl	$1, %r12d
	jmp	.L782
.L885:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L870
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L744:
	leaq	.LC28(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L766:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L870
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
	.cfi_endproc
.LFE4550:
	.size	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE, .-_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	.section	.rodata._ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE.str1.8,"aMS",@progbits,1
	.align 8
.LC32:
	.string	"format error: missing precision after '.' in format string"
	.section	.text._ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE,"axG",@progbits,_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	.type	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE, @function
_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE:
.LFB5188:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$160, %rsp
	.cfi_def_cfa_offset 208
	movdqu	(%rsi), %xmm0
	movq	8(%rsi), %r9
	movq	%fs:40, %r11
	movq	%r11, 152(%rsp)
	movq	%rdi, %r11
	movq	$0, 52(%rsp)
	movq	%xmm0, %r8
	cmpq	%r8, %r9
	je	.L997
	movq	%rsi, %r10
	movzbl	(%r8), %esi
	cmpb	$125, %sil
	je	.L997
	cmpb	$123, %sil
	je	.L896
	xorl	%edx, %edx
	leaq	64(%rsp), %rdi
	movq	%r10, 32(%rsp)
	movq	%xmm0, 16(%rsp)
	punpcklqdq	%xmm0, %xmm0
	movq	%r11, 24(%rsp)
	movw	%dx, 88(%rsp)
	movq	%r9, 96(%rsp)
	movq	%r9, 8(%rsp)
	movb	%sil, 40(%rsp)
	movups	%xmm0, 72(%rsp)
	movb	$0, 90(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	96(%rsp), %rax
	movzbl	88(%rsp), %ebp
	movdqa	64(%rsp), %xmm0
	movzbl	89(%rsp), %edi
	movq	%rax, 144(%rsp)
	movzbl	%bpl, %eax
	movq	80(%rsp), %rdx
	movaps	%xmm0, 112(%rsp)
	addl	$1, %eax
	movdqa	80(%rsp), %xmm0
	movzbl	90(%rsp), %ecx
	cmpl	%edi, %eax
	movq	8(%rsp), %r9
	movq	16(%rsp), %r8
	movq	24(%rsp), %r11
	movq	32(%rsp), %r10
	movaps	%xmm0, 128(%rsp)
	movzbl	40(%rsp), %esi
	je	.L1055
.L897:
	movl	112(%rsp,%rbp,4), %ebx
	cmpl	$55295, %ebx
	ja	.L1056
.L900:
	cmpq	%rdx, %r9
	je	.L904
	movzbl	(%rdx), %eax
	cmpb	$62, %al
	je	.L998
	cmpb	$94, %al
	je	.L999
	movl	$1, %r14d
	cmpb	$60, %al
	je	.L903
.L904:
	cmpb	$62, %sil
	je	.L906
	cmpb	$94, %sil
	je	.L907
	cmpb	$60, %sil
	jne	.L896
.L908:
	movl	$1, %r14d
.L910:
	addq	$1, %r8
	movl	$32, %ebx
.L905:
	cmpq	%r8, %r9
	jne	.L909
.L911:
	movq	52(%rsp), %rax
	movq	%r14, %rdx
	andl	$3, %edx
	andl	$4294934652, %eax
	orq	%rdx, %rax
	movq	%rax, 52(%rsp)
	jmp	.L895
	.p2align 4,,10
	.p2align 3
.L997:
	movl	$32, %ebx
.L895:
	movq	52(%rsp), %rax
	movl	%ebx, 8(%r11)
	movq	%rax, (%r11)
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	addq	$160, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r8, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L896:
	.cfi_restore_state
	xorl	%r14d, %r14d
	movl	$32, %ebx
.L909:
	movzbl	(%r8), %esi
	cmpb	$125, %sil
	je	.L911
	cmpb	$48, %sil
	je	.L915
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdx
	movzbl	%sil, %eax
	movq	%rdx, %r15
	cmpb	$9, (%rdx,%rax)
	jbe	.L913
	cmpb	$123, %sil
	je	.L916
.L914:
	xorl	%edi, %edi
	xorl	%ebp, %ebp
.L917:
	cmpb	$46, %sil
	je	.L1057
	xorl	%eax, %eax
	xorl	%edx, %edx
.L955:
	cmpb	$115, %sil
	je	.L986
	cmpb	$63, %sil
	je	.L1058
.L988:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	call	_ZNSt8__format29__failed_to_parse_format_specEv
	.p2align 4,,10
	.p2align 3
.L1055:
	cmpq	%rdx, %r9
	jne	.L1059
.L899:
	movl	112(%rsp,%rbp,4), %eax
	cmpl	$55295, %eax
	jbe	.L904
	subl	$57344, %eax
	cmpl	$1056767, %eax
	jbe	.L904
.L901:
	cmpb	$62, %sil
	je	.L906
	cmpb	$94, %sil
	je	.L907
	cmpb	$60, %sil
	je	.L908
	cmpb	$48, %sil
	je	.L915
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rbx
	movzbl	%sil, %eax
	movl	$0, %r14d
	cmpb	$9, (%rbx,%rax)
	movq	%rbx, %r15
	movl	$32, %ebx
	ja	.L914
	.p2align 4
	.p2align 3
.L913:
	movq	%r8, %rsi
	xorl	%ebp, %ebp
	movl	$16, %edi
	jmp	.L927
	.p2align 4,,10
	.p2align 3
.L1061:
	leal	0(%rbp,%rbp,4), %ebp
	movzbl	%cl, %ecx
	leal	(%rcx,%rbp,2), %ebp
.L921:
	addq	$1, %rsi
	cmpq	%rsi, %r9
	je	.L1060
.L927:
	movzbl	(%rsi), %eax
	leal	-48(%rax), %ecx
	cmpb	$9, %cl
	ja	.L919
	subl	$4, %edi
	jns	.L1061
	movl	$10, %edx
	movl	%ebp, %eax
	mulw	%dx
	jo	.L924
	movzbl	%cl, %ecx
	addw	%ax, %cx
	jc	.L924
	movl	%ecx, %ebp
	jmp	.L921
	.p2align 4,,10
	.p2align 3
.L916:
	leaq	1(%r8), %rcx
	cmpq	%rcx, %r9
	je	.L971
	movsbw	1(%r8), %ax
	cmpb	$125, %al
	je	.L1062
	cmpb	$48, %al
	je	.L1063
	leal	-49(%rax), %edx
	cmpb	$8, %dl
	jbe	.L939
.L949:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L999:
	movl	$3, %r14d
.L903:
	leaq	1(%rdx), %r8
	jmp	.L905
	.p2align 4,,10
	.p2align 3
.L1057:
	leaq	1(%r8), %rsi
	cmpq	%rsi, %r9
	je	.L970
	movzbl	1(%r8), %edx
	cmpb	$9, (%r15,%rdx)
	ja	.L959
	movq	%rsi, %r8
	xorl	%eax, %eax
	movl	$16, %r10d
	jmp	.L967
	.p2align 4,,10
	.p2align 3
.L1065:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	leal	(%rcx,%rax,2), %eax
.L962:
	addq	$1, %r8
	cmpq	%r8, %r9
	je	.L1064
.L967:
	movzbl	(%r8), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L960
	subl	$4, %r10d
	jns	.L1065
	movl	$10, %edx
	mulw	%dx
	jo	.L924
	movzbl	%cl, %ecx
	addw	%ax, %cx
	jc	.L924
	movl	%ecx, %eax
	jmp	.L962
	.p2align 4,,10
	.p2align 3
.L907:
	movl	$3, %r14d
	jmp	.L910
	.p2align 4,,10
	.p2align 3
.L906:
	movl	$2, %r14d
	jmp	.L910
.L986:
	addq	$1, %r8
	xorl	%esi, %esi
.L989:
	cmpq	%r8, %r9
	je	.L990
	cmpb	$125, (%r8)
	jne	.L988
.L990:
	movzbl	%dil, %ecx
	movzbl	%r14b, %edi
	sall	$9, %edx
	movw	%bp, 56(%rsp)
	sall	$7, %ecx
	movw	%ax, 58(%rsp)
	orl	%edi, %ecx
	orl	%edx, %ecx
	movl	%esi, %edx
	sall	$11, %edx
	orl	%edx, %ecx
	movzwl	52(%rsp), %edx
	andw	$-32644, %dx
	orl	%edx, %ecx
	movw	%cx, 52(%rsp)
	jmp	.L895
.L919:
	cmpq	%rsi, %r8
	je	.L924
	movq	%rsi, %r8
	movl	$1, %edi
.L954:
	cmpq	%r8, %r9
	je	.L928
	movzbl	(%r8), %esi
	cmpb	$125, %sil
	jne	.L917
.L928:
	movzbl	%dil, %eax
	movzbl	%r14b, %edx
	movw	%bp, 56(%rsp)
	sall	$7, %eax
	orl	%edx, %eax
	movzwl	52(%rsp), %edx
	andw	$-32644, %dx
	orl	%edx, %eax
	movw	%ax, 52(%rsp)
	xorl	%eax, %eax
	movw	%ax, 58(%rsp)
	jmp	.L895
.L1059:
	movzbl	%cl, %eax
	addq	%rdx, %rax
	cmpq	%rax, %r9
	je	.L899
	leaq	64(%rsp), %rdi
	movq	%r10, 40(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r8, 24(%rsp)
	movb	%sil, 16(%rsp)
	movq	%rax, 80(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	80(%rsp), %rdx
	movq	40(%rsp), %r10
	movq	32(%rsp), %r11
	movq	24(%rsp), %r8
	movzbl	16(%rsp), %esi
	movq	8(%rsp), %r9
	jmp	.L897
.L959:
	cmpb	$123, %dl
	je	.L1066
.L970:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	leaq	.LC32(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L1062:
	cmpl	$1, 16(%r10)
	je	.L953
	movq	24(%r10), %rbp
	movl	$2, 16(%r10)
	leaq	1(%rbp), %rax
	movq	%rax, 24(%r10)
.L936:
	addq	$1, %rcx
	xorl	%edi, %edi
	movl	$2, %eax
	cmpq	%r8, %rcx
	cmovne	%rcx, %r8
	cmovne	%eax, %edi
	jmp	.L954
.L1060:
	cmpq	%r8, %r9
	je	.L924
	movq	%r9, %r8
	movl	$1, %edi
	jmp	.L928
.L1058:
	addq	$1, %r8
	movl	$15, %esi
	jmp	.L989
.L998:
	movl	$2, %r14d
	jmp	.L903
.L939:
	leaq	2(%r8), %rdx
	cmpq	%rdx, %r9
	je	.L949
	movzbl	2(%r8), %edi
	leal	-48(%rdi), %esi
	cmpb	$9, %sil
	jbe	.L1003
	leal	-48(%rax), %ebp
	movq	%rdx, %rcx
.L943:
	cmpb	$125, (%rcx)
	jne	.L949
	cmpl	$2, 16(%r10)
	je	.L953
	movl	$1, 16(%r10)
	jmp	.L936
.L1063:
	leaq	2(%r8), %rcx
	xorl	%ebp, %ebp
	cmpq	%rcx, %r9
	jne	.L943
	jmp	.L949
	.p2align 4,,10
	.p2align 3
.L1056:
	leal	-57344(%rbx), %eax
	cmpl	$1056767, %eax
	ja	.L901
	jmp	.L900
.L1066:
	leaq	2(%r8), %rax
	movq	%rax, %r15
	cmpq	%rax, %r9
	je	.L971
	movsbw	2(%r8), %ax
	cmpb	$125, %al
	je	.L1067
	cmpb	$48, %al
	je	.L1068
	leal	-49(%rax), %edx
	cmpb	$8, %dl
	ja	.L949
	leaq	3(%r8), %rcx
	cmpq	%rcx, %r9
	je	.L949
	movzbl	3(%r8), %edx
	subl	$48, %edx
	cmpb	$9, %dl
	ja	.L976
	movq	%r15, %r8
	xorl	%eax, %eax
	movl	$16, %r12d
	jmp	.L985
.L1069:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	leal	(%rcx,%rax,2), %eax
.L979:
	addq	$1, %r8
	cmpq	%r8, %r9
	je	.L982
.L985:
	movzbl	(%r8), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L977
	movl	%r12d, %edx
	subl	$4, %edx
	movl	%edx, %r12d
	jns	.L1069
	movl	$10, %edx
	mulw	%dx
	jo	.L1053
	movzbl	%cl, %ecx
	addw	%ax, %cx
	jc	.L1053
	movl	%ecx, %eax
	jmp	.L979
	.p2align 4,,10
	.p2align 3
.L960:
	cmpq	%r8, %rsi
	je	.L924
	movl	$1, %edx
.L969:
	cmpq	%r8, %r9
	je	.L968
	movzbl	(%r8), %esi
	cmpb	$125, %sil
	jne	.L955
.L968:
	sall	$7, %edi
	movzbl	%r14b, %ecx
	sall	$9, %edx
	movw	%bp, 56(%rsp)
	orl	%ecx, %edi
	movzwl	52(%rsp), %ecx
	movw	%ax, 58(%rsp)
	orl	%edi, %edx
	andw	$-32644, %cx
	orl	%ecx, %edx
	movw	%dx, 52(%rsp)
	jmp	.L895
.L1064:
	movl	$1, %edx
	jmp	.L968
.L1003:
	movq	%rcx, %rdi
	xorl	%ebp, %ebp
	movl	$16, %r12d
	jmp	.L942
.L1071:
	leal	0(%rbp,%rbp,4), %ebp
	movzbl	%sil, %esi
	leal	(%rsi,%rbp,2), %ebp
.L946:
	addq	$1, %rdi
	cmpq	%rdi, %r9
	je	.L1070
.L942:
	movzbl	(%rdi), %eax
	leal	-48(%rax), %esi
	cmpb	$9, %sil
	ja	.L944
	movl	%r12d, %eax
	subl	$4, %eax
	movl	%eax, %r12d
	jns	.L1071
	movl	$10, %edx
	movl	%ebp, %eax
	mulw	%dx
	jo	.L949
	movzbl	%sil, %esi
	addw	%ax, %si
	jc	.L949
	movl	%esi, %ebp
	jmp	.L946
.L1067:
	cmpl	$1, 16(%r10)
	je	.L953
	movq	24(%r10), %rax
	movl	$2, 16(%r10)
	leaq	1(%rax), %rdx
	movq	%rdx, 24(%r10)
.L973:
	leaq	1(%r15), %r8
	cmpq	%r8, %rsi
	je	.L970
	movl	$2, %edx
	jmp	.L969
.L1068:
	leaq	3(%r8), %r15
	xorl	%edx, %edx
	xorl	%eax, %eax
.L975:
	cmpq	%r15, %r9
	je	.L949
	testb	%dl, %dl
	jne	.L949
.L993:
	cmpb	$125, (%r15)
	jne	.L949
	cmpl	$2, 16(%r10)
	je	.L953
	movl	$1, 16(%r10)
	jmp	.L973
.L976:
	subl	$48, %eax
	movq	%rcx, %r15
	jmp	.L993
.L944:
	cmpq	%rdi, %rcx
	je	.L949
	movq	%rdi, %rcx
.L952:
	cmpq	%rcx, %r9
	jne	.L943
	jmp	.L949
	.p2align 4,,10
	.p2align 3
.L1070:
	movq	%r9, %rcx
	jmp	.L952
.L977:
	cmpq	%r15, %r8
	jne	.L982
.L1053:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
.L982:
	testq	%r8, %r8
	movq	%r8, %r15
	sete	%dl
	jmp	.L975
.L924:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	je	.L930
.L1048:
	call	__stack_chk_fail@PLT
.L971:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L930:
	leaq	.LC28(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L915:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	leaq	.LC27(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L953:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
	.cfi_endproc
.LFE5188:
	.size	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE, .-_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc:
.LFB6250:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	16(%rdi), %rax
	movq	%rdi, %rcx
	movl	%esi, %r11d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %rbx
	movq	(%rdi), %r8
	leaq	1(%rbx), %r9
	cmpq	%rax, %r8
	je	.L1084
	movq	16(%rdi), %r10
	cmpq	%r9, %r10
	jb	.L1085
.L1075:
	movb	%r11b, (%r8,%rbx)
	movq	(%rcx), %rax
	movq	%r9, 8(%rcx)
	movb	$0, 1(%rax,%rbx)
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1085:
	.cfi_restore_state
	movabsq	$9223372036854775807, %rdi
	cmpq	%rdi, %r9
	je	.L1086
	leaq	(%r10,%r10), %rdx
	movq	%rdx, %r14
	cmpq	%rdx, %r9
	jb	.L1087
	leaq	2(%rbx), %rdi
	movq	%r9, %r14
.L1078:
	movl	%r11d, 44(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, 16(%rsp)
	call	_Znwm@PLT
	movq	8(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movq	%rax, %r15
	call	memcpy@PLT
	movq	8(%rsp), %r8
	movq	16(%rsp), %r9
	movq	24(%rsp), %r10
	movq	32(%rsp), %rcx
	movl	44(%rsp), %r11d
.L1079:
	movq	%r8, %rdi
	leaq	1(%r10), %rsi
	movl	%r11d, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r9, 8(%rsp)
	call	_ZdlPvm@PLT
	movl	24(%rsp), %r11d
	movq	16(%rsp), %rcx
	movq	%r15, %r8
	movq	8(%rsp), %r9
.L1080:
	movq	%r8, (%rcx)
	movq	%r14, 16(%rcx)
	jmp	.L1075
	.p2align 4,,10
	.p2align 3
.L1087:
	movabsq	$9223372036854775806, %rax
	cmpq	%rdx, %rax
	jnb	.L1088
	movq	%rax, %r14
	jmp	.L1078
	.p2align 4,,10
	.p2align 3
.L1088:
	leaq	1(%rdx), %rdi
	movq	%rcx, 24(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, 16(%rsp)
	movl	%esi, 32(%rsp)
	call	_Znwm@PLT
	movq	8(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movq	%rax, %r15
	call	memcpy@PLT
	movq	24(%rsp), %rcx
	movq	8(%rsp), %r8
	movq	16(%rsp), %r9
	movl	32(%rsp), %r11d
	movq	16(%rcx), %r10
	jmp	.L1079
	.p2align 4,,10
	.p2align 3
.L1084:
	cmpq	$16, %r9
	jne	.L1075
	movq	%rdi, 24(%rsp)
	movl	$31, %edi
	movl	$30, %r14d
	movq	%r8, 16(%rsp)
	movq	%r9, 8(%rsp)
	movl	%esi, 32(%rsp)
	call	_Znwm@PLT
	movq	16(%rsp), %r8
	movq	8(%rsp), %r9
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r11d
	movq	(%r8), %rdx
	movq	%rdx, (%rax)
	movq	7(%r8), %rdx
	movq	%rax, %r8
	movq	%rdx, 7(%rax)
	jmp	.L1080
.L1086:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6250:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	.section	.text._ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"axG",@progbits,_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	.type	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE, @function
_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE:
.LFB6326:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r10
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %r9
	movq	%r9, 152(%rsp)
	movq	%rsi, %r9
	movq	8(%rsi), %rsi
	movq	$0, 52(%rsp)
	movdqu	(%r9), %xmm0
	movq	%xmm0, %rcx
	cmpq	%rcx, %rsi
	je	.L1198
	movzbl	(%rcx), %eax
	cmpb	$125, %al
	je	.L1198
	cmpb	$123, %al
	je	.L1091
	xorl	%edx, %edx
	movq	%rdi, 16(%rsp)
	leaq	64(%rsp), %rdi
	movq	%xmm0, 8(%rsp)
	punpcklqdq	%xmm0, %xmm0
	movq	%r9, 24(%rsp)
	movw	%dx, 88(%rsp)
	movq	%rsi, 96(%rsp)
	movq	%rsi, (%rsp)
	movb	%al, 32(%rsp)
	movups	%xmm0, 72(%rsp)
	movb	$0, 90(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	96(%rsp), %rdi
	movzbl	88(%rsp), %edx
	movdqa	64(%rsp), %xmm0
	movzbl	89(%rsp), %r11d
	movq	%rdi, 144(%rsp)
	movzbl	%dl, %edi
	movq	80(%rsp), %r8
	movaps	%xmm0, 112(%rsp)
	addl	$1, %edi
	movq	(%rsp), %rsi
	movq	8(%rsp), %rcx
	movdqa	80(%rsp), %xmm0
	cmpl	%r11d, %edi
	movzbl	90(%rsp), %r15d
	movq	16(%rsp), %r10
	movq	24(%rsp), %r9
	movzbl	32(%rsp), %eax
	movaps	%xmm0, 128(%rsp)
	je	.L1281
.L1092:
	movl	112(%rsp,%rdx,4), %ebx
	cmpl	$55295, %ebx
	ja	.L1282
.L1095:
	cmpq	%r8, %rsi
	je	.L1099
	movzbl	(%r8), %edx
	cmpb	$62, %dl
	je	.L1199
	cmpb	$94, %dl
	je	.L1200
	movl	$1, %r11d
	cmpb	$60, %dl
	je	.L1098
.L1099:
	cmpb	$62, %al
	je	.L1101
	cmpb	$94, %al
	je	.L1102
	cmpb	$60, %al
	jne	.L1091
.L1103:
	movl	$1, %r11d
.L1105:
	addq	$1, %rcx
	movl	$32, %ebx
.L1100:
	cmpq	%rcx, %rsi
	jne	.L1104
.L1106:
	movq	52(%rsp), %rax
	andl	$3, %r11d
	andl	$4294934528, %eax
	orq	%rax, %r11
	movq	%r11, 52(%rsp)
	jmp	.L1090
	.p2align 4,,10
	.p2align 3
.L1198:
	movl	$32, %ebx
.L1090:
	movq	52(%rsp), %rax
	movl	%ebx, 8(%r10)
	movq	%rax, (%r10)
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1274
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rcx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1091:
	.cfi_restore_state
	xorl	%r11d, %r11d
	movl	$32, %ebx
.L1104:
	movzbl	(%rcx), %eax
	cmpb	$125, %al
	je	.L1106
.L1193:
	leal	-32(%rax), %edx
	xorl	%r15d, %r15d
	cmpb	$13, %dl
	jbe	.L1283
.L1108:
	xorl	%r12d, %r12d
.L1192:
	cmpb	$48, %al
	je	.L1284
	xorl	%r13d, %r13d
	cmpb	$46, %al
	je	.L1204
.L1111:
	movzbl	%al, %edx
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdi
	cmpb	$9, (%rdi,%rdx)
	jbe	.L1285
	movb	$0, (%rsp)
	xorl	%r14d, %r14d
	cmpb	$123, %al
	je	.L1286
.L1133:
	cmpq	%rcx, %rsi
	je	.L1130
	movzbl	(%rcx), %edx
	cmpb	$125, %dl
	je	.L1130
	cmpb	$46, %dl
	je	.L1118
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
.L1156:
	cmpb	$76, %dl
	je	.L1287
	subl	$65, %edx
	cmpb	$38, %dl
	ja	.L1213
	leaq	.L1180(%rip), %rdi
	movzbl	%dl, %edx
	movslq	(%rdi,%rdx,4), %rdx
	addq	%rdi, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"aG",@progbits,_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,comdat
	.align 4
	.align 4
.L1180:
	.long	.L1214-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1215-.L1180
	.long	.L1216-.L1180
	.long	.L1217-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1218-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1213-.L1180
	.long	.L1219-.L1180
	.long	.L1220-.L1180
	.long	.L1221-.L1180
	.section	.text._ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"axG",@progbits,_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,comdat
	.p2align 4,,10
	.p2align 3
.L1283:
	movzbl	%dl, %edx
	leaq	CSWTCH.759(%rip), %rdi
	movl	(%rdi,%rdx,4), %edx
	testl	%edx, %edx
	jne	.L1109
	cmpb	$35, %al
	jne	.L1288
	xorl	%r15d, %r15d
.L1110:
	leaq	1(%rcx), %rdi
	cmpq	%rdi, %rsi
	jne	.L1289
.L1113:
	movzbl	%r15b, %eax
	orq	$16, %r11
	salq	$2, %rax
	jmp	.L1278
	.p2align 4,,10
	.p2align 3
.L1109:
	movl	%edx, %eax
	leaq	1(%rcx), %rdi
	andl	$3, %eax
	movl	%eax, %r15d
	cmpq	%rdi, %rsi
	jne	.L1290
.L1112:
	andl	$3, %edx
	leaq	0(,%rdx,4), %rax
.L1278:
	movq	52(%rsp), %rdx
	orq	%r11, %rax
	movq	%rdi, %rcx
	andl	$4294934528, %edx
	orq	%rdx, %rax
	movq	%rax, 52(%rsp)
	jmp	.L1090
.L1281:
	cmpq	%r8, %rsi
	je	.L1094
	movzbl	%r15b, %edi
	addq	%r8, %rdi
	cmpq	%rdi, %rsi
	je	.L1094
	movq	%rdi, 80(%rsp)
	leaq	64(%rsp), %rdi
	movq	%r9, 40(%rsp)
	movq	%r10, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movb	%al, 16(%rsp)
	movb	%dl, 8(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	80(%rsp), %r8
	movq	40(%rsp), %r9
	movq	32(%rsp), %r10
	movq	24(%rsp), %rcx
	movzbl	16(%rsp), %eax
	movzbl	8(%rsp), %edx
	movq	(%rsp), %rsi
	jmp	.L1092
.L1200:
	movl	$3, %r11d
.L1098:
	leaq	1(%r8), %rcx
	jmp	.L1100
	.p2align 4,,10
	.p2align 3
.L1102:
	movl	$3, %r11d
	jmp	.L1105
	.p2align 4,,10
	.p2align 3
.L1101:
	movl	$2, %r11d
	jmp	.L1105
.L1284:
	leaq	1(%rcx), %rdx
	cmpq	%rdx, %rsi
	jne	.L1291
.L1116:
	movzbl	%r15b, %eax
	orq	$64, %r11
	movzbl	%r12b, %ecx
	salq	$2, %rax
	salq	$4, %rcx
	orq	%r11, %rax
	orq	%rcx, %rax
	movq	52(%rsp), %rcx
	andl	$4294934528, %ecx
	orq	%rcx, %rax
	movq	%rdx, %rcx
	movq	%rax, 52(%rsp)
	jmp	.L1090
.L1204:
	movb	$0, (%rsp)
	xorl	%r14d, %r14d
.L1118:
	leaq	1(%rcx), %rax
	movq	%rax, 8(%rsp)
	cmpq	%rax, %rsi
	je	.L1170
	movzbl	1(%rcx), %edx
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdi
	cmpb	$9, (%rdi,%rdx)
	ja	.L1159
	movq	8(%rsp), %rcx
	xorl	%ebp, %ebp
	movl	$16, %r9d
	jmp	.L1167
	.p2align 4,,10
	.p2align 3
.L1293:
	leal	0(%rbp,%rbp,4), %eax
	movzbl	%dil, %edi
	leal	(%rdi,%rax,2), %ebp
.L1162:
	addq	$1, %rcx
	cmpq	%rcx, %rsi
	je	.L1292
.L1167:
	movzbl	(%rcx), %eax
	leal	-48(%rax), %edi
	cmpb	$9, %dil
	ja	.L1160
	subl	$4, %r9d
	jns	.L1293
	movl	$10, %edx
	movl	%ebp, %eax
	mulw	%dx
	jo	.L1121
	movzbl	%dil, %edi
	addw	%ax, %di
	jc	.L1121
	movl	%edi, %ebp
	jmp	.L1162
.L1289:
	movzbl	1(%rcx), %eax
	cmpb	$125, %al
	je	.L1113
	movq	%rdi, %rcx
	movl	$1, %r12d
	jmp	.L1192
	.p2align 4,,10
	.p2align 3
.L1291:
	movzbl	1(%rcx), %eax
	cmpb	$125, %al
	je	.L1116
	movq	%rdx, %rcx
	movl	$1, %r13d
	cmpb	$46, %al
	je	.L1204
	cmpb	$48, %al
	jne	.L1111
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1274
	leaq	.LC27(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L1285:
	cmpq	%rcx, %rsi
	je	.L1121
	movq	%rcx, %r8
	xorl	%r14d, %r14d
	movl	$16, %ebp
	jmp	.L1129
	.p2align 4,,10
	.p2align 3
.L1295:
	leal	(%r14,%r14,4), %eax
	movzbl	%dil, %edi
	leal	(%rdi,%rax,2), %r14d
.L1124:
	addq	$1, %r8
	cmpq	%r8, %rsi
	je	.L1294
.L1129:
	movzbl	(%r8), %eax
	leal	-48(%rax), %edi
	cmpb	$9, %dil
	ja	.L1122
	movl	%ebp, %eax
	subl	$4, %eax
	movl	%eax, %ebp
	jns	.L1295
	movl	$10, %edx
	movl	%r14d, %eax
	mulw	%dx
	jo	.L1121
	movzbl	%dil, %edi
	addw	%ax, %di
	jc	.L1121
	movl	%edi, %r14d
	jmp	.L1124
.L1094:
	movl	112(%rsp,%rdx,4), %edx
	cmpl	$55295, %edx
	jbe	.L1099
	subl	$57344, %edx
	cmpl	$1056767, %edx
	jbe	.L1099
.L1096:
	cmpb	$62, %al
	je	.L1101
	cmpb	$94, %al
	je	.L1102
	cmpb	$60, %al
	je	.L1103
	xorl	%r11d, %r11d
	movl	$32, %ebx
	jmp	.L1193
	.p2align 4,,10
	.p2align 3
.L1213:
	xorl	%edi, %edi
	xorl	%r8d, %r8d
.L1178:
	cmpq	%rcx, %rsi
	je	.L1188
.L1189:
	cmpb	$125, (%rcx)
	jne	.L1190
.L1188:
	movzbl	%r15b, %edx
	movzbl	%r12b, %esi
	sall	$9, %r9d
	sall	$2, %edx
	sall	$4, %esi
	orl	%r11d, %edx
	orl	%esi, %edx
	movzbl	%dil, %esi
	movl	%r8d, %edi
	sall	$5, %esi
	sall	$11, %edi
	orl	%esi, %edx
	movzbl	%r13b, %esi
	sall	$6, %esi
	orl	%esi, %edx
	movzbl	(%rsp), %esi
	sall	$7, %esi
	orl	%esi, %edx
	orl	%r9d, %edx
	orl	%edi, %edx
.L1279:
	movzwl	52(%rsp), %esi
	movw	%r14w, 56(%rsp)
	movw	%bp, 58(%rsp)
	andw	$-32768, %si
	orl	%esi, %edx
	movw	%dx, 52(%rsp)
	jmp	.L1090
.L1217:
	xorl	%edi, %edi
.L1184:
	addq	$1, %rcx
	movl	$8, %r8d
	jmp	.L1178
.L1216:
	xorl	%edi, %edi
.L1185:
	addq	$1, %rcx
	movl	$6, %r8d
	jmp	.L1178
.L1215:
	xorl	%edi, %edi
.L1186:
	addq	$1, %rcx
	movl	$4, %r8d
	jmp	.L1178
.L1214:
	xorl	%edi, %edi
.L1187:
	addq	$1, %rcx
	movl	$2, %r8d
	jmp	.L1178
.L1221:
	xorl	%edi, %edi
.L1179:
	addq	$1, %rcx
	movl	$7, %r8d
	jmp	.L1178
.L1220:
	xorl	%edi, %edi
.L1181:
	addq	$1, %rcx
	movl	$5, %r8d
	jmp	.L1178
.L1219:
	xorl	%edi, %edi
.L1182:
	addq	$1, %rcx
	movl	$3, %r8d
	jmp	.L1178
.L1218:
	xorl	%edi, %edi
.L1183:
	addq	$1, %rcx
	movl	$1, %r8d
	jmp	.L1178
.L1199:
	movl	$2, %r11d
	jmp	.L1098
.L1290:
	movzbl	1(%rcx), %eax
	cmpb	$125, %al
	je	.L1112
	movq	%rdi, %rcx
	cmpb	$35, %al
	je	.L1110
	jmp	.L1108
	.p2align 4,,10
	.p2align 3
.L1287:
	leaq	1(%rcx), %rdi
	cmpq	%rdi, %rsi
	jne	.L1296
.L1176:
	movzbl	%r15b, %edx
	orl	$32, %r11d
	movzbl	%r12b, %ecx
	sall	$9, %r9d
	sall	$2, %edx
	sall	$4, %ecx
	movw	%r14w, 56(%rsp)
	orl	%r11d, %edx
	movw	%bp, 58(%rsp)
	orl	%ecx, %edx
	movzbl	%r13b, %ecx
	sall	$6, %ecx
	orl	%ecx, %edx
	movzbl	(%rsp), %ecx
	sall	$7, %ecx
	orl	%ecx, %edx
	movzwl	52(%rsp), %ecx
	orl	%r9d, %edx
	andw	$-32768, %cx
	orl	%ecx, %edx
	movq	%rdi, %rcx
	movw	%dx, 52(%rsp)
	jmp	.L1090
.L1294:
	movb	$1, (%rsp)
	movq	%rsi, %rcx
.L1130:
	movzbl	%r15b, %eax
	movzbl	%r12b, %edx
	movw	%r14w, 56(%rsp)
	sall	$2, %eax
	sall	$4, %edx
	orl	%r11d, %eax
	orl	%edx, %eax
	movzbl	%r13b, %edx
	sall	$6, %edx
	orl	%edx, %eax
	movzbl	(%rsp), %edx
	sall	$7, %edx
	orl	%edx, %eax
	movzwl	52(%rsp), %edx
	andw	$-32768, %dx
	orl	%edx, %eax
	movw	%ax, 52(%rsp)
	xorl	%eax, %eax
	movw	%ax, 58(%rsp)
	jmp	.L1090
.L1282:
	leal	-57344(%rbx), %edx
	cmpl	$1056767, %edx
	ja	.L1096
	jmp	.L1095
.L1159:
	cmpb	$123, %dl
	je	.L1297
.L1170:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1274
	leaq	.LC32(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L1296:
	movzbl	1(%rcx), %edx
	cmpb	$125, %dl
	je	.L1176
	subl	$65, %edx
	cmpb	$38, %dl
	ja	.L1222
	leaq	.L1194(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"aG",@progbits,_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,comdat
	.align 4
	.align 4
.L1194:
	.long	.L1223-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1224-.L1194
	.long	.L1225-.L1194
	.long	.L1226-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1227-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1222-.L1194
	.long	.L1228-.L1194
	.long	.L1229-.L1194
	.long	.L1230-.L1194
	.section	.text._ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,"axG",@progbits,_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE,comdat
	.p2align 4,,10
	.p2align 3
.L1286:
	leaq	1(%rcx), %rax
	movq	%rax, %rbp
	cmpq	%rax, %rsi
	je	.L1171
	movsbw	1(%rcx), %ax
	cmpb	$125, %al
	je	.L1298
	cmpb	$48, %al
	je	.L1299
	leal	-49(%rax), %edx
	cmpb	$8, %dl
	jbe	.L1142
.L1144:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1274
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L1122:
	cmpq	%rcx, %r8
	je	.L1121
	movb	$1, (%rsp)
	movq	%r8, %rcx
	jmp	.L1133
.L1297:
	leaq	2(%rcx), %rdi
	cmpq	%rdi, %rsi
	je	.L1171
	cmpb	$125, 2(%rcx)
	je	.L1300
	movq	%r9, 40(%rsp)
	movq	%r10, 32(%rsp)
	movb	%r11b, 24(%rsp)
	movq	%rsi, 16(%rsp)
	call	_ZNSt8__format14__parse_arg_idIcEESt4pairItPKT_ES4_S4_
	movl	%eax, %ebp
	movq	%rdx, %rdi
	testq	%rdx, %rdx
	je	.L1144
	movq	16(%rsp), %rsi
	cmpq	%rdx, %rsi
	je	.L1144
	cmpb	$125, (%rdx)
	jne	.L1144
	movq	40(%rsp), %r9
	cmpl	$2, 16(%r9)
	je	.L1155
	movl	$1, 16(%r9)
	movq	32(%rsp), %r10
	movzbl	24(%rsp), %r11d
.L1173:
	leaq	1(%rdi), %rcx
	cmpq	%rcx, 8(%rsp)
	je	.L1170
	movl	$2, %r9d
.L1169:
	cmpq	%rcx, %rsi
	je	.L1168
	movzbl	(%rcx), %edx
	cmpb	$125, %dl
	jne	.L1156
.L1168:
	movzbl	%r15b, %edx
	movzbl	%r12b, %esi
	sall	$9, %r9d
	sall	$2, %edx
	sall	$4, %esi
	orl	%r11d, %edx
	orl	%esi, %edx
	movzbl	%r13b, %esi
	sall	$6, %esi
	orl	%esi, %edx
	movzbl	(%rsp), %esi
	sall	$7, %esi
	orl	%esi, %edx
	orl	%r9d, %edx
	jmp	.L1279
.L1298:
	cmpl	$1, 16(%r9)
	je	.L1155
	movq	24(%r9), %rax
	movl	$2, 16(%r9)
	leaq	1(%rax), %rdx
	movl	%eax, %r14d
	movq	%rdx, 24(%r9)
.L1139:
	leaq	1(%rbp), %rax
	xorl	%edi, %edi
	cmpq	%rcx, %rax
	cmovne	%rax, %rcx
	movl	$2, %eax
	cmovne	%eax, %edi
	movb	%dil, (%rsp)
	jmp	.L1133
.L1160:
	cmpq	%rcx, 8(%rsp)
	je	.L1121
	movl	$1, %r9d
	jmp	.L1169
.L1292:
	movl	$1, %r9d
	jmp	.L1168
.L1299:
	leaq	2(%rcx), %rbp
	xorl	%eax, %eax
.L1141:
	cmpq	%rbp, %rsi
	je	.L1144
	testb	%al, %al
	jne	.L1144
.L1195:
	cmpb	$125, 0(%rbp)
	jne	.L1144
	cmpl	$2, 16(%r9)
	je	.L1155
	movl	$1, 16(%r9)
	jmp	.L1139
.L1142:
	leaq	2(%rcx), %rdi
	cmpq	%rdi, %rsi
	je	.L1144
	movzbl	2(%rcx), %edx
	subl	$48, %edx
	cmpb	$9, %dl
	ja	.L1145
	movl	$16, (%rsp)
	movq	%rbp, %r8
	jmp	.L1154
.L1301:
	leal	(%r14,%r14,4), %eax
	movzbl	%dil, %edi
	leal	(%rdi,%rax,2), %r14d
.L1148:
	addq	$1, %r8
	cmpq	%r8, %rsi
	je	.L1151
.L1154:
	movzbl	(%r8), %eax
	leal	-48(%rax), %edi
	cmpb	$9, %dil
	ja	.L1146
	subl	$4, (%rsp)
	jns	.L1301
	movl	$10, %edx
	movl	%r14d, %eax
	mulw	%dx
	jo	.L1277
	movzbl	%dil, %edi
	addw	%ax, %di
	jc	.L1277
	movl	%edi, %r14d
	jmp	.L1148
.L1300:
	cmpl	$1, 16(%r9)
	je	.L1155
	movq	24(%r9), %rax
	movl	$2, 16(%r9)
	leaq	1(%rax), %rdx
	movl	%eax, %ebp
	movq	%rdx, 24(%r9)
	jmp	.L1173
.L1145:
	leal	-48(%rax), %r14d
	movq	%rdi, %rbp
	jmp	.L1195
.L1146:
	cmpq	%r8, %rbp
	jne	.L1151
.L1277:
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
.L1151:
	testq	%r8, %r8
	movq	%r8, %rbp
	sete	%al
	jmp	.L1141
.L1121:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	je	.L1132
.L1274:
	call	__stack_chk_fail@PLT
.L1288:
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.L1111
.L1230:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1179
.L1229:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1181
.L1228:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1182
.L1227:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1183
.L1226:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1184
.L1225:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1185
.L1224:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1186
.L1223:
	movq	%rdi, %rcx
	movl	$1, %edi
	jmp	.L1187
.L1222:
	movq	%rdi, %rcx
	xorl	%r8d, %r8d
	movl	$1, %edi
	jmp	.L1189
.L1190:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1274
	call	_ZNSt8__format29__failed_to_parse_format_specEv
.L1155:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1274
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L1171:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1274
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L1132:
	leaq	.LC28(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6326:
	.size	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE, .-_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	.section	.text._ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE,"axG",@progbits,_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	.type	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE, @function
_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE:
.LFB6458:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	24(%rdi), %rdi
	movq	16(%rbp), %rbx
	movq	%rdi, %rax
	subq	8(%rbp), %rax
	subq	%rax, %rbx
	cmpq	%rbx, %rsi
	jnb	.L1306
	jmp	.L1303
	.p2align 4,,10
	.p2align 3
.L1313:
	movq	%r13, %rsi
	movq	%rbx, %rdx
	addq	%rbx, %r13
	subq	%rbx, %r12
	call	memcpy@PLT
	addq	%rbx, 24(%rbp)
.L1312:
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*(%rax)
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rbx
	movq	%rdi, %rax
	subq	8(%rbp), %rax
	subq	%rax, %rbx
	cmpq	%rbx, %r12
	jb	.L1303
.L1306:
	testq	%rbx, %rbx
	jne	.L1313
	movq	%rdi, 24(%rbp)
	jmp	.L1312
	.p2align 4,,10
	.p2align 3
.L1303:
	testq	%r12, %r12
	jne	.L1314
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1314:
	.cfi_restore_state
	movq	%r12, %rdx
	movq	%r13, %rsi
	call	memcpy@PLT
	addq	%r12, 24(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6458:
	.size	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE, .-_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	.section	.text._ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi,"axG",@progbits,_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi,comdat
	.p2align 4
	.weak	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
	.type	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi, @function
_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi:
.LFB6345:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6345
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%fs:40, %rbp
	movq	%rbp, 152(%rsp)
	movq	%r8, %rbp
	movb	$0, 112(%rsp)
	cmpl	$3, %ecx
	je	.L1461
	cmpl	$2, %ecx
	je	.L1387
	cmpl	$126, %r9d
	ja	.L1388
	cmpq	$31, %rbp
	ja	.L1462
	testq	%rbp, %rbp
	je	.L1323
	leaq	112(%rsp), %rax
	movq	%rbp, %rdx
	movl	%r9d, %esi
	movq	%rax, %rdi
	movq	%rax, 8(%rsp)
	call	memset@PLT
	cmpq	$0, 16(%rsp)
	jne	.L1463
.L1325:
	movq	8(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB2:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	.p2align 4
	.p2align 3
.L1350:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1454
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1387:
	.cfi_restore_state
	movq	%rbp, (%rsp)
	xorl	%r14d, %r14d
.L1317:
	cmpl	$126, %r9d
	ja	.L1318
	cmpq	$31, %rbp
	ja	.L1393
	testq	%rbp, %rbp
	jne	.L1351
	cmpq	$0, (%rsp)
	je	.L1464
.L1404:
.L1365:
	jmp	.L1365
	.p2align 4,,10
	.p2align 3
.L1393:
	movl	$32, %ebp
.L1351:
	leaq	112(%rsp), %rax
	movl	%ebp, %edx
	movq	%rax, 8(%rsp)
	cmpl	$8, %ebp
	jnb	.L1465
.L1357:
	andl	$7, %edx
	je	.L1361
	xorl	%ecx, %ecx
.L1360:
	movl	%ecx, %esi
	addl	$1, %ecx
	movb	%r9b, (%rax,%rsi)
	cmpl	%edx, %ecx
	jb	.L1360
.L1361:
	movq	(%rsp), %rax
	testq	%rax, %rax
	je	.L1363
	cmpq	%rax, %rbp
	jnb	.L1364
	testq	%rbp, %rbp
	je	.L1404
	.p2align 4
	.p2align 3
.L1372:
	movq	24(%r15), %rdi
	movq	16(%r15), %r13
	movq	%rbp, %rbx
	movq	8(%rsp), %r12
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %r13
	cmpq	%r13, %rbp
	jnb	.L1370
	jmp	.L1366
	.p2align 4,,10
	.p2align 3
.L1467:
	movq	%r12, %rsi
	movq	%r13, %rdx
	addq	%r13, %r12
	subq	%r13, %rbx
	call	memcpy@PLT
	addq	%r13, 24(%r15)
.L1457:
	movq	(%r15), %rax
	movq	%r15, %rdi
	call	*(%rax)
	movq	24(%r15), %rdi
	movq	16(%r15), %r13
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %r13
	cmpq	%r13, %rbx
	jb	.L1466
.L1370:
	testq	%r13, %r13
	jne	.L1467
	movq	%rdi, 24(%r15)
	jmp	.L1457
	.p2align 4,,10
	.p2align 3
.L1461:
	movq	%rbp, %rax
	andl	$1, %ebp
	shrq	%rax
	addq	%rax, %rbp
	movq	%rax, (%rsp)
	movq	%rbp, %r14
	jmp	.L1317
	.p2align 4,,10
	.p2align 3
.L1462:
	movd	%r9d, %xmm0
	punpcklbw	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 128(%rsp)
	cmpq	$0, 16(%rsp)
	jne	.L1320
.L1322:
	leaq	112(%rsp), %rax
	movq	%rbp, %r14
	movl	$32, %ebp
	movq	%rax, 8(%rsp)
	.p2align 4
	.p2align 3
.L1321:
	cmpq	%r14, %rbp
	jnb	.L1395
	testq	%rbp, %rbp
	jne	.L1382
.L1375:
	jmp	.L1375
	.p2align 4,,10
	.p2align 3
.L1382:
	movq	24(%r15), %rdi
	movq	16(%r15), %r13
	movq	%rbp, %rbx
	movq	8(%rsp), %r12
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %r13
	cmpq	%r13, %rbp
	jnb	.L1380
	jmp	.L1376
	.p2align 4,,10
	.p2align 3
.L1469:
	movq	%r12, %rsi
	movq	%r13, %rdx
	addq	%r13, %r12
	subq	%r13, %rbx
	call	memcpy@PLT
	addq	%r13, 24(%r15)
.L1458:
	movq	(%r15), %rax
	movq	%r15, %rdi
	call	*(%rax)
	movq	24(%r15), %rdi
	movq	16(%r15), %r13
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %r13
	cmpq	%r13, %rbx
	jb	.L1468
.L1380:
	testq	%r13, %r13
	jne	.L1469
	movq	%rdi, 24(%r15)
	jmp	.L1458
	.p2align 4,,10
	.p2align 3
.L1468:
	testq	%rbx, %rbx
	jne	.L1376
.L1381:
	subq	%rbp, %r14
	cmpq	%r14, %rbp
	jb	.L1382
	testq	%r14, %r14
	je	.L1350
.L1395:
	movq	%r14, %rbp
	jmp	.L1325
	.p2align 4,,10
	.p2align 3
.L1466:
	testq	%rbx, %rbx
	jne	.L1366
.L1371:
	subq	%rbp, (%rsp)
	movq	(%rsp), %rax
	cmpq	%rax, %rbp
	jb	.L1372
	testq	%rax, %rax
	jne	.L1364
.L1363:
	cmpq	$0, 16(%rsp)
	jne	.L1470
.L1374:
	testq	%r14, %r14
	jne	.L1321
	jmp	.L1350
	.p2align 4,,10
	.p2align 3
.L1366:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	addq	%rbx, 24(%r15)
	jmp	.L1371
	.p2align 4,,10
	.p2align 3
.L1376:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	addq	%rbx, 24(%r15)
	jmp	.L1381
	.p2align 4,,10
	.p2align 3
.L1470:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L1374
	.p2align 4,,10
	.p2align 3
.L1465:
	movabsq	$72340172838076673, %rax
	movzbl	%r9b, %ecx
	movl	%ebp, %esi
	imulq	%rax, %rcx
	andl	$-8, %esi
	xorl	%eax, %eax
.L1358:
	movq	8(%rsp), %rbx
	movl	%eax, %edi
	addl	$8, %eax
	movq	%rcx, (%rbx,%rdi)
	cmpl	%esi, %eax
	jb	.L1358
	addq	%rbx, %rax
	jmp	.L1357
.L1388:
	movq	$0, (%rsp)
	movq	%rbp, %r14
.L1318:
	cmpl	$55295, %r9d
	ja	.L1330
	bsrl	%r9d, %eax
	movl	%eax, %edx
	xorl	$31, %edx
	cmpl	$6, %eax
	jne	.L1471
	movl	%r9d, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
.L1335:
	movzbl	%al, %eax
	movzbl	%dil, %edi
	movzbl	%sil, %esi
	movb	%dl, 48(%rsp)
	sall	$8, %eax
	leaq	48(%rsp), %r12
	orl	%edi, %eax
	movq	%r12, 32(%rsp)
	sall	$8, %eax
	orl	%esi, %eax
	movzbl	%dl, %esi
	sall	$8, %eax
	orl	%esi, %eax
	movl	%eax, 64(%rsp)
	movl	$1, %eax
	cmpb	$1, %cl
	je	.L1336
	movzbl	65(%rsp), %eax
	movb	%al, 49(%rsp)
	movl	$2, %eax
	cmpb	$2, %cl
	je	.L1336
	movzbl	66(%rsp), %eax
	movb	%al, 50(%rsp)
	movl	$3, %eax
	cmpb	$3, %cl
	je	.L1336
	movzbl	67(%rsp), %eax
	movb	%al, 51(%rsp)
	movl	$4, %eax
.L1336:
	movq	%rax, 40(%rsp)
	movb	$0, 48(%rsp,%rax)
	movq	40(%rsp), %rbp
	movq	32(%rsp), %rbx
	cmpq	$0, (%rsp)
	je	.L1472
	testq	%rbp, %rbp
	jne	.L1343
	cmpq	$0, 16(%rsp)
	jne	.L1339
.L1340:
	cmpq	%r12, %rbx
	je	.L1350
	movq	48(%rsp), %rax
	movq	%rbx, %rdi
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1350
.L1323:
	cmpq	$0, 16(%rsp)
	je	.L1350
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rax, %rsi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L1350
.L1364:
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L1363
.L1320:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rax, %rsi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE2:
	jmp	.L1322
.L1343:
	movq	(%rsp), %r13
	subq	$1, %r13
	.p2align 4
	.p2align 3
.L1344:
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r15, %rdi
.LEHB3:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	subq	$1, %r13
	jnb	.L1344
	cmpq	$0, 16(%rsp)
	jne	.L1339
	testq	%r14, %r14
	je	.L1456
.L1453:
	subq	$1, %r14
	.p2align 4
	.p2align 3
.L1349:
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r15, %rdi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE3:
	subq	$1, %r14
	jnb	.L1349
.L1456:
	movq	32(%rsp), %rbx
	jmp	.L1340
.L1464:
	cmpq	$0, 16(%rsp)
	jne	.L1473
	testq	%r14, %r14
	je	.L1350
	jmp	.L1375
	.p2align 4,,10
	.p2align 3
.L1463:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rax, %rsi
.LEHB4:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE4:
	jmp	.L1325
.L1472:
	cmpq	$0, 16(%rsp)
	je	.L1342
.L1339:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rax, %rsi
.LEHB5:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE5:
.L1342:
	testq	%r14, %r14
	je	.L1456
	testq	%rbp, %rbp
	je	.L1456
	jmp	.L1453
.L1330:
	leal	-57344(%r9), %eax
	cmpl	$1056767, %eax
	ja	.L1389
	bsrl	%r9d, %eax
	cmpl	$15, %eax
	je	.L1333
	movl	%r9d, %edi
	movl	%r9d, %esi
	movl	%r9d, %eax
	movl	%r9d, %edx
	shrl	$6, %edi
	shrl	$12, %esi
	andl	$63, %eax
	movl	$4, %ecx
	andl	$63, %edi
	shrl	$18, %edx
	andl	$63, %esi
	orl	$-128, %eax
	orl	$-128, %edi
	orl	$-16, %edx
	orl	$-128, %esi
	jmp	.L1335
.L1473:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rax, %rsi
.LEHB6:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	testq	%r14, %r14
	je	.L1350
	jmp	.L1375
.L1389:
	movl	$65533, %r9d
.L1333:
	movl	%r9d, %esi
	movl	%r9d, %edx
	movl	%r9d, %edi
	movl	$3, %ecx
	shrl	$6, %esi
	shrl	$12, %edx
	andl	$63, %edi
	xorl	%eax, %eax
	andl	$63, %esi
	orl	$-32, %edx
	orl	$-128, %edi
	orl	$-128, %esi
	jmp	.L1335
.L1471:
	cmpl	$20, %edx
	jle	.L1333
	movl	%r9d, %esi
	shrl	$6, %r9d
	movl	$2, %ecx
	xorl	%eax, %eax
	andl	$63, %esi
	movl	%r9d, %edx
	xorl	%edi, %edi
	orl	$-128, %esi
	orl	$-64, %edx
	jmp	.L1335
.L1383:
	movq	32(%rsp), %rdi
	cmpq	%r12, %rdi
	jne	.L1474
.L1384:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	je	.L1385
.L1454:
	call	__stack_chk_fail@PLT
.L1397:
	endbr64
	movq	%rax, %rbx
	jmp	.L1383
.L1474:
	movq	48(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L1384
.L1385:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE6345:
	.section	.gcc_except_table._ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi,"aG",@progbits,_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi,comdat
.LLSDA6345:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6345-.LLSDACSB6345
.LLSDACSB6345:
	.uleb128 .LEHB2-.LFB6345
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB6345
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L1397-.LFB6345
	.uleb128 0
	.uleb128 .LEHB4-.LFB6345
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB6345
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L1397-.LFB6345
	.uleb128 0
	.uleb128 .LEHB6-.LFB6345
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE6345:
	.section	.text._ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi,"axG",@progbits,_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi,comdat
	.size	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi, .-_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
	.section	.text._ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE,"axG",@progbits,_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE,comdat
	.p2align 4
	.weak	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	.type	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE, @function
_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE:
.LFB6360:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	movzwl	(%r8), %eax
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L1499
	cmpw	$256, %ax
	je	.L1478
.L1481:
	movq	16(%rcx), %rbx
	testq	%r12, %r12
	jne	.L1500
.L1492:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1499:
	.cfi_restore_state
	movzwl	4(%r8), %eax
.L1477:
	cmpq	%rax, %rdx
	jnb	.L1481
	movzbl	(%r8), %edi
	movl	%edi, %esi
	andl	$3, %esi
	andl	$3, %edi
	movq	16(%rcx), %rdi
	cmove	%r9d, %esi
	movl	8(%r8), %r9d
	subq	%rdx, %rax
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	movq	%r13, %rdx
	popq	%rbp
	.cfi_def_cfa_offset 24
	movl	%esi, %ecx
	movq	%rax, %r8
	movq	%r12, %rsi
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
	.p2align 4,,10
	.p2align 3
.L1500:
	.cfi_restore_state
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	%rbp, %r12
	jnb	.L1487
	jmp	.L1483
	.p2align 4,,10
	.p2align 3
.L1502:
	movq	%r13, %rsi
	movq	%rbp, %rdx
	addq	%rbp, %r13
	subq	%rbp, %r12
	call	memcpy@PLT
	addq	%rbp, 24(%rbx)
.L1498:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	call	*(%rax)
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	%rbp, %r12
	jb	.L1501
.L1487:
	testq	%rbp, %rbp
	jne	.L1502
	movq	%rdi, 24(%rbx)
	jmp	.L1498
	.p2align 4,,10
	.p2align 3
.L1501:
	testq	%r12, %r12
	je	.L1492
.L1483:
	movq	%r12, %rdx
	movq	%r13, %rsi
	call	memcpy@PLT
	addq	%r12, 24(%rbx)
	jmp	.L1492
	.p2align 4,,10
	.p2align 3
.L1478:
	movzwl	4(%r8), %edi
	movq	%rcx, %rsi
	movl	%r9d, 28(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rcx, (%rsp)
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movl	28(%rsp), %r9d
	movq	16(%rsp), %rdx
	movq	8(%rsp), %r8
	movq	(%rsp), %rcx
	jmp	.L1477
	.cfi_endproc
.LFE6360:
	.size	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE, .-_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	.text
	.p2align 4
	.type	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0, @function
_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0:
.LFB6893:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movzwl	(%rcx), %eax
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L1527
	cmpw	$256, %ax
	je	.L1506
.L1509:
	movq	16(%rdx), %rbp
	movl	$1, %r12d
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rbx
	movq	%rdi, %rax
	subq	8(%rbp), %rax
	subq	%rax, %rbx
	cmpq	$1, %rbx
	jbe	.L1507
	jmp	.L1508
	.p2align 4,,10
	.p2align 3
.L1529:
	movq	%r13, %rsi
	movq	%rbx, %rdx
	addq	%rbx, %r13
	subq	%rbx, %r12
	call	memcpy@PLT
	addq	%rbx, 24(%rbp)
.L1526:
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*(%rax)
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rbx
	movq	%rdi, %rax
	subq	8(%rbp), %rax
	subq	%rax, %rbx
	cmpq	%rbx, %r12
	jb	.L1528
.L1507:
	testq	%rbx, %rbx
	jne	.L1529
	movq	%rdi, 24(%rbp)
	jmp	.L1526
	.p2align 4,,10
	.p2align 3
.L1528:
	testq	%r12, %r12
	jne	.L1508
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1527:
	.cfi_restore_state
	movzwl	4(%rcx), %eax
.L1505:
	cmpq	$1, %rax
	jbe	.L1509
	movzbl	(%rcx), %edi
	movl	8(%rcx), %r9d
	leaq	-1(%rax), %r8
	movl	%edi, %esi
	andl	$3, %esi
	andl	$3, %edi
	movl	$1, %edi
	cmove	%edi, %esi
	movq	16(%rdx), %rdi
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rdx
	movl	%esi, %ecx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
	.p2align 4,,10
	.p2align 3
.L1508:
	.cfi_restore_state
	movq	%r12, %rdx
	movq	%r13, %rsi
	call	memcpy@PLT
	addq	%r12, 24(%rbp)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1506:
	.cfi_restore_state
	movzwl	4(%rcx), %edi
	movq	%rdx, %rsi
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	jmp	.L1505
	.cfi_endproc
.LFE6893:
	.size	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0, .-_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	.section	.rodata._ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE.str1.1,"aMS",@progbits,1
.LC33:
	.base64	"77+9AA=="
.LC34:
	.base64	"CVx0ClxuDVxyXFxcIlwiJ1wnXHVceAA="
	.section	.text._ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,"axG",@progbits,_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,comdat
	.p2align 4
	.weak	_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	.type	_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE, @function
_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE:
.LFB6624:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %xmm0
	leaq	(%rdx,%rsi), %r15
	xorl	%eax, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	punpcklqdq	%xmm0, %xmm0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rbp
	movq	%rbp, 136(%rsp)
	movq	%rdi, %rbp
	movw	%ax, 72(%rsp)
	movb	$0, 74(%rsp)
	movq	%r15, 80(%rsp)
	movups	%xmm0, 56(%rsp)
	cmpq	%rdx, %r15
	je	.L1575
	leaq	48(%rsp), %rdi
	movl	%ecx, %ebx
	movq	%rdi, 40(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	64(%rsp), %r14
	cmpb	$0, 72(%rsp)
	movq	%r15, %r11
	sete	%dl
	cmpq	%r14, %r15
	sete	%al
	testb	%al, %dl
	jne	.L1575
	cmpb	$15, %bl
	sete	14(%rsp)
	cmpb	$12, %bl
	sete	15(%rsp)
	.p2align 4
	.p2align 3
.L1534:
	movdqa	48(%rsp), %xmm0
	movq	80(%rsp), %r9
	movaps	%xmm0, 96(%rsp)
	movdqa	64(%rsp), %xmm0
	movq	%r9, 128(%rsp)
	movq	%xmm0, %rbx
	movaps	%xmm0, 112(%rsp)
	movzbl	120(%rsp), %r12d
	cmpq	%rbx, %r11
	sete	%cl
	testb	%r12b, %r12b
	sete	%al
	andb	%al, %cl
	jne	.L1535
	movzbl	%r12b, %eax
	movl	$1, %esi
	movl	96(%rsp,%rax,4), %edi
	cmpl	$127, %edi
	ja	.L1536
	.p2align 4
	.p2align 3
.L1660:
	movzbl	(%rbx), %eax
	cmpb	$34, %al
	je	.L1600
	jle	.L1656
	movzbl	14(%rsp), %r13d
	cmpb	$39, %al
	jne	.L1657
.L1537:
	testb	%r13b, %r13b
	jne	.L1540
.L1542:
	movzbl	%r12b, %eax
	movzbl	121(%rsp), %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	je	.L1658
	jge	.L1659
	addl	$1, %r12d
	movq	112(%rsp), %rbx
	movb	%r12b, 120(%rsp)
.L1561:
	xorl	%esi, %esi
.L1666:
	movzbl	%r12b, %eax
	movl	96(%rsp,%rax,4), %edi
	cmpl	$127, %edi
	jbe	.L1660
.L1536:
	leal	2(%rdi,%rdi), %r10d
	movl	$1473, %eax
	leaq	_ZNSt9__unicode9__v16_0_014__escape_edgesE(%rip), %r8
	.p2align 4
	.p2align 3
.L1544:
	testq	%rax, %rax
	jle	.L1661
.L1545:
	movq	%rax, %rdx
	sarq	%rdx
	cmpl	%r10d, (%r8,%rdx,4)
	jnb	.L1605
	subq	%rdx, %rax
	leaq	4(%r8,%rdx,4), %r8
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L1545
.L1661:
	movl	-4(%r8), %r13d
	andl	$1, %r13d
	jne	.L1606
	testb	%sil, %sil
	je	.L1546
	movl	%edi, %r10d
	movl	$1717, %eax
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %r8
	sall	$4, %r10d
	orl	$15, %r10d
	.p2align 4
	.p2align 3
.L1548:
	testq	%rax, %rax
	jle	.L1662
.L1549:
	movq	%rax, %rdx
	sarq	%rdx
	cmpl	%r10d, (%r8,%rdx,4)
	jnb	.L1607
	subq	%rdx, %rax
	leaq	4(%r8,%rdx,4), %r8
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L1549
.L1662:
	movl	-4(%r8), %eax
	andl	$15, %eax
	cmpl	$4, %eax
	jne	.L1546
	movl	%esi, %ecx
	.p2align 4
	.p2align 3
.L1540:
	cmpq	%rbx, %r14
	jne	.L1598
.L1552:
	cmpq	%rbx, %r11
	jne	.L1625
	testb	%r12b, %r12b
	je	.L1575
.L1625:
	movdqa	96(%rsp), %xmm0
	movq	128(%rsp), %rax
	movaps	%xmm0, 48(%rsp)
	movdqa	112(%rsp), %xmm0
	movq	%rax, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	testb	%r13b, %r13b
	jne	.L1663
	testb	%cl, %cl
	je	.L1588
	movzbl	%r12b, %r12d
	movq	%r11, 16(%rsp)
	movl	48(%rsp,%r12,4), %esi
.L1654:
	movq	%rbp, %rdi
	movl	$2, %edx
	leaq	18+.LC34(%rip), %rcx
	call	_ZNSt8__format18__write_escape_seqINS_10_Sink_iterIcEEcEET_S3_jSt17basic_string_viewIT0_St11char_traitsIS5_EE.constprop.0
	movq	16(%rsp), %r11
	movq	%rax, %rbp
.L1587:
	movzbl	72(%rsp), %eax
	movzbl	73(%rsp), %ecx
	movq	64(%rsp), %r14
	movl	%eax, %edx
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	.L1664
	jge	.L1655
	addl	$1, %edx
	movb	%dl, 72(%rsp)
	jmp	.L1534
	.p2align 4,,10
	.p2align 3
.L1605:
	movq	%rdx, %rax
	jmp	.L1544
	.p2align 4,,10
	.p2align 3
.L1607:
	movq	%rdx, %rax
	jmp	.L1548
	.p2align 4,,10
	.p2align 3
.L1658:
	cmpq	%rbx, %r9
	je	.L1556
	movzbl	122(%rsp), %eax
	addq	%rax, %rbx
	movq	%rbx, 112(%rsp)
	cmpq	%r9, %rbx
	je	.L1665
	movsbl	(%rbx), %eax
	testb	%al, %al
	js	.L1562
	movl	$1, %edx
.L1563:
	movl	%eax, 96(%rsp)
	movzwl	.LC31(%rip), %eax
	movb	%dl, 122(%rsp)
	movw	%ax, 120(%rsp)
.L1568:
	cmpq	%rbx, %r11
	je	.L1535
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	jmp	.L1666
	.p2align 4,,10
	.p2align 3
.L1659:
	movzbl	120(%rsp), %r12d
	movq	112(%rsp), %rbx
	testb	%r12b, %r12b
	sete	%al
	cmpq	%rbx, %r11
	sete	%dl
	andl	%edx, %eax
.L1560:
	testb	%al, %al
	je	.L1561
.L1535:
	cmpq	%rbx, %r14
	je	.L1575
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
.L1598:
	movq	24(%rbp), %rdi
	movq	16(%rbp), %rdx
	movq	%rbx, %r15
	subq	%r14, %r15
	movq	%rdi, %rax
	subq	8(%rbp), %rax
	subq	%rax, %rdx
	cmpq	%rdx, %r15
	jb	.L1554
	movb	%cl, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%rbp, %rbx
	movq	%rdx, %rbp
.L1553:
	testq	%rbp, %rbp
	je	.L1569
	movq	%rbp, %rdx
	movq	%r14, %rsi
	call	memcpy@PLT
	movq	24(%rbx), %rdi
.L1569:
	movq	(%rbx), %rax
	addq	%rbp, %rdi
	addq	%rbp, %r14
	subq	%rbp, %r15
	movq	%rdi, 24(%rbx)
	movq	%rbx, %rdi
	call	*(%rax)
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rbp
	movq	%rdi, %rax
	subq	8(%rbx), %rax
	subq	%rax, %rbp
	cmpq	%rbp, %r15
	jnb	.L1553
	movq	%rbx, %rbp
	movzbl	16(%rsp), %ecx
	movq	24(%rsp), %r11
	movq	32(%rsp), %rbx
	testq	%r15, %r15
	je	.L1552
.L1554:
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r11, 24(%rsp)
	movb	%cl, 16(%rsp)
	call	memcpy@PLT
	addq	%r15, 24(%rbp)
	movq	24(%rsp), %r11
	movzbl	16(%rsp), %ecx
	jmp	.L1552
	.p2align 4,,10
	.p2align 3
.L1656:
	cmpb	$10, %al
	jg	.L1539
	cmpb	$8, %al
	jle	.L1541
.L1604:
	movl	$1, %r13d
	jmp	.L1540
	.p2align 4,,10
	.p2align 3
.L1600:
	movzbl	15(%rsp), %r13d
	jmp	.L1537
	.p2align 4,,10
	.p2align 3
.L1657:
	cmpb	$92, %al
	je	.L1604
.L1541:
	cmpb	$31, %al
	setbe	%r13b
	cmpb	$127, %al
	sete	%al
	orb	%al, %r13b
	je	.L1542
	jmp	.L1540
	.p2align 4,,10
	.p2align 3
.L1546:
	cmpl	$65533, %edi
	jne	.L1542
	cmpb	$3, 122(%rsp)
	je	.L1667
.L1609:
	xorl	%ecx, %ecx
	jmp	.L1540
.L1667:
	cmpw	$-16401, (%rbx)
	jne	.L1609
	cmpb	$-67, 2(%rbx)
	je	.L1542
	xorl	%ecx, %ecx
	jmp	.L1540
	.p2align 4,,10
	.p2align 3
.L1606:
	movl	%r13d, %ecx
	xorl	%r13d, %r13d
	jmp	.L1540
	.p2align 4,,10
	.p2align 3
.L1665:
	movb	$0, 120(%rsp)
	jmp	.L1568
	.p2align 4,,10
	.p2align 3
.L1539:
	cmpb	$13, %al
	je	.L1604
	cmpb	$31, %al
	setbe	%r13b
	cmpb	$127, %al
	sete	%al
	orb	%al, %r13b
	je	.L1542
	jmp	.L1540
	.p2align 4,,10
	.p2align 3
.L1556:
	movzbl	120(%rsp), %r12d
	movq	112(%rsp), %rbx
	testb	%r12b, %r12b
	sete	%al
	cmpq	%r11, %rbx
	sete	%dl
	andl	%edx, %eax
	jmp	.L1560
	.p2align 4,,10
	.p2align 3
.L1655:
	testb	%dl, %dl
	sete	%al
	cmpq	%r14, %r11
	sete	%dl
	andl	%edx, %eax
.L1592:
	testb	%al, %al
	je	.L1534
.L1575:
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1668
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1664:
	.cfi_restore_state
	movq	80(%rsp), %rax
	cmpq	%r14, %rax
	je	.L1655
	movzbl	74(%rsp), %edx
	addq	%rdx, %r14
	movq	%r14, 64(%rsp)
	cmpq	%rax, %r14
	je	.L1669
	movq	40(%rsp), %rdi
	movq	%r11, 16(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	64(%rsp), %r14
	movq	16(%rsp), %r11
	cmpb	$0, 72(%rsp)
	sete	%al
	cmpq	%r14, %r11
	sete	%dl
	andl	%edx, %eax
	jmp	.L1592
	.p2align 4,,10
	.p2align 3
.L1663:
	movzbl	(%rbx), %eax
	cmpb	$39, %al
	jg	.L1576
	cmpb	$8, %al
	jle	.L1577
	leal	-9(%rax), %edx
	cmpb	$30, %dl
	ja	.L1577
	leaq	.L1579(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,"aG",@progbits,_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,comdat
	.align 4
	.align 4
.L1579:
	.long	.L1583-.L1579
	.long	.L1582-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1581-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1580-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1577-.L1579
	.long	.L1578-.L1579
	.section	.text._ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,"axG",@progbits,_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,comdat
	.p2align 4,,10
	.p2align 3
.L1588:
	movzbl	74(%rsp), %r12d
	addq	%rbx, %r12
	cmpq	%rbx, %r12
	je	.L1587
	movq	%rbp, %rdi
	movq	%r11, %rbp
	.p2align 4
	.p2align 3
.L1589:
	movzbl	(%rbx), %esi
	movl	$2, %edx
	leaq	20+.LC34(%rip), %rcx
	addq	$1, %rbx
	call	_ZNSt8__format18__write_escape_seqINS_10_Sink_iterIcEEcEET_S3_jSt17basic_string_viewIT0_St11char_traitsIS5_EE.constprop.0
	movq	%rax, %rdi
	cmpq	%rbx, %r12
	jne	.L1589
	movq	%rbp, %r11
	movq	%rax, %rbp
	jmp	.L1587
.L1669:
	cmpq	%r14, %r11
	movb	$0, 72(%rsp)
	sete	%al
	jmp	.L1592
.L1562:
	leaq	1(%rbx), %rdx
	cmpq	%r9, %rdx
	je	.L1620
	cmpb	$-63, %al
	jbe	.L1620
	cmpb	$-33, %al
	ja	.L1564
	movzbl	1(%rbx), %edx
	leal	-128(%rdx), %esi
	cmpb	$63, %sil
	ja	.L1620
	andl	$31, %eax
	andl	$63, %edx
	sall	$6, %eax
	orl	%edx, %eax
	movl	$2, %edx
	jmp	.L1563
.L1576:
	cmpb	$92, %al
	jne	.L1577
	movl	$2, %esi
	leaq	10+.LC34(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r11, 16(%rsp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	movq	16(%rsp), %r11
	jmp	.L1587
	.p2align 4,,10
	.p2align 3
.L1577:
	movq	%r11, 16(%rsp)
	movzbl	%al, %esi
	jmp	.L1654
.L1564:
	cmpb	$-17, %al
	ja	.L1565
	cmpb	$-32, %al
	je	.L1612
	cmpb	$-19, %al
	movl	$-65, %esi
	movl	$-97, %edx
	movl	$-128, %edi
	cmove	%edx, %esi
.L1566:
	movzbl	1(%rbx), %edx
	cmpb	%dil, %dl
	jb	.L1620
	cmpb	%dl, %sil
	jb	.L1620
	leaq	2(%rbx), %rsi
	cmpq	%rsi, %r9
	je	.L1622
	movzbl	2(%rbx), %esi
	leal	-128(%rsi), %edi
	cmpb	$63, %dil
	ja	.L1622
	andl	$15, %eax
	andl	$63, %esi
	sall	$6, %eax
	movl	%eax, %edi
	movl	%edx, %eax
	movl	$3, %edx
	andl	$63, %eax
	orl	%edi, %eax
	sall	$6, %eax
	orl	%esi, %eax
	jmp	.L1563
.L1578:
	movl	$2, %esi
	leaq	16+.LC34(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r11, 16(%rsp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	movq	16(%rsp), %r11
	jmp	.L1587
.L1581:
	movl	$2, %esi
	leaq	7+.LC34(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r11, 16(%rsp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	movq	16(%rsp), %r11
	jmp	.L1587
.L1580:
	movl	$2, %esi
	leaq	13+.LC34(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r11, 16(%rsp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	movq	16(%rsp), %r11
	jmp	.L1587
.L1583:
	movl	$2, %esi
	leaq	1+.LC34(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r11, 16(%rsp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	movq	16(%rsp), %r11
	jmp	.L1587
.L1582:
	movl	$2, %esi
	leaq	4+.LC34(%rip), %rdx
	movq	%rbp, %rdi
	movq	%r11, 16(%rsp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	movq	16(%rsp), %r11
	jmp	.L1587
.L1620:
	movl	$1, %edx
	movl	$65533, %eax
	jmp	.L1563
.L1565:
	cmpb	$-12, %al
	ja	.L1620
	cmpb	$-16, %al
	je	.L1618
	cmpb	$-12, %al
	movl	$-65, %esi
	movl	$-113, %edx
	movl	$-128, %edi
	cmove	%edx, %esi
.L1567:
	movzbl	1(%rbx), %edx
	cmpb	%dil, %dl
	jb	.L1620
	cmpb	%dl, %sil
	jb	.L1620
	leaq	2(%rbx), %rsi
	cmpq	%rsi, %r9
	je	.L1622
	movzbl	2(%rbx), %esi
	leal	-128(%rsi), %edi
	cmpb	$63, %dil
	ja	.L1622
	leaq	3(%rbx), %rdi
	cmpq	%rdi, %r9
	je	.L1624
	movzbl	3(%rbx), %edi
	leal	-128(%rdi), %r8d
	cmpb	$63, %r8b
	ja	.L1624
	andl	$7, %eax
	andl	$63, %edx
	andl	$63, %esi
	andl	$63, %edi
	sall	$6, %eax
	orl	%edx, %eax
	movl	$4, %edx
	sall	$6, %eax
	orl	%esi, %eax
	sall	$6, %eax
	orl	%edi, %eax
	jmp	.L1563
.L1612:
	movl	$-96, %edi
	movl	$-65, %esi
	jmp	.L1566
.L1618:
	movl	$-112, %edi
	movl	$-65, %esi
	jmp	.L1567
.L1622:
	movl	$2, %edx
	movl	$65533, %eax
	jmp	.L1563
.L1624:
	movl	$3, %edx
	movl	$65533, %eax
	jmp	.L1563
.L1668:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6624:
	.size	_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE, .-_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	.section	.text._ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,"axG",@progbits,_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE,comdat
	.p2align 4
	.weak	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	.type	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE, @function
_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE:
.LFB6468:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC34(%rip), %rax
	movl	%ecx, %r8d
	movzbl	%cl, %ecx
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movzbl	(%rax,%rcx), %ebx
	movq	24(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%bl, (%rax)
	movq	24(%rdi), %rax
	subq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	je	.L1674
.L1671:
	movl	%r8d, %ecx
	call	_ZNSt8__format23__write_escaped_unicodeIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	movq	24(%rax), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, 24(%rax)
	movb	%bl, (%rdx)
	movq	24(%rax), %rdx
	subq	8(%rax), %rdx
	cmpq	16(%rax), %rdx
	je	.L1675
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1674:
	.cfi_restore_state
	movq	(%rdi), %rax
	movq	%rdx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movb	%r8b, 15(%rsp)
	movq	%rdi, (%rsp)
	call	*(%rax)
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movzbl	15(%rsp), %r8d
	movq	(%rsp), %rdi
	jmp	.L1671
	.p2align 4,,10
	.p2align 3
.L1675:
	movq	(%rax), %rdx
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	call	*(%rdx)
	movq	(%rsp), %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6468:
	.size	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE, .-_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	.section	.text._ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_,"axG",@progbits,_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_,comdat
	.p2align 4
	.weak	_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_
	.type	_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_, @function
_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_:
.LFB6644:
	.cfi_startproc
	endbr64
	movq	%rdi, %rax
	movq	%r9, %r10
	movsbq	(%rdx), %rdi
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	%r8, %r10
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	cmpq	%rdi, %r10
	jle	.L1677
	movq	%rdi, %rsi
	subl	$1, %esi
	cmpb	$125, %sil
	ja	.L1677
	leaq	-1(%rcx), %r10
	xorl	%ecx, %ecx
.L1679:
	subq	%rdi, %r9
	cmpq	%r10, %rcx
	jb	.L1831
	movq	%r9, %r10
	movl	$1, %esi
	subq	%r8, %r10
	cmpq	%rdi, %r10
	jle	.L1830
.L1682:
	subq	%rdi, %r9
	addq	$1, %rsi
	movq	%r9, %r10
	subq	%r8, %r10
	cmpq	%r10, %rdi
	jl	.L1682
.L1830:
	leaq	(%rdx,%rcx), %r12
.L1681:
	leaq	-1(%rsi), %rdi
	movq	%rdi, -24(%rsp)
	leaq	-1(%rcx), %rdi
	cmpq	%r9, %r8
	je	.L1685
.L1683:
	movq	%r9, %r13
	subq	%r8, %r13
	leaq	-1(%r13), %rbp
	cmpq	$6, %rbp
	jbe	.L1720
	leaq	-1(%rax), %r10
	subq	%r8, %r10
	cmpq	$14, %r10
	jbe	.L1720
	cmpq	$14, %rbp
	jbe	.L1721
	movq	%r13, %r10
	movq	-24(%rsp), %r11
	xorl	%ebp, %ebp
	andq	$-16, %r10
	.p2align 5
	.p2align 4
	.p2align 3
.L1688:
	movdqu	(%r8,%rbp), %xmm0
	movups	%xmm0, (%rax,%rbp)
	addq	$16, %rbp
	cmpq	%r10, %rbp
	jne	.L1688
	movq	%r11, -24(%rsp)
	cmpq	%r13, %r10
	je	.L1694
	movq	%r13, %r15
	leaq	(%r8,%r10), %rbp
	leaq	(%rax,%r10), %r14
	subq	%r10, %r15
	leaq	-1(%r15), %r11
	cmpq	$6, %r11
	jbe	.L1691
.L1687:
	movq	(%r8,%r10), %r8
	movq	%r8, (%rax,%r10)
	testb	$7, %r15b
	je	.L1694
	andq	$-8, %r15
	addq	%r15, %rbp
	addq	%r15, %r14
.L1691:
	movzbl	0(%rbp), %r8d
	movb	%r8b, (%r14)
	leaq	1(%rbp), %r8
	cmpq	%r8, %r9
	je	.L1694
	movzbl	1(%rbp), %r8d
	movb	%r8b, 1(%r14)
	leaq	2(%rbp), %r8
	cmpq	%r8, %r9
	je	.L1694
	movzbl	2(%rbp), %r8d
	movb	%r8b, 2(%r14)
	leaq	3(%rbp), %r8
	cmpq	%r8, %r9
	je	.L1694
	movzbl	3(%rbp), %r8d
	movb	%r8b, 3(%r14)
	leaq	4(%rbp), %r8
	cmpq	%r8, %r9
	je	.L1694
	movzbl	4(%rbp), %r8d
	movb	%r8b, 4(%r14)
	leaq	5(%rbp), %r8
	cmpq	%r8, %r9
	je	.L1694
	movzbl	5(%rbp), %r8d
	movb	%r8b, 5(%r14)
	leaq	6(%rbp), %r8
	cmpq	%r8, %r9
	je	.L1694
	movzbl	6(%rbp), %r8d
	movb	%r8b, 6(%r14)
.L1694:
	addq	%r13, %rax
.L1685:
	testq	%rsi, %rsi
	je	.L1695
	movq	%rcx, -16(%rsp)
	movq	-24(%rsp), %r11
	jmp	.L1705
	.p2align 4,,10
	.p2align 3
.L1833:
	leal	-1(%rcx), %esi
	cmpb	$6, %sil
	jle	.L1697
	movq	%rax, %r8
	subq	%r9, %r8
	cmpq	$14, %r8
	jbe	.L1697
	movl	%ecx, %r8d
	cmpb	$14, %sil
	jle	.L1723
	movdqu	(%r9), %xmm0
	movl	%ecx, %esi
	shrb	$4, %sil
	movups	%xmm0, 1(%rax)
	cmpb	$1, %sil
	je	.L1699
	movdqu	16(%r9), %xmm0
	movups	%xmm0, 17(%rax)
	cmpb	$2, %sil
	je	.L1699
	movdqu	32(%r9), %xmm0
	movups	%xmm0, 33(%rax)
	cmpb	$3, %sil
	je	.L1699
	movdqu	48(%r9), %xmm0
	movups	%xmm0, 49(%rax)
	cmpb	$4, %sil
	je	.L1699
	movdqu	64(%r9), %xmm0
	movups	%xmm0, 65(%rax)
	cmpb	$5, %sil
	je	.L1699
	movdqu	80(%r9), %xmm0
	movups	%xmm0, 81(%rax)
	cmpb	$7, %sil
	jne	.L1699
	movdqu	96(%r9), %xmm0
	movups	%xmm0, 97(%rax)
.L1699:
	movl	%ecx, %r13d
	andl	$-16, %r13d
	testb	$15, %cl
	je	.L1704
	movl	%ecx, %r10d
	movzbl	%r13b, %esi
	subl	%r13d, %r10d
	leaq	(%r9,%rsi), %rbp
	addq	%r14, %rsi
	leal	-1(%r10), %r15d
	movl	%r10d, %r8d
	cmpb	$6, %r15b
	jbe	.L1701
.L1698:
	movzbl	%r13b, %r13d
	movq	(%r9,%r13), %r15
	movq	%r15, 1(%rax,%r13)
	testb	$7, %r8b
	je	.L1704
	andl	$-8, %r8d
	subl	%r8d, %r10d
	movzbl	%r8b, %r8d
	addq	%r8, %rbp
	addq	%r8, %rsi
.L1701:
	movzbl	0(%rbp), %eax
	movb	%al, (%rsi)
	cmpb	$1, %r10b
	je	.L1704
	movzbl	1(%rbp), %eax
	movb	%al, 1(%rsi)
	cmpb	$2, %r10b
	je	.L1704
	movzbl	2(%rbp), %eax
	movb	%al, 2(%rsi)
	cmpb	$3, %r10b
	je	.L1704
	movzbl	3(%rbp), %eax
	movb	%al, 3(%rsi)
	cmpb	$4, %r10b
	je	.L1704
	movzbl	4(%rbp), %eax
	movb	%al, 4(%rsi)
	cmpb	$5, %r10b
	je	.L1704
	movzbl	5(%rbp), %eax
	movb	%al, 5(%rsi)
	cmpb	$6, %r10b
	je	.L1704
	movzbl	6(%rbp), %eax
	movb	%al, 6(%rsi)
.L1704:
	leaq	(%r14,%rcx), %rax
	addq	%rcx, %r9
	subq	$1, %r11
	jb	.L1832
.L1705:
	movb	%bl, (%rax)
	movsbq	(%r12), %rcx
	leaq	1(%rax), %r14
	testb	%cl, %cl
	jg	.L1833
	movq	%r14, %rax
	subq	$1, %r11
	jnb	.L1705
	.p2align 4
	.p2align 3
.L1832:
	movq	-16(%rsp), %rcx
.L1695:
	testq	%rcx, %rcx
	jne	.L1715
	jmp	.L1676
	.p2align 4,,10
	.p2align 3
.L1834:
	leal	-1(%rcx), %r10d
	cmpb	$6, %r10b
	jle	.L1707
	movq	%rax, %rsi
	subq	%r9, %rsi
	cmpq	$14, %rsi
	jbe	.L1707
	movl	%ecx, %esi
	cmpb	$14, %r10b
	jle	.L1725
	movdqu	(%r9), %xmm0
	movl	%ecx, %r8d
	shrb	$4, %r8b
	movups	%xmm0, 1(%rax)
	cmpb	$1, %r8b
	je	.L1709
	movdqu	16(%r9), %xmm0
	movups	%xmm0, 17(%rax)
	cmpb	$2, %r8b
	je	.L1709
	movdqu	32(%r9), %xmm0
	movups	%xmm0, 33(%rax)
	cmpb	$3, %r8b
	je	.L1709
	movdqu	48(%r9), %xmm0
	movups	%xmm0, 49(%rax)
	cmpb	$4, %r8b
	je	.L1709
	movdqu	64(%r9), %xmm0
	movups	%xmm0, 65(%rax)
	cmpb	$5, %r8b
	je	.L1709
	movdqu	80(%r9), %xmm0
	movups	%xmm0, 81(%rax)
	cmpb	$7, %r8b
	jne	.L1709
	movdqu	96(%r9), %xmm0
	movups	%xmm0, 97(%rax)
.L1709:
	movl	%ecx, %r11d
	andl	$-16, %r11d
	testb	$15, %cl
	je	.L1714
	subl	%r11d, %esi
	movzbl	%r11b, %r8d
	subl	%r11d, %ecx
	leal	-1(%rsi), %r13d
	leaq	(%r9,%r8), %r12
	addq	%rbp, %r8
	cmpb	$6, %r13b
	jbe	.L1711
.L1708:
	movzbl	%r11b, %r11d
	movq	(%r9,%r11), %r13
	movq	%r13, 1(%rax,%r11)
	testb	$7, %sil
	je	.L1714
	andl	$-8, %esi
	subl	%esi, %ecx
	movzbl	%sil, %esi
	addq	%rsi, %r12
	addq	%rsi, %r8
.L1711:
	movzbl	(%r12), %eax
	movb	%al, (%r8)
	cmpb	$1, %cl
	je	.L1714
	movzbl	1(%r12), %eax
	movb	%al, 1(%r8)
	cmpb	$2, %cl
	je	.L1714
	movzbl	2(%r12), %eax
	movb	%al, 2(%r8)
	cmpb	$3, %cl
	je	.L1714
	movzbl	3(%r12), %eax
	movb	%al, 3(%r8)
	cmpb	$4, %cl
	je	.L1714
	movzbl	4(%r12), %eax
	movb	%al, 4(%r8)
	cmpb	$5, %cl
	je	.L1714
	movzbl	5(%r12), %eax
	movb	%al, 5(%r8)
	cmpb	$6, %cl
	je	.L1714
	movzbl	6(%r12), %eax
	movb	%al, 6(%r8)
.L1714:
	movsbq	%r10b, %r10
	leaq	1(%rbp,%r10), %rax
	leaq	1(%r9,%r10), %r9
	subq	$1, %rdi
	jb	.L1676
.L1715:
	movb	%bl, (%rax)
	movzbl	(%rdx,%rdi), %ecx
	leaq	1(%rax), %rbp
	testb	%cl, %cl
	jg	.L1834
	movq	%rbp, %rax
	subq	$1, %rdi
	jnb	.L1715
.L1676:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1831:
	.cfi_restore_state
	addq	$1, %rcx
	leaq	(%rdx,%rcx), %r12
	movzbl	(%r12), %esi
	leal	-1(%rsi), %edi
	cmpb	$125, %dil
	ja	.L1726
	movq	%r9, %r11
	movsbq	%sil, %rdi
	subq	%r8, %r11
	cmpq	%rdi, %r11
	jg	.L1679
.L1726:
	xorl	%esi, %esi
	jmp	.L1681
	.p2align 4,,10
	.p2align 3
.L1697:
	movzbl	%cl, %r10d
	xorl	%esi, %esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1703:
	movzbl	(%r9,%rsi), %r8d
	movb	%r8b, 1(%rax,%rsi)
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jne	.L1703
	jmp	.L1704
	.p2align 4,,10
	.p2align 3
.L1707:
	xorl	%esi, %esi
	.p2align 5
	.p2align 4
	.p2align 3
.L1713:
	movzbl	(%r9,%rsi), %r8d
	movb	%r8b, 1(%rax,%rsi)
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jne	.L1713
	jmp	.L1714
.L1725:
	movq	%r9, %r12
	movq	%rbp, %r8
	xorl	%r11d, %r11d
	jmp	.L1708
.L1723:
	movl	%ecx, %r10d
	movq	%r9, %rbp
	movq	%r14, %rsi
	xorl	%r13d, %r13d
	jmp	.L1698
.L1720:
	movq	-24(%rsp), %r11
	xorl	%r10d, %r10d
	.p2align 5
	.p2align 4
	.p2align 3
.L1693:
	movzbl	(%r8,%r10), %ebp
	movb	%bpl, (%rax,%r10)
	addq	$1, %r10
	cmpq	%r13, %r10
	jne	.L1693
	movq	%r11, -24(%rsp)
	jmp	.L1694
.L1677:
	cmpq	%r8, %r9
	je	.L1676
	movq	$-1, -24(%rsp)
	movq	%rdx, %r12
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	$-1, %rdi
	jmp	.L1683
.L1721:
	movq	%r13, %r15
	movq	%r8, %rbp
	movq	%rax, %r14
	xorl	%r10d, %r10d
	jmp	.L1687
	.cfi_endproc
.LFE6644:
	.size	_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_, .-_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_
	.section	.text._ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_,"axG",@progbits,_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	.type	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_, @function
_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_:
.LFB6472:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6472
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	.cfi_offset 15, -24
	movq	%rdx, %r15
	pushq	%r14
	.cfi_offset 14, -32
	movq	%rdx, %r14
	pushq	%r13
	.cfi_offset 13, -40
	movq	%rsi, %r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$136, %rsp
	movq	%rcx, -128(%rbp)
	movzwl	(%rdi), %eax
	movq	%rsi, -144(%rbp)
	andw	$384, %ax
	movq	%fs:40, %r12
	movq	%r12, -56(%rbp)
	movq	%r8, %r12
	cmpw	$128, %ax
	je	.L1902
	cmpw	$256, %ax
	je	.L1838
	testb	$32, (%rdi)
	jne	.L1903
.L1840:
	movq	16(%r12), %rbx
	testq	%r13, %r13
	jne	.L1904
.L1860:
	movq	%rbx, %rax
.L1861:
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	jne	.L1896
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L1902:
	.cfi_restore_state
	movzwl	4(%rdi), %eax
	movq	%rax, -120(%rbp)
.L1837:
	testb	$32, (%rbx)
	jne	.L1839
.L1841:
	cmpq	-120(%rbp), %r13
	jnb	.L1840
	movzbl	(%rbx), %eax
	movq	-120(%rbp), %r8
	movq	16(%r12), %rdi
	movl	%eax, %ecx
	subq	%r13, %r8
	andl	$3, %ecx
	je	.L1862
	movl	8(%rbx), %r9d
.L1863:
	movq	%r15, %rdx
	movq	%r13, %rsi
.LEHB7:
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
.LEHE7:
	jmp	.L1861
	.p2align 4,,10
	.p2align 3
.L1903:
	movq	$0, -120(%rbp)
.L1839:
	leaq	24(%r12), %rsi
	cmpb	$0, 32(%r12)
	je	.L1905
.L1842:
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -136(%rbp)
	call	_ZNSt6localeC1ERKS_@PLT
	leaq	-96(%rbp), %rax
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -152(%rbp)
.LEHB8:
	call	_ZNKSt6locale4nameB5cxx11Ev@PLT
	movq	-96(%rbp), %rdi
	leaq	-80(%rbp), %rax
	cmpq	$1, -88(%rbp)
	je	.L1906
.L1844:
	movq	%rax, -160(%rbp)
	cmpq	%rax, %rdi
	je	.L1847
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1847:
	leaq	_ZNSt7__cxx118numpunctIcE2idE(%rip), %rdi
	call	_ZNKSt6locale2id5_M_idEv@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rdx,8), %r9
	testq	%r9, %r9
	je	.L1850
	movq	(%r9), %rax
	movq	%r9, -168(%rbp)
	movq	%r9, %rsi
	movq	-152(%rbp), %rdi
	call	*32(%rax)
.LEHE8:
	movq	-88(%rbp), %rcx
	movq	-168(%rbp), %r9
	testq	%rcx, %rcx
	je	.L1899
	movq	-128(%rbp), %rdx
	movq	-144(%rbp), %rax
	subq	%rdx, %rax
	leaq	23(%rdx,%rax,2), %rax
	movq	%rsp, %rdx
	movq	%rax, %rsi
	andq	$-4096, %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rsp
	je	.L1855
.L1907:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rdx, %rsp
	jne	.L1907
.L1855:
	andl	$4080, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L1856
	orq	$0, -8(%rsp,%rax)
.L1856:
	leaq	15(%rsp), %rax
	movq	-128(%rbp), %rdx
	andq	$-16, %rax
	movq	%rax, %r15
	testq	%rdx, %rdx
	je	.L1857
	movq	%r14, %rsi
	movq	%rax, %rdi
	movq	%r9, -168(%rbp)
	movq	%rcx, -152(%rbp)
	call	memcpy@PLT
	movq	-168(%rbp), %r9
	movq	-152(%rbp), %rcx
.L1857:
	movq	-128(%rbp), %rax
	movq	-144(%rbp), %r13
	movq	%rcx, -168(%rbp)
	movq	%r9, %rdi
	leaq	(%r14,%rax), %r8
	movq	(%r9), %rax
	addq	%r14, %r13
	movq	-96(%rbp), %r14
	movq	%r8, -152(%rbp)
.LEHB9:
	call	*24(%rax)
.LEHE9:
	movsbl	%al, %esi
	movq	-128(%rbp), %rax
	movq	%r13, %r9
	movq	%r14, %rdx
	movq	-152(%rbp), %r8
	movq	-168(%rbp), %rcx
	leaq	(%r15,%rax), %rdi
	call	_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_
	subq	%r15, %rax
	movq	%rax, %r13
.L1899:
	movq	-96(%rbp), %rdi
	cmpq	-160(%rbp), %rdi
	je	.L1849
.L1900:
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1849:
	movq	-136(%rbp), %rdi
	call	_ZNSt6localeD1Ev@PLT
	jmp	.L1841
	.p2align 4,,10
	.p2align 3
.L1862:
	movl	$2, %ecx
	movl	$32, %r9d
	testb	$64, %al
	je	.L1863
	movl	$48, %r9d
	cmpq	$0, -128(%rbp)
	je	.L1863
	movq	-128(%rbp), %rax
	cmpq	%rax, %r13
	cmovbe	%r13, %rax
	testq	%rax, %rax
	jne	.L1908
.L1864:
	movq	-128(%rbp), %rax
	movl	$2, %ecx
	movl	$48, %r9d
	addq	%rax, %r15
	subq	%rax, %r13
	jmp	.L1863
	.p2align 4,,10
	.p2align 3
.L1904:
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB10:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L1860
	.p2align 4,,10
	.p2align 3
.L1838:
	movzwl	4(%rdi), %edi
	movq	%r12, %rsi
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movq	%rax, -120(%rbp)
	jmp	.L1837
	.p2align 4,,10
	.p2align 3
.L1906:
	cmpb	$67, (%rdi)
	jne	.L1844
	cmpq	%rax, %rdi
	jne	.L1900
	jmp	.L1849
	.p2align 4,,10
	.p2align 3
.L1905:
	movq	%rsi, %rdi
	movq	%rsi, -136(%rbp)
	call	_ZNSt6localeC1Ev@PLT
	movb	$1, 32(%r12)
	movq	-136(%rbp), %rsi
	jmp	.L1842
	.p2align 4,,10
	.p2align 3
.L1908:
	movq	%r15, %rdx
	movq	%rax, %rsi
	movq	%r8, -136(%rbp)
	movq	%rdi, -120(%rbp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE10:
	movq	-136(%rbp), %r8
	movq	-120(%rbp), %rdi
	jmp	.L1864
.L1865:
	movq	-96(%rbp), %rdi
	cmpq	-160(%rbp), %rdi
	je	.L1867
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1867:
	movq	-136(%rbp), %rdi
	call	_ZNSt6localeD1Ev@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	je	.L1868
.L1896:
	call	__stack_chk_fail@PLT
.L1875:
	endbr64
	movq	%rax, %rbx
	jmp	.L1867
.L1850:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L1896
.LEHB11:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE11:
.L1876:
	endbr64
	movq	%rax, %rbx
	jmp	.L1865
.L1868:
	movq	%rbx, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
	.cfi_endproc
.LFE6472:
	.section	.gcc_except_table._ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_,"aG",@progbits,_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_,comdat
.LLSDA6472:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6472-.LLSDACSB6472
.LLSDACSB6472:
	.uleb128 .LEHB7-.LFB6472
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB6472
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L1875-.LFB6472
	.uleb128 0
	.uleb128 .LEHB9-.LFB6472
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L1876-.LFB6472
	.uleb128 0
	.uleb128 .LEHB10-.LFB6472
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB6472
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L1875-.LFB6472
	.uleb128 0
	.uleb128 .LEHB12-.LFB6472
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE6472:
	.section	.text._ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_,"axG",@progbits,_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_,comdat
	.size	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_, .-_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	.section	.rodata._ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_.str1.1,"aMS",@progbits,1
.LC35:
	.string	"0b"
.LC36:
	.string	"0B"
.LC37:
	.string	"0X"
.LC38:
	.string	"0x"
.LC39:
	.string	"0"
	.section	.rodata._ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_.str1.8,"aMS",@progbits,1
	.align 8
.LC40:
	.string	"format error: integer not representable as character"
	.section	.text._ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6319:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$296, %rsp
	.cfi_def_cfa_offset 320
	movzbl	1(%rdi), %eax
	movq	%fs:40, %r8
	movq	%r8, 280(%rsp)
	movq	%rdx, %r8
	movl	%eax, %edx
	andl	$120, %edx
	cmpb	$56, %dl
	je	.L1983
	shrb	$3, %al
	andl	$15, %eax
	cmpb	$4, %al
	je	.L1914
	ja	.L1915
	cmpb	$1, %al
	jbe	.L1916
	leaq	.LC35(%rip), %rdi
	cmpb	$16, %dl
	leaq	.LC36(%rip), %rax
	cmove	%rdi, %rax
	movq	%rax, %r14
	testb	%sil, %sil
	jne	.L1984
	movl	$48, %eax
	leaq	56(%rsp), %r10
	leaq	55(%rsp), %rcx
.L1921:
	movb	%al, 55(%rsp)
	movzbl	(%r9), %eax
	testb	$16, %al
	je	.L1980
.L1955:
	movq	$-2, %rsi
	movl	$2, %edx
.L1925:
	addq	%rcx, %rsi
	movl	%edx, %r11d
	testl	%edx, %edx
	je	.L1926
	xorl	%edx, %edx
.L1943:
	movl	%edx, %edi
	addl	$1, %edx
	movzbl	(%r14,%rdi), %ebx
	movb	%bl, (%rsi,%rdi)
	cmpl	%r11d, %edx
	jb	.L1943
	jmp	.L1926
	.p2align 4,,10
	.p2align 3
.L1983:
	testb	%sil, %sil
	js	.L1911
	leaq	51(%rsp), %rcx
	movl	$1, %eax
	movb	%sil, 51(%rsp)
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r9, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.L1912:
	movq	280(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L1981
	addq	$296, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L1916:
	.cfi_restore_state
	testb	%sil, %sil
	je	.L1982
	movzbl	%sil, %eax
	cmpb	$9, %sil
	jbe	.L1951
	movdqa	.LC14(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movdqa	.LC15(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 249(%rsp)
	cmpl	$99, %eax
	jbe	.L1985
	movl	%eax, %ecx
	imulq	$1374389535, %rcx, %rcx
	shrq	$37, %rcx
	imull	$100, %ecx, %edx
	subl	%edx, %eax
	leal	1(%rax,%rax), %eax
	movzwl	63(%rsp,%rax), %eax
	movw	%ax, 56(%rsp)
	movl	$3, %eax
.L1929:
	addl	$48, %ecx
.L1931:
	movb	%cl, 55(%rsp)
	leaq	55(%rsp), %rcx
	leaq	(%rcx,%rax), %r10
.L1979:
	movzbl	(%r9), %eax
	movq	%rcx, %rsi
.L1926:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L1986
	cmpl	$3, %eax
	je	.L1957
.L1946:
	movq	%r10, %rax
	movq	%rsi, %rdx
	subq	%rsi, %rcx
	movq	%r9, %rdi
	subq	%rsi, %rax
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L1912
	.p2align 4,,10
	.p2align 3
.L1914:
	testb	%sil, %sil
	je	.L1982
	movzbl	%sil, %ecx
	movl	$2863311531, %edx
	bsrl	%ecx, %eax
	addl	$3, %eax
	imulq	%rdx, %rax
	shrq	$33, %rax
	cmpl	$63, %ecx
	jbe	.L1933
	movl	%ecx, %edx
	andl	$7, %esi
	shrl	$6, %ecx
	shrl	$3, %edx
	addl	$48, %esi
	andl	$7, %edx
	movb	%sil, 57(%rsp)
	addl	$48, %edx
	movb	%dl, 56(%rsp)
.L1934:
	leal	48(%rcx), %edx
.L1935:
	leaq	55(%rsp), %rcx
	movb	%dl, 55(%rsp)
	leaq	.LC39(%rip), %r14
	movl	$1, %edx
	leaq	(%rcx,%rax), %r10
.L1936:
	movzbl	(%r9), %eax
	movq	%rcx, %rsi
	testb	$16, %al
	je	.L1926
	movq	%rdx, %rsi
	negq	%rsi
	jmp	.L1925
	.p2align 4,,10
	.p2align 3
.L1986:
	movl	$43, %eax
.L1947:
	movb	%al, -1(%rsi)
	subq	$1, %rsi
	jmp	.L1946
	.p2align 4,,10
	.p2align 3
.L1915:
	cmpb	$40, %dl
	je	.L1987
	testb	%sil, %sil
	jne	.L1953
	movb	$48, 55(%rsp)
	cmpb	$48, %dl
	je	.L1954
	leaq	56(%rsp), %r10
	leaq	.LC37(%rip), %r14
	leaq	55(%rsp), %rcx
	jmp	.L1938
	.p2align 4,,10
	.p2align 3
.L1982:
	movb	$48, 55(%rsp)
	leaq	56(%rsp), %r10
	leaq	55(%rsp), %rcx
	jmp	.L1979
	.p2align 4,,10
	.p2align 3
.L1957:
	movl	$32, %eax
	jmp	.L1947
	.p2align 4,,10
	.p2align 3
.L1953:
	leaq	.LC37(%rip), %r14
.L1937:
	movzbl	%sil, %ecx
	movdqa	.LC6(%rip), %xmm0
	bsrl	%ecx, %eax
	addl	$4, %eax
	movaps	%xmm0, 64(%rsp)
	shrl	$2, %eax
	cmpl	$15, %ecx
	ja	.L1988
	movzbl	64(%rsp,%rcx), %ecx
.L1941:
	movb	%cl, 55(%rsp)
	leaq	55(%rsp), %rcx
	leaq	(%rcx,%rax), %r10
	cmpb	$48, %dl
	je	.L1939
.L1938:
	movzbl	(%r9), %eax
	testb	$16, %al
	jne	.L1955
.L1980:
	movq	%rcx, %rsi
	jmp	.L1926
	.p2align 4,,10
	.p2align 3
.L1984:
	movzbl	%sil, %ecx
	movl	$32, %eax
	bsrl	%ecx, %edx
	xorl	$31, %edx
	subl	%edx, %eax
	cltq
	cmpl	$1, %ecx
	je	.L1924
	movl	$31, %edi
	andl	$1, %esi
	subl	%edx, %edi
	addl	$48, %esi
	movb	%sil, 55(%rsp,%rdi)
	cmpl	$30, %edx
	je	.L1924
	movl	%ecx, %esi
	movl	$30, %edi
	shrl	%esi
	subl	%edx, %edi
	andl	$1, %esi
	addl	$48, %esi
	movb	%sil, 55(%rsp,%rdi)
	cmpl	$29, %edx
	je	.L1924
	movl	%ecx, %esi
	movl	$29, %edi
	shrl	$2, %esi
	subl	%edx, %edi
	andl	$1, %esi
	addl	$48, %esi
	movb	%sil, 55(%rsp,%rdi)
	cmpl	$28, %edx
	je	.L1924
	movl	%ecx, %esi
	movl	$28, %edi
	shrl	$3, %esi
	subl	%edx, %edi
	andl	$1, %esi
	addl	$48, %esi
	movb	%sil, 55(%rsp,%rdi)
	cmpl	$27, %edx
	je	.L1924
	movl	%ecx, %esi
	movl	$27, %edi
	shrl	$4, %esi
	subl	%edx, %edi
	andl	$1, %esi
	addl	$48, %esi
	movb	%sil, 55(%rsp,%rdi)
	cmpl	$26, %edx
	je	.L1924
	movl	%ecx, %esi
	movl	$26, %edi
	shrl	$5, %esi
	subl	%edx, %edi
	andl	$1, %esi
	addl	$48, %esi
	movb	%sil, 55(%rsp,%rdi)
	cmpl	$24, %edx
	jne	.L1924
	shrl	$6, %ecx
	andl	$1, %ecx
	leal	48(%rcx), %edx
	movb	%dl, 56(%rsp)
.L1924:
	leaq	55(%rsp), %rcx
	leaq	(%rcx,%rax), %r10
	movl	$49, %eax
	jmp	.L1921
	.p2align 4,,10
	.p2align 3
.L1987:
	testb	%sil, %sil
	jne	.L1952
	movb	$48, 55(%rsp)
	leaq	56(%rsp), %r10
	leaq	55(%rsp), %rcx
	leaq	.LC38(%rip), %r14
	jmp	.L1938
	.p2align 4,,10
	.p2align 3
.L1988:
	andl	$15, %esi
	shrl	$4, %ecx
	movzbl	64(%rsp,%rsi), %esi
	movb	%sil, 56(%rsp)
	movzbl	64(%rsp,%rcx), %ecx
	jmp	.L1941
	.p2align 4,,10
	.p2align 3
.L1952:
	leaq	.LC38(%rip), %r14
	jmp	.L1937
	.p2align 4,,10
	.p2align 3
.L1954:
	leaq	.LC37(%rip), %r14
	leaq	56(%rsp), %r10
	leaq	55(%rsp), %rcx
.L1939:
	movq	%rcx, %rdx
	.p2align 4
	.p2align 3
.L1942:
	movsbl	(%rdx), %edi
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r10, 16(%rsp)
	movq	%rdx, 8(%rsp)
	call	toupper@PLT
	movq	8(%rsp), %rdx
	movq	16(%rsp), %r10
	movq	24(%rsp), %rcx
	movq	32(%rsp), %r9
	movb	%al, (%rdx)
	addq	$1, %rdx
	movq	40(%rsp), %r8
	cmpq	%r10, %rdx
	jne	.L1942
	movl	$2, %edx
	jmp	.L1936
.L1985:
	addl	%eax, %eax
	leal	1(%rax), %edx
	movzbl	64(%rsp,%rax), %ecx
	movl	$2, %eax
	movzbl	64(%rsp,%rdx), %edx
	movb	%dl, 56(%rsp)
	jmp	.L1931
.L1951:
	movl	%esi, %ecx
	movl	$1, %eax
	jmp	.L1929
.L1911:
	movq	280(%rsp), %rax
	subq	%fs:40, %rax
	je	.L1913
.L1981:
	call	__stack_chk_fail@PLT
.L1933:
	cmpl	$7, %ecx
	jbe	.L1934
	andl	$7, %esi
	shrl	$3, %ecx
	addl	$48, %esi
	leal	48(%rcx), %edx
	movb	%sil, 56(%rsp)
	jmp	.L1935
.L1913:
	leaq	.LC40(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6319:
	.size	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6323:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r9
	movq	%rsi, %r10
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$376, %rsp
	.cfi_def_cfa_offset 400
	movzbl	1(%rdi), %eax
	movq	%fs:40, %r8
	movq	%r8, 360(%rsp)
	movq	%rdx, %r8
	movl	%eax, %edi
	andl	$120, %edi
	cmpb	$56, %dil
	je	.L2074
	shrb	$3, %al
	andl	$15, %eax
	testq	%rsi, %rsi
	js	.L2075
	cmpb	$4, %al
	je	.L2000
	ja	.L2001
	cmpb	$1, %al
	jbe	.L2002
	leaq	.LC35(%rip), %r11
	cmpb	$16, %dil
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %r11
	testq	%rsi, %rsi
	jne	.L1998
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rcx
	movl	$48, %eax
.L2007:
	movb	%al, 67(%rsp)
	testb	$16, (%r9)
	je	.L2071
.L2055:
	movq	$-2, %rsi
	movl	$2, %eax
.L2011:
	addq	%rcx, %rsi
	movl	%eax, %edx
	testl	%eax, %eax
	je	.L2012
	xorl	%eax, %eax
.L2036:
	movl	%eax, %edi
	addl	$1, %eax
	movzbl	(%r11,%rdi), %r14d
	movb	%r14b, (%rsi,%rdi)
	cmpl	%edx, %eax
	jb	.L2036
	jmp	.L2012
	.p2align 4,,10
	.p2align 3
.L2075:
	negq	%rsi
	cmpb	$4, %al
	je	.L1995
	ja	.L1996
	cmpb	$1, %al
	jbe	.L1997
	leaq	.LC36(%rip), %r11
	cmpb	$16, %dil
	leaq	.LC35(%rip), %rax
	cmove	%rax, %r11
.L1998:
	bsrq	%rsi, %rax
	movl	$64, %edx
	xorq	$63, %rax
	subl	%eax, %edx
	movslq	%edx, %rdx
	cmpq	$1, %rsi
	je	.L2076
	movl	$63, %ebx
	leaq	67(%rsp), %rcx
	movl	$62, %r14d
	subl	%eax, %ebx
	subl	%eax, %r14d
	leaq	(%rcx,%rbx), %rdi
	leaq	66(%rsp,%rbx), %rbx
	subq	%r14, %rbx
	.p2align 5
	.p2align 4
	.p2align 3
.L2009:
	movl	%esi, %eax
	subq	$1, %rdi
	shrq	%rsi
	andl	$1, %eax
	addl	$48, %eax
	movb	%al, 1(%rdi)
	cmpq	%rbx, %rdi
	jne	.L2009
.L2010:
	leaq	(%rcx,%rdx), %rbx
	movl	$49, %eax
	jmp	.L2007
	.p2align 4,,10
	.p2align 3
.L2074:
	leaq	128(%rsi), %rax
	cmpq	$255, %rax
	ja	.L1991
	leaq	63(%rsp), %rcx
	movl	$1, %eax
	movb	%sil, 63(%rsp)
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r9, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.L1992:
	movq	360(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L2073
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2001:
	.cfi_restore_state
	cmpb	$40, %dil
	je	.L2077
	testq	%rsi, %rsi
	jne	.L2053
	movb	$48, 67(%rsp)
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rcx
	leaq	.LC37(%rip), %r11
	cmpb	$48, %dil
	je	.L2029
.L2030:
	testb	$16, (%r9)
	jne	.L2055
	.p2align 4
	.p2align 3
.L2071:
	movq	%rcx, %rsi
.L2012:
	leaq	-1(%rsi), %rdi
	testq	%r10, %r10
	js	.L2069
	movzbl	(%r9), %eax
.L2038:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L2078
	cmpl	$3, %eax
	je	.L2079
.L2039:
	subq	%rsi, %rbx
	movq	%rsi, %rdx
	subq	%rsi, %rcx
	movq	%r9, %rdi
	movq	%rbx, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L1992
	.p2align 4,,10
	.p2align 3
.L1996:
	leaq	.LC38(%rip), %r11
	cmpb	$40, %dil
	leaq	.LC37(%rip), %rax
	cmovne	%rax, %r11
.L1999:
	bsrq	%rsi, %rax
	movdqa	.LC6(%rip), %xmm0
	addl	$4, %eax
	shrl	$2, %eax
	movaps	%xmm0, 144(%rsp)
	movl	%eax, %edx
	cmpq	$255, %rsi
	jbe	.L2031
	subl	$1, %eax
	.p2align 6
	.p2align 4
	.p2align 3
.L2032:
	movq	%rsi, %rbx
	movl	%eax, %ecx
	andl	$15, %ebx
	movzbl	144(%rsp,%rbx), %ebx
	movb	%bl, 67(%rsp,%rcx)
	movq	%rsi, %rcx
	leal	-1(%rax), %ebx
	shrq	$8, %rsi
	shrq	$4, %rcx
	subl	$2, %eax
	andl	$15, %ecx
	movzbl	144(%rsp,%rcx), %ecx
	movb	%cl, 67(%rsp,%rbx)
	cmpq	$255, %rsi
	ja	.L2032
.L2031:
	cmpq	$15, %rsi
	ja	.L2080
	movzbl	144(%rsp,%rsi), %eax
.L2034:
	leaq	67(%rsp), %rcx
	movb	%al, 67(%rsp)
	leaq	(%rcx,%rdx), %rbx
	cmpb	$48, %dil
	jne	.L2030
.L2029:
	movq	%rcx, %rsi
	.p2align 4
	.p2align 3
.L2035:
	movsbl	(%rsi), %edi
	movq	%r8, 40(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r9, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%rsi, (%rsp)
	call	toupper@PLT
	movq	(%rsp), %rsi
	movq	8(%rsp), %r11
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r9
	addq	$1, %rsi
	movb	%al, -1(%rsi)
	movq	32(%rsp), %r10
	cmpq	%rbx, %rsi
	movq	40(%rsp), %r8
	jne	.L2035
	movl	$2, %eax
	jmp	.L2028
	.p2align 4,,10
	.p2align 3
.L2069:
	movb	$45, -1(%rsi)
.L2041:
	movq	%rdi, %rsi
	jmp	.L2039
	.p2align 4,,10
	.p2align 3
.L2078:
	movb	$43, -1(%rsi)
	jmp	.L2041
	.p2align 4,,10
	.p2align 3
.L2000:
	testq	%rsi, %rsi
	jne	.L1995
.L2072:
	movb	$48, 67(%rsp)
	movzbl	(%r9), %eax
.L2013:
	leaq	67(%rsp), %rcx
	leaq	68(%rsp), %rbx
	movq	%rcx, %rsi
	leaq	66(%rsp), %rdi
	jmp	.L2038
	.p2align 4,,10
	.p2align 3
.L2002:
	testq	%rsi, %rsi
	je	.L2072
	.p2align 4
	.p2align 3
.L1997:
	cmpq	$9, %rsi
	jbe	.L2048
	movq	%rsi, %rcx
	movl	$1, %r11d
	movabsq	$3777893186295716171, %rdi
	jmp	.L2019
	.p2align 4,,10
	.p2align 3
.L2015:
	cmpq	$999, %rcx
	jbe	.L2081
	cmpq	$9999, %rcx
	jbe	.L2082
	movq	%rcx, %rax
	addl	$4, %r11d
	mulq	%rdi
	cmpq	$99999, %rcx
	jbe	.L2016
	shrq	$11, %rdx
	movq	%rdx, %rcx
.L2019:
	cmpq	$99, %rcx
	ja	.L2015
	addl	$1, %r11d
.L2016:
	movl	%r11d, %edi
	cmpl	$64, %r11d
	ja	.L2050
	movdqa	.LC14(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC15(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 304(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 320(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 329(%rsp)
	cmpq	$99, %rsi
	jbe	.L2021
	movabsq	$2951479051793528259, %rbx
	leal	-1(%r11), %ecx
	.p2align 4
	.p2align 3
.L2022:
	movq	%rsi, %rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%rbx
	movq	%rsi, %rax
	shrq	$2, %rdx
	imulq	$100, %rdx, %r11
	subq	%r11, %rax
	movq	%rsi, %r11
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movzbl	145(%rsp,%rax,2), %r14d
	movzbl	144(%rsp,%rax,2), %eax
	movb	%r14b, 67(%rsp,%rdx)
	leal	-1(%rcx), %edx
	subl	$2, %ecx
	movb	%al, 67(%rsp,%rdx)
	cmpq	$9999, %r11
	ja	.L2022
	cmpq	$999, %r11
	ja	.L2021
.L2014:
	addl	$48, %esi
.L2023:
	leaq	67(%rsp), %rcx
	movb	%sil, 67(%rsp)
	leaq	(%rcx,%rdi), %rbx
	jmp	.L2071
	.p2align 4,,10
	.p2align 3
.L2079:
	movb	$32, -1(%rsi)
	jmp	.L2041
	.p2align 4,,10
	.p2align 3
.L1995:
	bsrq	%rsi, %rax
	leal	3(%rax), %edi
	movl	$2863311531, %eax
	imulq	%rax, %rdi
	shrq	$33, %rdi
	movl	%edi, %edx
	cmpq	$63, %rsi
	jbe	.L2024
	subl	$1, %edi
	.p2align 6
	.p2align 4
	.p2align 3
.L2025:
	movq	%rsi, %rcx
	movl	%edi, %r11d
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, 67(%rsp,%r11)
	movq	%rsi, %rcx
	leal	-1(%rdi), %r11d
	shrq	$6, %rsi
	shrq	$3, %rcx
	subl	$2, %edi
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, 67(%rsp,%r11)
	cmpq	$63, %rsi
	ja	.L2025
.L2024:
	leal	48(%rsi), %eax
	cmpq	$7, %rsi
	ja	.L2083
.L2027:
	leaq	67(%rsp), %rcx
	movb	%al, 67(%rsp)
	leaq	.LC39(%rip), %r11
	movl	$1, %eax
	leaq	(%rcx,%rdx), %rbx
.L2028:
	movq	%rcx, %rsi
	testb	$16, (%r9)
	je	.L2012
	movq	%rax, %rsi
	negq	%rsi
	jmp	.L2011
	.p2align 4,,10
	.p2align 3
.L2083:
	movq	%rsi, %rax
	andl	$7, %eax
	addl	$48, %eax
	movb	%al, 68(%rsp)
	movq	%rsi, %rax
	shrq	$3, %rax
	addl	$48, %eax
	jmp	.L2027
	.p2align 4,,10
	.p2align 3
.L2080:
	movq	%rsi, %rax
	shrq	$4, %rsi
	andl	$15, %eax
	movzbl	144(%rsp,%rax), %eax
	movb	%al, 68(%rsp)
	movzbl	144(%rsp,%rsi), %eax
	jmp	.L2034
	.p2align 4,,10
	.p2align 3
.L2021:
	movzbl	145(%rsp,%rsi,2), %eax
	movzbl	144(%rsp,%rsi,2), %esi
	movb	%al, 68(%rsp)
	jmp	.L2023
	.p2align 4,,10
	.p2align 3
.L2077:
	testq	%rsi, %rsi
	jne	.L2051
	movzbl	(%r9), %eax
	movb	$48, 67(%rsp)
	testb	$16, %al
	je	.L2013
	leaq	68(%rsp), %rbx
	movl	$2, %eax
	leaq	67(%rsp), %rcx
	movq	$-2, %rsi
	leaq	.LC38(%rip), %r11
	jmp	.L2011
	.p2align 4,,10
	.p2align 3
.L2081:
	addl	$2, %r11d
	jmp	.L2016
	.p2align 4,,10
	.p2align 3
.L2082:
	addl	$3, %r11d
	jmp	.L2016
.L2053:
	leaq	.LC37(%rip), %r11
	jmp	.L1999
.L2076:
	leaq	67(%rsp), %rcx
	jmp	.L2010
.L2050:
	leaq	131(%rsp), %rbx
	leaq	67(%rsp), %rcx
	jmp	.L2071
.L2051:
	leaq	.LC38(%rip), %r11
	jmp	.L1999
.L2048:
	movl	$1, %edi
	jmp	.L2014
.L1991:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	je	.L1993
.L2073:
	call	__stack_chk_fail@PLT
.L1993:
	leaq	.LC40(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6323:
	.size	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6325:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r9
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$376, %rsp
	.cfi_def_cfa_offset 400
	movzbl	1(%rdi), %eax
	movq	%fs:40, %r8
	movq	%r8, 360(%rsp)
	movq	%rdx, %r8
	movl	%eax, %edi
	andl	$120, %edi
	cmpb	$56, %dil
	je	.L2157
	shrb	$3, %al
	andl	$15, %eax
	cmpb	$4, %al
	je	.L2089
	ja	.L2090
	cmpb	$1, %al
	jbe	.L2091
	leaq	.LC35(%rip), %rbx
	cmpb	$16, %dil
	leaq	.LC36(%rip), %rax
	cmove	%rbx, %rax
	movq	%rax, %r14
	testq	%rsi, %rsi
	jne	.L2158
	movl	$48, %eax
	leaq	68(%rsp), %rdx
	leaq	67(%rsp), %rcx
.L2096:
	movb	%al, 67(%rsp)
	movzbl	(%r9), %eax
	testb	$16, %al
	je	.L2155
.L2142:
	movq	$-2, %rsi
	movl	$2, %edi
.L2100:
	addq	%rcx, %rsi
	movl	%edi, %r10d
	testl	%edi, %edi
	je	.L2101
	xorl	%edi, %edi
.L2128:
	movl	%edi, %r11d
	addl	$1, %edi
	movzbl	(%r14,%r11), %ebx
	movb	%bl, (%rsi,%r11)
	cmpl	%r10d, %edi
	jb	.L2128
	jmp	.L2101
	.p2align 4,,10
	.p2align 3
.L2157:
	cmpq	$127, %rsi
	ja	.L2086
	leaq	63(%rsp), %rcx
	movl	$1, %eax
	movb	%sil, 63(%rsp)
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r9, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.L2087:
	movq	360(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L2156
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2091:
	.cfi_restore_state
	testq	%rsi, %rsi
	jne	.L2102
	movb	$48, 67(%rsp)
	leaq	68(%rsp), %rdx
	leaq	67(%rsp), %rcx
.L2103:
	movzbl	(%r9), %eax
	movq	%rcx, %rsi
.L2101:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L2159
	cmpl	$3, %eax
	je	.L2144
.L2131:
	subq	%rsi, %rdx
	subq	%rsi, %rcx
	movq	%r9, %rdi
	movq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L2087
	.p2align 4,,10
	.p2align 3
.L2089:
	testq	%rsi, %rsi
	jne	.L2114
	leaq	67(%rsp), %rcx
	movb	$48, 67(%rsp)
	movzbl	(%r9), %eax
	leaq	68(%rsp), %rdx
	movq	%rcx, %rsi
	jmp	.L2101
	.p2align 4,,10
	.p2align 3
.L2159:
	movl	$43, %eax
.L2132:
	movb	%al, -1(%rsi)
	subq	$1, %rsi
	jmp	.L2131
	.p2align 4,,10
	.p2align 3
.L2090:
	cmpb	$40, %dil
	je	.L2160
	testq	%rsi, %rsi
	jne	.L2140
	movb	$48, 67(%rsp)
	cmpb	$48, %dil
	je	.L2141
	leaq	68(%rsp), %rdx
	leaq	.LC37(%rip), %r14
	leaq	67(%rsp), %rcx
	jmp	.L2121
	.p2align 4,,10
	.p2align 3
.L2144:
	movl	$32, %eax
	jmp	.L2132
	.p2align 4,,10
	.p2align 3
.L2140:
	leaq	.LC37(%rip), %r14
.L2120:
	bsrq	%rsi, %rax
	movdqa	.LC6(%rip), %xmm0
	addl	$4, %eax
	shrl	$2, %eax
	movaps	%xmm0, 144(%rsp)
	movl	%eax, %edx
	cmpq	$255, %rsi
	jbe	.L2123
	subl	$1, %eax
	.p2align 4
	.p2align 3
.L2124:
	movq	%rsi, %r11
	movl	%eax, %ecx
	andl	$15, %r11d
	movzbl	144(%rsp,%r11), %r11d
	movb	%r11b, 67(%rsp,%rcx)
	movq	%rsi, %rcx
	leal	-1(%rax), %r11d
	shrq	$8, %rsi
	shrq	$4, %rcx
	subl	$2, %eax
	andl	$15, %ecx
	movzbl	144(%rsp,%rcx), %ecx
	movb	%cl, 67(%rsp,%r11)
	cmpq	$255, %rsi
	ja	.L2124
.L2123:
	cmpq	$15, %rsi
	ja	.L2161
	movzbl	144(%rsp,%rsi), %eax
.L2126:
	leaq	67(%rsp), %rcx
	movb	%al, 67(%rsp)
	addq	%rcx, %rdx
	cmpb	$48, %dil
	je	.L2122
.L2121:
	movzbl	(%r9), %eax
	testb	$16, %al
	jne	.L2142
.L2155:
	movq	%rcx, %rsi
	jmp	.L2101
	.p2align 4,,10
	.p2align 3
.L2158:
	bsrq	%rsi, %r11
	movl	$64, %edx
	xorq	$63, %r11
	subl	%r11d, %edx
	movslq	%edx, %rdx
	cmpq	$1, %rsi
	je	.L2162
	movl	$63, %eax
	leaq	67(%rsp), %rcx
	movl	$62, %r10d
	subl	%r11d, %eax
	subl	%r11d, %r10d
	leaq	(%rcx,%rax), %rdi
	leaq	66(%rsp,%rax), %rax
	subq	%r10, %rax
	.p2align 5
	.p2align 4
	.p2align 3
.L2098:
	movl	%esi, %r11d
	subq	$1, %rdi
	shrq	%rsi
	andl	$1, %r11d
	addl	$48, %r11d
	movb	%r11b, 1(%rdi)
	cmpq	%rax, %rdi
	jne	.L2098
.L2099:
	addq	%rcx, %rdx
	movl	$49, %eax
	jmp	.L2096
	.p2align 4,,10
	.p2align 3
.L2102:
	cmpq	$9, %rsi
	jbe	.L2136
	movq	%rsi, %rcx
	movl	$1, %r10d
	movabsq	$3777893186295716171, %rdi
	jmp	.L2109
	.p2align 4,,10
	.p2align 3
.L2105:
	cmpq	$999, %rcx
	jbe	.L2163
	cmpq	$9999, %rcx
	jbe	.L2164
	movq	%rcx, %rax
	addl	$4, %r10d
	mulq	%rdi
	cmpq	$99999, %rcx
	jbe	.L2106
	shrq	$11, %rdx
	movq	%rdx, %rcx
.L2109:
	cmpq	$99, %rcx
	ja	.L2105
	addl	$1, %r10d
.L2106:
	movl	%r10d, %edi
	cmpl	$64, %r10d
	ja	.L2138
	movdqa	.LC14(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movdqa	.LC15(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 192(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 304(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 320(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 329(%rsp)
	cmpq	$99, %rsi
	jbe	.L2111
	movabsq	$2951479051793528259, %r11
	leal	-1(%r10), %ecx
	.p2align 4
	.p2align 3
.L2112:
	movq	%rsi, %rdx
	shrq	$2, %rdx
	movq	%rdx, %rax
	mulq	%r11
	movq	%rsi, %rax
	shrq	$2, %rdx
	imulq	$100, %rdx, %r10
	subq	%r10, %rax
	movq	%rsi, %r10
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movzbl	145(%rsp,%rax,2), %ebx
	movzbl	144(%rsp,%rax,2), %eax
	movb	%bl, 67(%rsp,%rdx)
	leal	-1(%rcx), %edx
	subl	$2, %ecx
	movb	%al, 67(%rsp,%rdx)
	cmpq	$9999, %r10
	ja	.L2112
	cmpq	$999, %r10
	ja	.L2111
.L2104:
	addl	$48, %esi
.L2113:
	leaq	67(%rsp), %rcx
	movb	%sil, 67(%rsp)
	leaq	(%rcx,%rdi), %rdx
	jmp	.L2103
	.p2align 4,,10
	.p2align 3
.L2114:
	bsrq	%rsi, %rax
	leal	3(%rax), %edi
	movl	$2863311531, %eax
	imulq	%rax, %rdi
	shrq	$33, %rdi
	movl	%edi, %edx
	cmpq	$63, %rsi
	jbe	.L2115
	subl	$1, %edi
	.p2align 6
	.p2align 4
	.p2align 3
.L2116:
	movq	%rsi, %rcx
	movl	%edi, %r10d
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, 67(%rsp,%r10)
	movq	%rsi, %rcx
	leal	-1(%rdi), %r10d
	shrq	$6, %rsi
	shrq	$3, %rcx
	subl	$2, %edi
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, 67(%rsp,%r10)
	cmpq	$63, %rsi
	ja	.L2116
.L2115:
	leal	48(%rsi), %edi
	cmpq	$7, %rsi
	ja	.L2165
.L2118:
	leaq	67(%rsp), %rcx
	movb	%dil, 67(%rsp)
	leaq	.LC39(%rip), %r14
	movl	$1, %edi
	addq	%rcx, %rdx
.L2119:
	movzbl	(%r9), %eax
	movq	%rcx, %rsi
	testb	$16, %al
	je	.L2101
	movq	%rdi, %rsi
	negq	%rsi
	jmp	.L2100
	.p2align 4,,10
	.p2align 3
.L2160:
	testq	%rsi, %rsi
	jne	.L2139
	movb	$48, 67(%rsp)
	leaq	68(%rsp), %rdx
	leaq	67(%rsp), %rcx
	leaq	.LC38(%rip), %r14
	jmp	.L2121
	.p2align 4,,10
	.p2align 3
.L2161:
	movq	%rsi, %rax
	shrq	$4, %rsi
	andl	$15, %eax
	movzbl	144(%rsp,%rax), %eax
	movb	%al, 68(%rsp)
	movzbl	144(%rsp,%rsi), %eax
	jmp	.L2126
	.p2align 4,,10
	.p2align 3
.L2165:
	movq	%rsi, %rax
	movq	%rsi, %rdi
	andl	$7, %eax
	shrq	$3, %rdi
	addl	$48, %eax
	addl	$48, %edi
	movb	%al, 68(%rsp)
	jmp	.L2118
	.p2align 4,,10
	.p2align 3
.L2111:
	movzbl	145(%rsp,%rsi,2), %eax
	movzbl	144(%rsp,%rsi,2), %esi
	movb	%al, 68(%rsp)
	jmp	.L2113
	.p2align 4,,10
	.p2align 3
.L2139:
	leaq	.LC38(%rip), %r14
	jmp	.L2120
	.p2align 4,,10
	.p2align 3
.L2141:
	leaq	.LC37(%rip), %r14
	leaq	68(%rsp), %rdx
	leaq	67(%rsp), %rcx
.L2122:
	movq	%rcx, %rsi
	.p2align 4
	.p2align 3
.L2127:
	movsbl	(%rsi), %edi
	movq	%r8, 40(%rsp)
	movq	%r9, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	call	toupper@PLT
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %r9
	movb	%al, (%rsi)
	addq	$1, %rsi
	movq	40(%rsp), %r8
	cmpq	%rdx, %rsi
	jne	.L2127
	movl	$2, %edi
	jmp	.L2119
	.p2align 4,,10
	.p2align 3
.L2163:
	addl	$2, %r10d
	jmp	.L2106
	.p2align 4,,10
	.p2align 3
.L2164:
	addl	$3, %r10d
	jmp	.L2106
.L2162:
	leaq	67(%rsp), %rcx
	jmp	.L2099
.L2138:
	leaq	131(%rsp), %rdx
	leaq	67(%rsp), %rcx
	jmp	.L2103
.L2136:
	movl	$1, %edi
	jmp	.L2104
.L2086:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	je	.L2088
.L2156:
	call	__stack_chk_fail@PLT
.L2088:
	leaq	.LC40(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6325:
	.size	_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6362:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r8
	movq	%rdx, %rsi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$440, %rsp
	.cfi_def_cfa_offset 496
	movzbl	1(%rdi), %ecx
	movq	%fs:40, %r9
	movq	%r9, 424(%rsp)
	xorl	%r9d, %r9d
	movl	%ecx, %r10d
	andl	$120, %r10d
	cmpb	$56, %r10b
	je	.L2261
	shrb	$3, %cl
	movq	%rdx, %r9
	andl	$15, %ecx
	testq	%rdx, %rdx
	js	.L2262
	cmpb	$4, %cl
	je	.L2177
	ja	.L2178
	cmpb	$1, %cl
	jbe	.L2179
	cmpb	$16, %r10b
	leaq	.LC35(%rip), %r14
	leaq	.LC36(%rip), %rcx
	movq	%r8, %rax
	cmovne	%rcx, %r14
	orq	%rdx, %rax
	jne	.L2175
	movl	$48, %eax
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rbp
.L2184:
	movb	%al, 67(%rsp)
	testb	$16, (%rdi)
	je	.L2258
.L2238:
	movq	$-2, %r8
	movl	$2, %eax
.L2189:
	addq	%rbp, %r8
	movl	%eax, %ecx
	testl	%eax, %eax
	je	.L2190
	xorl	%eax, %eax
.L2218:
	movl	%eax, %edx
	addl	$1, %eax
	movzbl	(%r14,%rdx), %r9d
	movb	%r9b, (%r8,%rdx)
	cmpl	%ecx, %eax
	jb	.L2218
	jmp	.L2190
	.p2align 4,,10
	.p2align 3
.L2262:
	negq	%r8
	adcq	$0, %r9
	negq	%r9
	cmpb	$4, %cl
	je	.L2172
	ja	.L2173
	cmpb	$1, %cl
	jbe	.L2174
	leaq	.LC36(%rip), %r14
	cmpb	$16, %r10b
	leaq	.LC35(%rip), %rax
	cmove	%rax, %r14
.L2175:
	testq	%r9, %r9
	jne	.L2263
	bsrq	%r8, %rax
	xorq	$63, %rax
	leal	64(%rax), %edx
	cmpl	$63, %eax
	je	.L2229
.L2257:
	movl	$127, %ecx
	movl	$128, %ebx
	leaq	67(%rsp), %rbp
	subl	%edx, %ecx
	subl	%edx, %ebx
	movl	%ecx, %r10d
	subl	$1, %ecx
	movslq	%ebx, %rax
	leaq	0(%rbp,%r10), %rdx
	leaq	66(%rsp,%r10), %r10
	subq	%rcx, %r10
	.p2align 5
	.p2align 4
	.p2align 3
.L2188:
	movl	%r8d, %ecx
	subq	$1, %rdx
	shrdq	$1, %r9, %r8
	andl	$1, %ecx
	shrq	%r9
	addl	$48, %ecx
	movb	%cl, 1(%rdx)
	cmpq	%r10, %rdx
	jne	.L2188
.L2187:
	leaq	0(%rbp,%rax), %rbx
	movl	$49, %eax
	jmp	.L2184
	.p2align 4,,10
	.p2align 3
.L2261:
	movl	$127, %ecx
	cmpq	%r8, %rcx
	sbbq	%rdx, %r9
	jl	.L2168
	leaq	63(%rsp), %rcx
	movl	$1, %ebx
	movq	%r13, %rdx
	movb	%r8b, 63(%rsp)
	movq	%rcx, %rsi
	movq	%rdi, %rcx
	movq	%rbx, %rdi
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.L2169:
	movq	424(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L2260
	addq	$440, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2178:
	.cfi_restore_state
	cmpb	$40, %r10b
	je	.L2264
	movq	%r8, %rax
	orq	%rdx, %rax
	jne	.L2236
	movb	$48, 67(%rsp)
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rbp
	leaq	.LC37(%rip), %r14
	cmpb	$48, %r10b
	je	.L2209
.L2210:
	testb	$16, (%rdi)
	jne	.L2238
	.p2align 4
	.p2align 3
.L2258:
	movq	%rbp, %r8
.L2190:
	leaq	-1(%r8), %rdx
	testq	%rsi, %rsi
	js	.L2255
	movzbl	(%rdi), %eax
.L2220:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L2265
	cmpl	$3, %eax
	je	.L2266
.L2221:
	movq	%rbx, %rax
	movq	%rbp, %rcx
	movq	%r8, %rdx
	subq	%r8, %rax
	subq	%r8, %rcx
	movq	%r13, %r8
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L2169
	.p2align 4,,10
	.p2align 3
.L2173:
	leaq	.LC38(%rip), %r14
	cmpb	$40, %r10b
	leaq	.LC37(%rip), %rax
	cmovne	%rax, %r14
.L2176:
	testq	%r9, %r9
	jne	.L2267
	bsrq	%r8, %rax
	movdqa	.LC6(%rip), %xmm0
	movl	$255, %ecx
	leaq	208(%rsp), %rbx
	leal	4(%rax), %edx
	shrl	$2, %edx
	cmpq	%r8, %rcx
	movaps	%xmm0, 208(%rsp)
	movl	%edx, %eax
	jnb	.L2213
	subl	$1, %edx
.L2212:
	movl	%r10d, %ebp
	leaq	208(%rsp), %rbx
	xorl	%ecx, %ecx
	movq	%r13, %r10
	movl	$255, %r11d
	.p2align 4
	.p2align 3
.L2214:
	movq	%r8, %r12
	movl	%edx, %r15d
	xorl	%r13d, %r13d
	andl	$15, %r12d
	movq	%r13, 8(%rsp)
	leal	-1(%rdx), %r13d
	subl	$2, %edx
	movzbl	(%rbx,%r12), %r12d
	movb	%r12b, 67(%rsp,%r15)
	movq	%r8, %r12
	shrdq	$8, %r9, %r8
	movq	%rcx, %r15
	shrdq	$4, %r9, %r12
	shrq	$8, %r9
	andl	$15, %r12d
	cmpq	%r8, %r11
	movq	%r12, (%rsp)
	movq	(%rsp), %r12
	sbbq	%r9, %r15
	movzbl	(%r12,%rbx), %r12d
	movb	%r12b, 67(%rsp,%r13)
	jc	.L2214
	movq	%r10, %r13
	movl	%ebp, %r10d
.L2213:
	movl	$15, %edx
	cmpq	%r8, %rdx
	movl	$0, %edx
	sbbq	%r9, %rdx
	jnc	.L2215
	movq	%r8, %rdx
	andl	$15, %edx
	movzbl	(%rbx,%rdx), %edx
	movb	%dl, 68(%rsp)
	movq	%r8, %rdx
	shrdq	$4, %r9, %rdx
	movzbl	(%rdx,%rbx), %edx
.L2216:
	leaq	67(%rsp), %rbp
	movb	%dl, 67(%rsp)
	leaq	0(%rbp,%rax), %rbx
	cmpb	$48, %r10b
	jne	.L2210
.L2209:
	movq	%r13, (%rsp)
	movq	%rbp, %r15
	movq	%rdi, %r12
	movq	%rsi, %r13
	.p2align 4
	.p2align 3
.L2217:
	movsbl	0(%rbp), %edi
	addq	$1, %rbp
	call	toupper@PLT
	movb	%al, -1(%rbp)
	cmpq	%rbx, %rbp
	jne	.L2217
	movq	%r13, %rsi
	movq	%r15, %rbp
	movq	(%rsp), %r13
	movq	%r12, %rdi
	movl	$2, %eax
	jmp	.L2208
	.p2align 4,,10
	.p2align 3
.L2255:
	movb	$45, -1(%r8)
.L2223:
	movq	%rdx, %r8
	jmp	.L2221
	.p2align 4,,10
	.p2align 3
.L2265:
	movb	$43, -1(%r8)
	jmp	.L2223
	.p2align 4,,10
	.p2align 3
.L2177:
	movq	%r8, %rax
	orq	%rdx, %rax
	jne	.L2172
.L2259:
	movb	$48, 67(%rsp)
	movzbl	(%rdi), %eax
.L2191:
	leaq	67(%rsp), %rbp
	leaq	68(%rsp), %rbx
	movq	%rbp, %r8
	leaq	66(%rsp), %rdx
	jmp	.L2220
	.p2align 4,,10
	.p2align 3
.L2179:
	movq	%r8, %rax
	orq	%rdx, %rax
	je	.L2259
	.p2align 4
	.p2align 3
.L2174:
	movl	$9, %eax
	cmpq	%r8, %rax
	movl	$0, %eax
	sbbq	%r9, %rax
	jnc	.L2231
	movq	%r8, 16(%rsp)
	movq	%r8, %r12
	movl	$1, %r14d
	xorl	%ebp, %ebp
	movq	%r9, 24(%rsp)
	movq	%rdi, %r15
	movq	%rsi, %rbx
	jmp	.L2197
	.p2align 4,,10
	.p2align 3
.L2193:
	movl	$999, %eax
	cmpq	%r12, %rax
	movq	%rbp, %rax
	sbbq	%r9, %rax
	jnc	.L2268
	movl	$9999, %eax
	cmpq	%r12, %rax
	movq	%rbp, %rax
	sbbq	%r9, %rax
	jnc	.L2269
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movl	$10000, %edx
	movq	%r9, %rsi
	movq	%r9, (%rsp)
	addl	$4, %r14d
	call	__udivti3@PLT
	movl	$99999, %edi
	cmpq	%r12, %rdi
	movq	%rbp, %rdi
	sbbq	(%rsp), %rdi
	jnc	.L2270
	movq	%rax, %r12
	movq	%rdx, %r9
.L2197:
	movl	$99, %eax
	cmpq	%r12, %rax
	movq	%rbp, %rax
	sbbq	%r9, %rax
	jc	.L2193
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	addl	$1, %r14d
.L2194:
	movl	%r14d, %r10d
	cmpl	$128, %r14d
	ja	.L2233
	movdqa	.LC14(%rip), %xmm0
	movl	$99, %eax
	leaq	208(%rsp), %rbx
	cmpq	%r8, %rax
	movl	$0, %eax
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC15(%rip), %xmm0
	sbbq	%r9, %rax
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 304(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 320(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 336(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 352(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 368(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 384(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 393(%rsp)
	jnc	.L2199
	movq	%rdi, 32(%rsp)
	leal	-1(%r14), %ebp
	movq	%rsi, %r15
	movabsq	$1152921504606846975, %r12
	movabsq	$-8116567392432202711, %r14
	movq	%r13, 40(%rsp)
	movq	%r10, 16(%rsp)
	leaq	208(%rsp), %r10
	.p2align 4
	.p2align 3
.L2200:
	movq	%r8, %rax
	movq	%r8, %rcx
	movq	%r8, %rsi
	xorl	%ebx, %ebx
	shrdq	$60, %r9, %rax
	andq	%r12, %rcx
	movq	%r9, %rdi
	movl	$25, %r13d
	andq	%r12, %rax
	addq	%rax, %rcx
	movq	%r9, %rax
	shrq	$56, %rax
	addq	%rax, %rcx
	movabsq	$5165088340638674453, %rax
	mulq	%rcx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$4, %rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rax, %rcx
	movabsq	$2951479051793528258, %rax
	subq	%rcx, %rsi
	sbbq	%rbx, %rdi
	imulq	%rsi, %rax
	movq	%rdi, %r11
	imulq	%r14, %r11
	addq	%rax, %r11
	movq	%rsi, %rax
	mulq	%r14
	movq	%rax, %rsi
	andl	$3, %eax
	addq	%rdx, %r11
	mulq	%r13
	movq	%r11, %rdi
	addq	%rcx, %rax
	xorl	%edx, %edx
	movq	%r8, %rcx
	addq	%rax, %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	adcq	%rdx, %rdx
	shrq	$2, %rdi
	shrdq	$2, %r11, %rsi
	movq	%rdx, 8(%rsp)
	movq	%r9, %rdx
	movq	%rdi, %r9
	movzbl	1(%r10,%rax), %edi
	movq	%rsi, %r8
	movzbl	(%rax,%r10), %eax
	movl	%ebp, %esi
	movb	%dil, 67(%rsp,%rsi)
	leal	-1(%rbp), %esi
	subl	$2, %ebp
	movb	%al, 67(%rsp,%rsi)
	movl	$9999, %eax
	cmpq	%rcx, %rax
	movl	$0, %eax
	sbbq	%rdx, %rax
	jc	.L2200
	movl	$999, %eax
	movq	%r10, %rbx
	movq	32(%rsp), %rdi
	movq	%r15, %rsi
	cmpq	%rcx, %rax
	movl	$0, %eax
	movq	16(%rsp), %r10
	movq	40(%rsp), %r13
	sbbq	%rdx, %rax
	jc	.L2199
.L2192:
	addl	$48, %r8d
.L2201:
	leaq	67(%rsp), %rbp
	movb	%r8b, 67(%rsp)
	leaq	0(%rbp,%r10), %rbx
	jmp	.L2258
	.p2align 4,,10
	.p2align 3
.L2266:
	movb	$32, -1(%r8)
	jmp	.L2223
	.p2align 4,,10
	.p2align 3
.L2172:
	testq	%r9, %r9
	jne	.L2271
	bsrq	%r8, %rax
	movl	$63, %ecx
	leal	3(%rax), %edx
	movl	$2863311531, %eax
	imulq	%rax, %rdx
	shrq	$33, %rdx
	movl	%edx, %eax
	cmpq	%r8, %rcx
	jnb	.L2204
	subl	$1, %edx
.L2203:
	movl	$63, %r11d
	xorl	%r10d, %r10d
	.p2align 6
	.p2align 4
	.p2align 3
.L2205:
	movq	%r8, %rcx
	movl	%edx, %ebp
	leal	-1(%rdx), %ebx
	subl	$2, %edx
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, 67(%rsp,%rbp)
	movq	%r8, %rcx
	shrdq	$6, %r9, %r8
	shrdq	$3, %r9, %rcx
	shrq	$6, %r9
	andl	$7, %ecx
	cmpq	%r8, %r11
	leal	48(%rcx), %ecx
	movb	%cl, 67(%rsp,%rbx)
	movq	%r10, %rbx
	sbbq	%r9, %rbx
	jc	.L2205
.L2204:
	movl	$7, %edx
	cmpq	%r8, %rdx
	movl	$0, %edx
	sbbq	%r9, %rdx
	jnc	.L2206
	movq	%r8, %rcx
	shrdq	$3, %r9, %r8
	andl	$7, %ecx
	addl	$48, %r8d
	addl	$48, %ecx
	movb	%cl, 68(%rsp)
.L2207:
	movb	%r8b, 67(%rsp)
	leaq	67(%rsp), %rbp
	leaq	.LC39(%rip), %r14
	leaq	0(%rbp,%rax), %rbx
	movl	$1, %eax
.L2208:
	movq	%rbp, %r8
	testb	$16, (%rdi)
	je	.L2190
	movq	%rax, %r8
	negq	%r8
	jmp	.L2189
	.p2align 4,,10
	.p2align 3
.L2271:
	bsrq	%r9, %rax
	leal	67(%rax), %edx
	movl	$2863311531, %eax
	imulq	%rax, %rdx
	shrq	$33, %rdx
	movl	%edx, %eax
	subl	$1, %edx
	jmp	.L2203
	.p2align 4,,10
	.p2align 3
.L2267:
	bsrq	%r9, %rax
	movdqa	.LC6(%rip), %xmm0
	leal	68(%rax), %edx
	shrl	$2, %edx
	movaps	%xmm0, 208(%rsp)
	movl	%edx, %eax
	subl	$1, %edx
	jmp	.L2212
	.p2align 4,,10
	.p2align 3
.L2263:
	bsrq	%r9, %rdx
	xorq	$63, %rdx
	jmp	.L2257
	.p2align 4,,10
	.p2align 3
.L2206:
	addl	$48, %r8d
	jmp	.L2207
	.p2align 4,,10
	.p2align 3
.L2215:
	movzbl	(%rbx,%r8), %edx
	jmp	.L2216
	.p2align 4,,10
	.p2align 3
.L2199:
	addq	%r8, %r8
	movzbl	1(%rbx,%r8), %eax
	movzbl	(%rbx,%r8), %r8d
	movb	%al, 68(%rsp)
	jmp	.L2201
	.p2align 4,,10
	.p2align 3
.L2264:
	movq	%r8, %rax
	orq	%rdx, %rax
	jne	.L2234
	movzbl	(%rdi), %eax
	movb	$48, 67(%rsp)
	testb	$16, %al
	je	.L2191
	leaq	68(%rsp), %rbx
	movl	$2, %eax
	leaq	67(%rsp), %rbp
	movq	$-2, %r8
	leaq	.LC38(%rip), %r14
	jmp	.L2189
	.p2align 4,,10
	.p2align 3
.L2268:
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	addl	$2, %r14d
	jmp	.L2194
	.p2align 4,,10
	.p2align 3
.L2269:
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	addl	$3, %r14d
	jmp	.L2194
	.p2align 4,,10
	.p2align 3
.L2270:
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	jmp	.L2194
	.p2align 4,,10
	.p2align 3
.L2229:
	movl	$1, %eax
	leaq	67(%rsp), %rbp
	jmp	.L2187
.L2236:
	leaq	.LC37(%rip), %r14
	jmp	.L2176
.L2233:
	leaq	195(%rsp), %rbx
	leaq	67(%rsp), %rbp
	jmp	.L2258
.L2234:
	leaq	.LC38(%rip), %r14
	jmp	.L2176
.L2231:
	movl	$1, %r10d
	jmp	.L2192
.L2168:
	movq	424(%rsp), %rax
	subq	%fs:40, %rax
	je	.L2170
.L2260:
	call	__stack_chk_fail@PLT
.L2170:
	leaq	.LC40(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6362:
	.size	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6364:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r8
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$440, %rsp
	.cfi_def_cfa_offset 496
	movzbl	1(%rdi), %eax
	movq	%fs:40, %rcx
	movq	%rcx, 424(%rsp)
	xorl	%ecx, %ecx
	movl	%eax, %r10d
	andl	$120, %r10d
	cmpb	$56, %r10b
	je	.L2355
	shrb	$3, %al
	movq	%rdx, %r9
	andl	$15, %eax
	cmpb	$4, %al
	je	.L2277
	ja	.L2278
	cmpb	$1, %al
	jbe	.L2279
	cmpb	$16, %r10b
	leaq	.LC36(%rip), %rax
	leaq	.LC35(%rip), %r11
	cmovne	%rax, %r11
	movq	%rsi, %rax
	orq	%rdx, %rax
	jne	.L2356
	movl	$48, %eax
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rbp
.L2284:
	movb	%al, 67(%rsp)
	movzbl	(%rdi), %eax
	testb	$16, %al
	je	.L2353
.L2336:
	movq	$-2, %rsi
	movl	$2, %edx
.L2289:
	addq	%rbp, %rsi
	movl	%edx, %r8d
	testl	%edx, %edx
	je	.L2290
	xorl	%edx, %edx
.L2321:
	movl	%edx, %ecx
	addl	$1, %edx
	movzbl	(%r11,%rcx), %r9d
	movb	%r9b, (%rsi,%rcx)
	cmpl	%r8d, %edx
	jb	.L2321
	jmp	.L2290
	.p2align 4,,10
	.p2align 3
.L2355:
	movl	$127, %eax
	cmpq	%rsi, %rax
	sbbq	%rdx, %rcx
	jc	.L2274
	leaq	63(%rsp), %rcx
	movl	$1, %ebx
	movb	%sil, 63(%rsp)
	movq	%r14, %rdx
	movq	%rcx, %rsi
	movq	%rdi, %rcx
	movq	%rbx, %rdi
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
.L2275:
	movq	424(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L2354
	addq	$440, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2279:
	.cfi_restore_state
	movq	%rsi, %rax
	orq	%rdx, %rax
	jne	.L2291
	movb	$48, 67(%rsp)
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rbp
.L2292:
	movzbl	(%rdi), %eax
	movq	%rbp, %rsi
.L2290:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L2357
	cmpl	$3, %eax
	je	.L2338
.L2324:
	movq	%rbx, %rax
	movq	%rbp, %rcx
	movq	%rsi, %rdx
	movq	%r14, %r8
	subq	%rsi, %rax
	subq	%rsi, %rcx
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L2275
	.p2align 4,,10
	.p2align 3
.L2277:
	movq	%rsi, %rax
	orq	%rdx, %rax
	jne	.L2303
	leaq	67(%rsp), %rbp
	movb	$48, 67(%rsp)
	movzbl	(%rdi), %eax
	leaq	68(%rsp), %rbx
	movq	%rbp, %rsi
	jmp	.L2290
	.p2align 4,,10
	.p2align 3
.L2357:
	movl	$43, %eax
.L2325:
	movb	%al, -1(%rsi)
	subq	$1, %rsi
	jmp	.L2324
	.p2align 4,,10
	.p2align 3
.L2278:
	cmpb	$40, %r10b
	je	.L2358
	movq	%rsi, %rax
	orq	%rdx, %rax
	jne	.L2334
	movb	$48, 67(%rsp)
	cmpb	$48, %r10b
	je	.L2335
	leaq	68(%rsp), %rbx
	leaq	.LC37(%rip), %r11
	leaq	67(%rsp), %rbp
	jmp	.L2312
	.p2align 4,,10
	.p2align 3
.L2338:
	movl	$32, %eax
	jmp	.L2325
	.p2align 4,,10
	.p2align 3
.L2334:
	leaq	.LC37(%rip), %r11
.L2311:
	testq	%rdx, %rdx
	jne	.L2359
	bsrq	%r8, %rax
	movdqa	.LC6(%rip), %xmm0
	movl	$255, %ecx
	leaq	208(%rsp), %rbx
	leal	4(%rax), %edx
	shrl	$2, %edx
	cmpq	%rsi, %rcx
	movaps	%xmm0, 208(%rsp)
	movl	%edx, %eax
	jnb	.L2316
	subl	$1, %edx
.L2315:
	movl	%r10d, %ebp
	leaq	208(%rsp), %rbx
	xorl	%ecx, %ecx
	movq	%rdi, %r10
	movl	$255, %r12d
	.p2align 4
	.p2align 3
.L2317:
	movq	%r8, %rsi
	movl	%edx, %r13d
	xorl	%edi, %edi
	andl	$15, %esi
	movq	%rdi, 8(%rsp)
	leal	-1(%rdx), %edi
	subl	$2, %edx
	movzbl	(%rbx,%rsi), %esi
	movb	%sil, 67(%rsp,%r13)
	movq	%r8, %rsi
	shrdq	$8, %r9, %r8
	shrdq	$4, %r9, %rsi
	shrq	$8, %r9
	andl	$15, %esi
	cmpq	%r8, %r12
	movq	%rsi, (%rsp)
	movq	(%rsp), %rsi
	movzbl	(%rsi,%rbx), %esi
	movb	%sil, 67(%rsp,%rdi)
	movq	%rcx, %rdi
	sbbq	%r9, %rdi
	jc	.L2317
	movq	%r10, %rdi
	movl	%ebp, %r10d
.L2316:
	movl	$15, %edx
	cmpq	%r8, %rdx
	movl	$0, %edx
	sbbq	%r9, %rdx
	jnc	.L2318
	movq	%r8, %r12
	andl	$15, %r12d
	movzbl	(%rbx,%r12), %edx
	movb	%dl, 68(%rsp)
	movq	%r8, %rdx
	shrdq	$4, %r9, %rdx
	movzbl	(%rdx,%rbx), %edx
.L2319:
	leaq	67(%rsp), %rbp
	movb	%dl, 67(%rsp)
	leaq	0(%rbp,%rax), %rbx
	cmpb	$48, %r10b
	je	.L2313
.L2312:
	movzbl	(%rdi), %eax
	testb	$16, %al
	jne	.L2336
.L2353:
	movq	%rbp, %rsi
	jmp	.L2290
	.p2align 4,,10
	.p2align 3
.L2356:
	testq	%rdx, %rdx
	jne	.L2360
	bsrq	%rsi, %rax
	xorq	$63, %rax
	leal	64(%rax), %edx
	cmpl	$63, %eax
	je	.L2328
.L2352:
	movl	$127, %ecx
	movl	$128, %ebx
	leaq	67(%rsp), %rbp
	subl	%edx, %ecx
	subl	%edx, %ebx
	movl	%ecx, %esi
	subl	$1, %ecx
	movslq	%ebx, %rax
	leaq	0(%rbp,%rsi), %rdx
	leaq	66(%rsp,%rsi), %rsi
	subq	%rcx, %rsi
	.p2align 5
	.p2align 4
	.p2align 3
.L2288:
	movl	%r8d, %ecx
	subq	$1, %rdx
	shrdq	$1, %r9, %r8
	andl	$1, %ecx
	shrq	%r9
	addl	$48, %ecx
	movb	%cl, 1(%rdx)
	cmpq	%rsi, %rdx
	jne	.L2288
.L2287:
	leaq	0(%rbp,%rax), %rbx
	movl	$49, %eax
	jmp	.L2284
	.p2align 4,,10
	.p2align 3
.L2291:
	movl	$9, %eax
	cmpq	%rsi, %rax
	sbbq	%rdx, %rcx
	jnc	.L2330
	movq	%r14, 40(%rsp)
	movq	%rsi, %r12
	movl	$1, %r13d
	xorl	%ebp, %ebp
	movq	%rsi, 16(%rsp)
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rdx, %r14
	movq	%rdx, 24(%rsp)
	jmp	.L2298
	.p2align 4,,10
	.p2align 3
.L2294:
	movl	$999, %eax
	cmpq	%r15, %rax
	movq	%rbp, %rax
	sbbq	%r9, %rax
	jnc	.L2361
	movl	$9999, %eax
	cmpq	%r15, %rax
	movq	%rbp, %rax
	sbbq	%r9, %rax
	jnc	.L2362
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movl	$10000, %edx
	movq	%r9, %rsi
	movq	%r9, (%rsp)
	addl	$4, %r13d
	call	__udivti3@PLT
	movl	$99999, %edi
	cmpq	%r15, %rdi
	movq	%rbp, %rdi
	sbbq	(%rsp), %rdi
	jnc	.L2363
	movq	%rax, %r15
	movq	%rdx, %r9
.L2298:
	movl	$99, %eax
	cmpq	%r15, %rax
	movq	%rbp, %rax
	sbbq	%r9, %rax
	jc	.L2294
	movq	%r14, %rdx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%rbx, %rdi
	movq	40(%rsp), %r14
	movq	%r12, %rsi
	addl	$1, %r13d
.L2295:
	movl	%r13d, %r10d
	cmpl	$128, %r13d
	ja	.L2332
	movdqa	.LC14(%rip), %xmm0
	movl	$99, %eax
	leaq	208(%rsp), %rbx
	cmpq	%rsi, %rax
	movl	$0, %eax
	movaps	%xmm0, 208(%rsp)
	movdqa	.LC15(%rip), %xmm0
	sbbq	%rdx, %rax
	movaps	%xmm0, 224(%rsp)
	movdqa	.LC16(%rip), %xmm0
	movaps	%xmm0, 240(%rsp)
	movdqa	.LC17(%rip), %xmm0
	movaps	%xmm0, 256(%rsp)
	movdqa	.LC18(%rip), %xmm0
	movaps	%xmm0, 272(%rsp)
	movdqa	.LC19(%rip), %xmm0
	movaps	%xmm0, 288(%rsp)
	movdqa	.LC20(%rip), %xmm0
	movaps	%xmm0, 304(%rsp)
	movdqa	.LC21(%rip), %xmm0
	movaps	%xmm0, 320(%rsp)
	movdqa	.LC22(%rip), %xmm0
	movaps	%xmm0, 336(%rsp)
	movdqa	.LC23(%rip), %xmm0
	movaps	%xmm0, 352(%rsp)
	movdqa	.LC24(%rip), %xmm0
	movaps	%xmm0, 368(%rsp)
	movdqa	.LC25(%rip), %xmm0
	movaps	%xmm0, 384(%rsp)
	movdqa	.LC26(%rip), %xmm0
	movups	%xmm0, 393(%rsp)
	jnc	.L2300
	movq	%r10, 16(%rsp)
	leal	-1(%r13), %ecx
	leaq	208(%rsp), %rbx
	movabsq	$1152921504606846975, %r12
	movabsq	$-8116567392432202711, %r13
	movq	%rdi, 40(%rsp)
	.p2align 4
	.p2align 3
.L2301:
	movq	%r8, %rax
	movq	%r8, %rsi
	movq	%r8, %r10
	xorl	%edi, %edi
	shrdq	$60, %r9, %rax
	andq	%r12, %rsi
	movq	%r9, %r11
	movl	$25, %r15d
	andq	%r12, %rax
	addq	%rax, %rsi
	movq	%r9, %rax
	shrq	$56, %rax
	addq	%rax, %rsi
	movabsq	$5165088340638674453, %rax
	mulq	%rsi
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$4, %rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rax,%rax,4), %rax
	subq	%rax, %rsi
	movabsq	$2951479051793528258, %rax
	subq	%rsi, %r10
	sbbq	%rdi, %r11
	imulq	%r10, %rax
	movl	%ecx, %edi
	movq	%r11, %rbp
	imulq	%r13, %rbp
	addq	%rax, %rbp
	movq	%r10, %rax
	mulq	%r13
	movq	%rax, %r10
	andl	$3, %eax
	addq	%rdx, %rbp
	mulq	%r15
	movq	%rbp, %r11
	addq	%rsi, %rax
	xorl	%edx, %edx
	movq	%r8, %rsi
	addq	%rax, %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	adcq	%rdx, %rdx
	shrdq	$2, %rbp, %r10
	movq	%r10, %r8
	shrq	$2, %r11
	movq	%rdx, 8(%rsp)
	movq	%r9, %rdx
	movzbl	1(%rbx,%rax), %r10d
	movzbl	(%rax,%rbx), %eax
	movq	%r11, %r9
	movb	%r10b, 67(%rsp,%rdi)
	leal	-1(%rcx), %edi
	subl	$2, %ecx
	movb	%al, 67(%rsp,%rdi)
	movl	$9999, %eax
	cmpq	%rsi, %rax
	movl	$0, %eax
	sbbq	%rdx, %rax
	jc	.L2301
	movl	$999, %eax
	movq	16(%rsp), %r10
	movq	40(%rsp), %rdi
	cmpq	%rsi, %rax
	movl	$0, %eax
	sbbq	%rdx, %rax
	jc	.L2300
.L2293:
	addl	$48, %r8d
.L2302:
	leaq	67(%rsp), %rbp
	movb	%r8b, 67(%rsp)
	leaq	0(%rbp,%r10), %rbx
	jmp	.L2292
	.p2align 4,,10
	.p2align 3
.L2303:
	testq	%rdx, %rdx
	je	.L2304
	bsrq	%rdx, %rdx
	movl	$2863311531, %eax
	addl	$67, %edx
	imulq	%rax, %rdx
	shrq	$33, %rdx
	movl	%edx, %eax
	subl	$1, %edx
.L2305:
	movl	$63, %r10d
	xorl	%esi, %esi
	.p2align 6
	.p2align 4
	.p2align 3
.L2307:
	movq	%r8, %rcx
	movl	%edx, %r11d
	movq	%rsi, %rbx
	andl	$7, %ecx
	addl	$48, %ecx
	movb	%cl, 67(%rsp,%r11)
	movq	%r8, %rcx
	shrdq	$6, %r9, %r8
	leal	-1(%rdx), %r11d
	shrdq	$3, %r9, %rcx
	subl	$2, %edx
	shrq	$6, %r9
	andl	$7, %ecx
	addl	$48, %ecx
	cmpq	%r8, %r10
	sbbq	%r9, %rbx
	movb	%cl, 67(%rsp,%r11)
	jc	.L2307
.L2306:
	movl	$7, %edx
	cmpq	%r8, %rdx
	movl	$0, %edx
	sbbq	%r9, %rdx
	jnc	.L2308
	movq	%r8, %rcx
	shrdq	$3, %r9, %r8
	andl	$7, %ecx
	addl	$48, %r8d
	addl	$48, %ecx
	movb	%cl, 68(%rsp)
.L2309:
	movb	%r8b, 67(%rsp)
	leaq	67(%rsp), %rbp
	movl	$1, %edx
	leaq	.LC39(%rip), %r11
	leaq	0(%rbp,%rax), %rbx
.L2310:
	movzbl	(%rdi), %eax
	movq	%rbp, %rsi
	testb	$16, %al
	je	.L2290
	movq	%rdx, %rsi
	negq	%rsi
	jmp	.L2289
	.p2align 4,,10
	.p2align 3
.L2358:
	movq	%rsi, %rax
	orq	%rdx, %rax
	jne	.L2333
	movb	$48, 67(%rsp)
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rbp
	leaq	.LC38(%rip), %r11
	jmp	.L2312
	.p2align 4,,10
	.p2align 3
.L2359:
	bsrq	%rdx, %rdx
	movdqa	.LC6(%rip), %xmm0
	addl	$68, %edx
	shrl	$2, %edx
	movaps	%xmm0, 208(%rsp)
	movl	%edx, %eax
	subl	$1, %edx
	jmp	.L2315
	.p2align 4,,10
	.p2align 3
.L2360:
	bsrq	%rdx, %rdx
	xorq	$63, %rdx
	jmp	.L2352
	.p2align 4,,10
	.p2align 3
.L2304:
	bsrq	%rsi, %rax
	movl	$63, %ecx
	leal	3(%rax), %edx
	movl	$2863311531, %eax
	imulq	%rax, %rdx
	shrq	$33, %rdx
	movl	%edx, %eax
	cmpq	%rsi, %rcx
	jnb	.L2306
	subl	$1, %edx
	jmp	.L2305
	.p2align 4,,10
	.p2align 3
.L2333:
	leaq	.LC38(%rip), %r11
	jmp	.L2311
	.p2align 4,,10
	.p2align 3
.L2335:
	leaq	.LC37(%rip), %r11
	leaq	68(%rsp), %rbx
	leaq	67(%rsp), %rbp
.L2313:
	movq	%r14, %r15
	movq	%rbp, %r12
	movq	%r11, %r13
	movq	%rdi, %r14
	.p2align 4
	.p2align 3
.L2320:
	movsbl	(%r12), %edi
	addq	$1, %r12
	call	toupper@PLT
	movb	%al, -1(%r12)
	cmpq	%rbx, %r12
	jne	.L2320
	movq	%r14, %rdi
	movq	%r13, %r11
	movq	%r15, %r14
	movl	$2, %edx
	jmp	.L2310
	.p2align 4,,10
	.p2align 3
.L2308:
	addl	$48, %r8d
	jmp	.L2309
	.p2align 4,,10
	.p2align 3
.L2318:
	movzbl	(%rbx,%r8), %edx
	jmp	.L2319
	.p2align 4,,10
	.p2align 3
.L2300:
	addq	%r8, %r8
	movzbl	1(%rbx,%r8), %eax
	movzbl	(%rbx,%r8), %r8d
	movb	%al, 68(%rsp)
	jmp	.L2302
	.p2align 4,,10
	.p2align 3
.L2361:
	movq	%r14, %rdx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%rbx, %rdi
	movq	40(%rsp), %r14
	movq	%r12, %rsi
	addl	$2, %r13d
	jmp	.L2295
	.p2align 4,,10
	.p2align 3
.L2362:
	movq	%r14, %rdx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%rbx, %rdi
	movq	40(%rsp), %r14
	movq	%r12, %rsi
	addl	$3, %r13d
	jmp	.L2295
	.p2align 4,,10
	.p2align 3
.L2363:
	movq	%r14, %rdx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	movq	%rbx, %rdi
	movq	40(%rsp), %r14
	movq	%r12, %rsi
	jmp	.L2295
	.p2align 4,,10
	.p2align 3
.L2328:
	movl	$1, %eax
	leaq	67(%rsp), %rbp
	jmp	.L2287
.L2332:
	leaq	195(%rsp), %rbx
	leaq	67(%rsp), %rbp
	jmp	.L2292
.L2330:
	movl	$1, %r10d
	jmp	.L2293
.L2274:
	movq	424(%rsp), %rax
	subq	%fs:40, %rax
	je	.L2276
.L2354:
	call	__stack_chk_fail@PLT
.L2276:
	leaq	.LC40(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.cfi_endproc
.LFE6364:
	.size	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text.unlikely
	.align 2
.LCOLDB41:
	.text
.LHOTB41:
	.align 2
	.p2align 4
	.type	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0, @function
_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0:
.LFB6895:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6895
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	16(%rdi), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%ecx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%fs:40, %r15
	movq	%r15, 120(%rsp)
	movq	%r8, %r15
	movq	%r14, (%rdi)
	movq	$0, 8(%rdi)
	movb	$0, 16(%rdi)
.LEHB13:
	call	_ZNSt6locale7classicEv@PLT
	movq	%rax, %rsi
	movq	%r15, %rdi
	call	_ZNKSt6localeeqERKS_@PLT
	testb	%al, %al
	je	.L2418
.L2364:
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2419
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2418:
	.cfi_restore_state
	leaq	_ZNSt7__cxx118numpunctIcE2idE(%rip), %rdi
	call	_ZNKSt6locale2id5_M_idEv@PLT
	movq	%rax, %rdx
	movq	(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rdx,8), %r15
	testq	%r15, %r15
	je	.L2366
	movq	(%r15), %rax
	movq	%r15, %rdi
	call	*16(%rax)
	movb	%al, 39(%rsp)
	movq	(%r15), %rax
	leaq	80(%rsp), %rdi
	movq	%r15, %rsi
	call	*32(%rax)
.LEHE13:
	cmpq	$0, 88(%rsp)
	jne	.L2398
	cmpb	$46, 39(%rsp)
	jne	.L2398
	movq	80(%rsp), %rdi
	leaq	96(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.L2380
	jmp	.L2364
	.p2align 4,,10
	.p2align 3
.L2398:
	testq	%r13, %r13
	je	.L2390
	movq	%r13, %rdx
	movl	$46, %esi
	movq	%rbp, %rdi
	call	memchr@PLT
	movsbl	%r12b, %esi
	movq	%r13, %rdx
	movq	%rbp, %rdi
	movq	%rax, 8(%rsp)
	call	memchr@PLT
	movq	8(%rsp), %rcx
	testq	%rcx, %rcx
	je	.L2372
	subq	%rbp, %rcx
	movq	%rcx, 40(%rsp)
	testq	%rax, %rax
	je	.L2391
.L2388:
	movq	40(%rsp), %rdx
	subq	%rbp, %rax
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, %r12
.L2373:
	cmpq	$-1, %r12
	je	.L2371
	movq	%r13, %rax
	subq	%r12, %rax
	movq	%rax, 8(%rsp)
.L2374:
	movq	8(%rsp), %rax
	movq	%rbx, %rdi
	leaq	(%rax,%r12,2), %rsi
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.LEHE14:
	movzbl	0(%rbp), %edx
	movq	(%rbx), %rsi
	leal	-32(%rdx), %eax
	movq	%rsi, 16(%rsp)
	cmpb	$13, %al
	ja	.L2393
	movl	$10241, %ecx
	btq	%rax, %rcx
	jnc	.L2393
	movb	%dl, (%rsi)
	leaq	1(%rbp), %r8
	movq	$1, 48(%rsp)
.L2375:
	leaq	0(%rbp,%r12), %rax
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rax, 24(%rsp)
	movq	(%r15), %rax
	movq	%r8, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%rdx, 56(%rsp)
.LEHB15:
	call	*24(%rax)
.LEHE15:
	movq	64(%rsp), %rcx
	movq	24(%rsp), %r9
	movsbl	%al, %esi
	movq	72(%rsp), %r8
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rdi
	addq	16(%rsp), %rdi
	call	_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_
	movq	%rax, %rcx
	cmpq	$0, 8(%rsp)
	je	.L2376
	cmpq	$-1, 40(%rsp)
	je	.L2377
	movzbl	39(%rsp), %eax
	addq	$1, %r12
	addq	$1, %rcx
	movb	%al, -1(%rcx)
	subq	%r12, %r13
	movq	%r13, 8(%rsp)
	jne	.L2420
.L2378:
	addq	8(%rsp), %rcx
.L2376:
	movq	(%rbx), %rax
	subq	16(%rsp), %rcx
	movq	%rcx, 8(%rbx)
	movb	$0, (%rax,%rcx)
	movq	80(%rsp), %rdi
	leaq	96(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L2364
.L2380:
	movq	96(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L2364
	.p2align 4,,10
	.p2align 3
.L2390:
	movq	$-1, 40(%rsp)
.L2371:
	movq	$0, 8(%rsp)
	movq	%r13, %r12
	jmp	.L2374
	.p2align 4,,10
	.p2align 3
.L2393:
	movq	$0, 48(%rsp)
	movq	%rbp, %r8
	jmp	.L2375
	.p2align 4,,10
	.p2align 3
.L2420:
	leaq	0(%rbp,%r12), %rax
	movq	%rax, 24(%rsp)
.L2377:
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	%rax, %rcx
	jmp	.L2378
	.p2align 4,,10
	.p2align 3
.L2372:
	movq	$-1, 40(%rsp)
	testq	%rax, %rax
	jne	.L2388
	jmp	.L2371
	.p2align 4,,10
	.p2align 3
.L2391:
	movq	%rcx, %r12
	jmp	.L2373
.L2419:
	call	__stack_chk_fail@PLT
.L2397:
	endbr64
	jmp	.L2381
.L2414:
	endbr64
	jmp	.L2415
.L2396:
	endbr64
	movq	%rax, %rbp
	jmp	.L2382
	.section	.gcc_except_table,"a",@progbits
.LLSDA6895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6895-.LLSDACSB6895
.LLSDACSB6895:
	.uleb128 .LEHB13-.LFB6895
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L2414-.LFB6895
	.uleb128 0
	.uleb128 .LEHB14-.LFB6895
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L2396-.LFB6895
	.uleb128 0
	.uleb128 .LEHB15-.LFB6895
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L2397-.LFB6895
	.uleb128 0
.LLSDACSE6895:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6895
	.type	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0.cold, @function
_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0.cold:
.LFSB6895:
.L2366:
	.cfi_def_cfa_offset 192
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2421
.LEHB16:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE16:
.L2381:
	xorl	%edx, %edx
	movq	%rax, %rbp
	movq	%rdx, 8(%rbx)
	movq	(%rbx), %rdx
	movb	$0, (%rdx)
.L2382:
	movq	80(%rsp), %rdi
	leaq	96(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.L2422
.L2385:
	movq	(%rbx), %rdi
	cmpq	%rdi, %r14
	je	.L2386
	movq	16(%rbx), %rsi
	addq	$1, %rsi
	call	_ZdlPvm@PLT
.L2386:
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2423
	movq	%rbp, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L2421:
	call	__stack_chk_fail@PLT
.L2395:
	endbr64
.L2415:
	movq	%rax, %rbp
	jmp	.L2385
.L2422:
	movq	96(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L2385
.L2423:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6895:
	.section	.gcc_except_table
.LLSDAC6895:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6895-.LLSDACSBC6895
.LLSDACSBC6895:
	.uleb128 .LEHB16-.LCOLDB41
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L2395-.LCOLDB41
	.uleb128 0
	.uleb128 .LEHB17-.LCOLDB41
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSEC6895:
	.section	.text.unlikely
	.text
	.size	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0, .-_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
	.section	.text.unlikely
	.size	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0.cold, .-_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0.cold
.LCOLDE41:
	.text
.LHOTE41:
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_.str1.1,"aMS",@progbits,1
.LC44:
	.string	"basic_string_view::substr"
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_.str1.8,"aMS",@progbits,1
	.align 8
.LC45:
	.string	"%s: __pos (which is %zu) > __size (which is %zu)"
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_.str1.1
.LC46:
	.string	"basic_string::insert"
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_.str1.8
	.align 8
.LC47:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6365:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6365
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$408, %rsp
	.cfi_def_cfa_offset 464
	movq	%rsi, 24(%rsp)
	movaps	%xmm0, (%rsp)
	movq	%fs:40, %r14
	movq	%r14, 392(%rsp)
	leaq	176(%rsp), %r14
	movb	$0, 176(%rsp)
	movzbl	1(%rdi), %eax
	movq	$0, 168(%rsp)
	movl	%eax, %edx
	movq	%r14, 160(%rsp)
	andl	$6, %edx
	je	.L2425
	cmpb	$2, %dl
	je	.L2681
	movq	$-1, %r15
	cmpb	$4, %dl
	je	.L2682
.L2427:
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$15, %edx
	cmpb	$8, %dl
	ja	.L2431
	leaq	.L2468(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L2468:
	.long	.L2476-.L2468
	.long	.L2475-.L2468
	.long	.L2474-.L2468
	.long	.L2473-.L2468
	.long	.L2472-.L2468
	.long	.L2471-.L2468
	.long	.L2470-.L2468
	.long	.L2469-.L2468
	.long	.L2467-.L2468
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L2425:
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$15, %edx
	cmpb	$8, %dl
	ja	.L2431
	leaq	.L2482(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L2482:
	.long	.L2487-.L2482
	.long	.L2486-.L2482
	.long	.L2485-.L2482
	.long	.L2592-.L2482
	.long	.L2593-.L2482
	.long	.L2594-.L2482
	.long	.L2595-.L2482
	.long	.L2596-.L2482
	.long	.L2597-.L2482
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L2487:
	leaq	384(%rsp), %r12
	leaq	257(%rsp), %rbp
	movdqa	(%rsp), %xmm0
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZSt8to_charsPcS_DF128_@PLT
	cmpl	$75, %edx
	je	.L2493
	movb	$101, 94(%rsp)
	movq	%rax, %rbx
	movl	$6, %r15d
	movb	$0, 32(%rsp)
	movq	%r12, 56(%rsp)
.L2494:
	movaps	(%rsp), %xmm2
	movzbl	0(%r13), %ecx
	movmskps	%xmm2, %eax
	testb	$8, %al
	jne	.L2671
	movl	%ecx, %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	.L2683
	movq	$0, 48(%rsp)
	cmpb	$12, %al
	je	.L2684
.L2512:
	movq	%rbx, %r12
	subq	%rbp, %r12
	testb	$16, %cl
	je	.L2516
	movdqa	(%rsp), %xmm0
	movdqa	.LC43(%rip), %xmm1
	movb	%cl, 80(%rsp)
	pand	.LC42(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	call	__unordtf2@PLT
	movzbl	80(%rsp), %ecx
	testq	%rax, %rax
	jne	.L2516
	movdqa	.LC43(%rip), %xmm1
	movdqa	64(%rsp), %xmm0
	call	__gttf2@PLT
	movzbl	80(%rsp), %ecx
	testq	%rax, %rax
	jg	.L2516
	testq	%r12, %r12
	je	.L2607
	movq	%r12, %rdx
	movl	$46, %esi
	movq	%rbp, %rdi
	call	memchr@PLT
	movzbl	80(%rsp), %ecx
	testq	%rax, %rax
	je	.L2518
	subq	%rbp, %rax
	movq	%rax, %r9
	cmpq	$-1, %rax
	je	.L2518
	leaq	1(%rax), %r8
	cmpq	%r12, %r8
	jnb	.L2685
	movsbl	94(%rsp), %esi
	movq	%r12, %rdx
	leaq	0(%rbp,%r8), %rdi
	movb	%cl, 95(%rsp)
	subq	%r8, %rdx
	movq	%r8, 80(%rsp)
	movq	%rax, 64(%rsp)
	call	memchr@PLT
	movq	80(%rsp), %r8
	movq	64(%rsp), %r9
	testq	%rax, %rax
	movzbl	95(%rsp), %ecx
	je	.L2610
	subq	%rbp, %rax
	movq	%rax, %r10
	cmpq	$-1, %rax
	cmove	%r12, %r10
.L2523:
	xorl	%r11d, %r11d
	cmpq	%r9, %r10
	sete	%r11b
	cmpb	$0, 32(%rsp)
	je	.L2612
	movq	48(%rsp), %rax
	cmpb	$48, 0(%rbp,%rax)
	je	.L2524
.L2521:
	movq	%r10, %rax
	subq	48(%rsp), %rax
	subq	$1, %rax
.L2525:
	testq	%r15, %r15
	jne	.L2527
	.p2align 4
	.p2align 3
.L2520:
	testq	%r11, %r11
	je	.L2516
.L2526:
	cmpq	$0, 168(%rsp)
	jne	.L2528
	movq	56(%rsp), %rax
	subq	%rbx, %rax
	cmpq	%r11, %rax
	jnb	.L2529
.L2528:
	leaq	160(%rsp), %rax
	leaq	(%r12,%r11), %rsi
	movq	%r10, 56(%rsp)
	movq	%rax, %rdi
	movq	%r9, 48(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rax, 80(%rsp)
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	168(%rsp), %rcx
	movq	32(%rsp), %r11
	movq	48(%rsp), %r9
	movq	56(%rsp), %r10
	testq	%rcx, %rcx
	jne	.L2533
	cmpq	%r12, %r10
	movq	%r12, %r8
	movq	80(%rsp), %rdi
	movq	%rbp, %rcx
	cmovbe	%r10, %r8
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r10, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0
	movq	32(%rsp), %r10
	cmpq	%r10, 48(%rsp)
	je	.L2686
	movq	168(%rsp), %rsi
	testq	%r15, %r15
	je	.L2680
.L2584:
	movq	80(%rsp), %rdi
	movl	$48, %r8d
	movq	%r15, %rcx
	xorl	%edx, %edx
	movq	%r10, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
.LEHE18:
	movq	32(%rsp), %r10
.L2680:
	cmpq	%r10, %r12
	jb	.L2687
	movq	168(%rsp), %rsi
	subq	%r10, %r12
	leaq	0(%rbp,%r10), %rcx
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%r12, %rax
	jb	.L2688
	movq	160(%rsp), %rax
	movl	$15, %edx
	leaq	(%r12,%rsi), %rbx
	cmpq	%r14, %rax
	cmovne	176(%rsp), %rdx
	cmpq	%rbx, %rdx
	jb	.L2541
	testq	%r12, %r12
	je	.L2542
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r12
	je	.L2689
	movq	%r12, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	movq	160(%rsp), %rax
.L2542:
	movq	%rbx, 168(%rsp)
	movb	$0, (%rax,%rbx)
	jmp	.L2544
	.p2align 4,,10
	.p2align 3
.L2516:
	leaq	208(%rsp), %rbx
	andl	$32, %ecx
	movq	$0, 200(%rsp)
	movq	%rbx, 192(%rsp)
	movb	$0, 208(%rsp)
	jne	.L2547
.L2549:
	movzwl	0(%r13), %eax
	movq	%rbp, %r15
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L2690
.L2559:
	cmpw	$256, %ax
	je	.L2561
.L2564:
	movq	24(%rsp), %rax
	movq	16(%rax), %r13
	testq	%r12, %r12
	jne	.L2691
.L2566:
	movq	192(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L2569
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L2569:
	movq	160(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L2570
	movq	176(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L2570:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	addq	$408, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2684:
	.cfi_restore_state
	movb	$32, -1(%rbp)
	movzbl	0(%r13), %ecx
	subq	$1, %rbp
	.p2align 4
	.p2align 3
.L2671:
	movq	$1, 48(%rsp)
	jmp	.L2512
	.p2align 4,,10
	.p2align 3
.L2547:
	movdqa	(%rsp), %xmm0
	movdqa	.LC43(%rip), %xmm1
	pand	.LC42(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	call	__unordtf2@PLT
	testq	%rax, %rax
	jne	.L2549
	movdqa	.LC43(%rip), %xmm1
	movdqa	32(%rsp), %xmm0
	call	__gttf2@PLT
	testq	%rax, %rax
	jg	.L2549
.L2588:
	movq	24(%rsp), %rax
	leaq	24(%rax), %rsi
	cmpb	$0, 32(%rax)
	je	.L2692
.L2550:
	leaq	128(%rsp), %rdi
	call	_ZNSt6localeC1ERKS_@PLT
	movsbl	94(%rsp), %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	leaq	224(%rsp), %rdi
	leaq	128(%rsp), %r8
.LEHB19:
	call	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
.LEHE19:
	leaq	128(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
	movq	232(%rsp), %rdx
	testq	%rdx, %rdx
	jne	.L2693
	movq	224(%rsp), %rdi
	leaq	240(%rsp), %rax
	cmpq	%rax, %rdi
	movq	%rbp, %rax
	je	.L2558
.L2577:
	movq	%rax, 32(%rsp)
	movq	240(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rax
.L2558:
	movq	%rbp, %r15
	movq	%rax, %rbp
	movzwl	0(%r13), %eax
	andw	$384, %ax
	cmpw	$128, %ax
	jne	.L2559
.L2690:
	movzwl	4(%r13), %r8d
.L2560:
	cmpq	%r8, %r12
	jnb	.L2564
	movq	24(%rsp), %rax
	movl	8(%r13), %r9d
	movq	16(%rax), %rdi
	movzbl	0(%r13), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	jne	.L2618
	testb	$64, %al
	je	.L2620
	movdqa	(%rsp), %xmm0
	movdqa	.LC43(%rip), %xmm1
	movq	%rdi, 48(%rsp)
	pand	.LC42(%rip), %xmm0
	movq	%r8, 24(%rsp)
	movaps	%xmm0, 32(%rsp)
	call	__unordtf2@PLT
	movq	24(%rsp), %r8
	movq	48(%rsp), %rdi
	testq	%rax, %rax
	jne	.L2620
	movdqa	.LC43(%rip), %xmm1
	movdqa	32(%rsp), %xmm0
	movq	%rdi, 24(%rsp)
	movq	%r8, (%rsp)
	call	__gttf2@PLT
	movq	(%rsp), %r8
	movq	24(%rsp), %rdi
	testq	%rax, %rax
	jg	.L2620
	movzbl	(%r15), %eax
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdx
	cmpb	$15, (%rdx,%rax)
	jbe	.L2621
	movq	24(%rdi), %rax
	movzbl	0(%rbp), %edx
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%dl, (%rax)
	movq	24(%rdi), %rax
	subq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	je	.L2694
.L2568:
	addq	$1, %rbp
	leaq	-1(%r12), %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L2567
	.p2align 4,,10
	.p2align 3
.L2691:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
.LEHB20:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L2566
	.p2align 4,,10
	.p2align 3
.L2681:
	movzwl	6(%rdi), %r15d
	jmp	.L2427
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L2695:
	addq	$1, %r8
	cmpq	%r12, %r8
	jnb	.L2672
.L2524:
	cmpb	$48, 0(%rbp,%r8)
	je	.L2695
	jmp	.L2522
	.p2align 4,,10
	.p2align 3
.L2607:
	xorl	%r9d, %r9d
.L2517:
	cmpb	$0, 32(%rsp)
	je	.L2615
	testq	%r15, %r15
	je	.L2616
	movq	%r9, %rax
	movq	%r9, %r10
	subq	48(%rsp), %rax
	movl	$1, %r11d
.L2527:
	subq	%rax, %r15
	addq	%r15, %r11
	jmp	.L2520
	.p2align 4,,10
	.p2align 3
.L2618:
	movq	%r12, %rax
.L2567:
	movq	%rbp, %rdx
	movq	%rax, %rsi
	subq	%r12, %r8
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
.LEHE20:
	movq	%rax, %r13
	jmp	.L2566
	.p2align 4,,10
	.p2align 3
.L2486:
	andl	$120, %eax
	movl	$101, %edx
	movb	$0, 48(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 94(%rsp)
.L2488:
	leaq	384(%rsp), %r12
	leaq	257(%rsp), %rbp
	movl	$4, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZSt8to_charsPcS_DF128_St12chars_format@PLT
	movq	%rax, %rbx
	cmpl	$75, %edx
	je	.L2492
	movb	$0, 32(%rsp)
	movl	$6, %r15d
.L2491:
	movq	%r12, 56(%rsp)
.L2509:
	cmpb	$0, 48(%rsp)
	je	.L2494
	cmpq	%rbx, %rbp
	je	.L2494
	movq	%rbp, %r12
	.p2align 4
	.p2align 3
.L2514:
	movsbl	(%r12), %edi
	addq	$1, %r12
	call	toupper@PLT
	movb	%al, -1(%r12)
	cmpq	%r12, %rbx
	jne	.L2514
	jmp	.L2494
	.p2align 4,,10
	.p2align 3
.L2475:
	andl	$120, %eax
	movl	$112, %edx
	movb	$0, 48(%rsp)
	cmpb	$16, %al
	movl	$101, %eax
	cmovne	%edx, %eax
	movb	%al, 94(%rsp)
.L2477:
	movl	$4, 56(%rsp)
	movl	%r15d, %ecx
	movb	$0, 32(%rsp)
	jmp	.L2587
	.p2align 4,,10
	.p2align 3
.L2467:
	movl	%r15d, %ecx
.L2481:
	movb	$69, 94(%rsp)
	movb	$1, 48(%rsp)
.L2478:
	movl	$3, 56(%rsp)
	movb	$1, 32(%rsp)
.L2587:
	movl	56(%rsp), %edx
	movdqa	(%rsp), %xmm0
	leaq	384(%rsp), %r12
	leaq	257(%rsp), %rbp
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZSt8to_charsPcS_DF128_St12chars_formati@PLT
	movq	%rax, %rbx
	cmpl	$75, %edx
	jne	.L2491
	cmpl	$2, 56(%rsp)
	jne	.L2696
	leaq	160(%rsp), %rax
	leaq	4940(%r15), %rsi
	movq	%rax, 80(%rsp)
	cmpq	$128, %rsi
	jbe	.L2500
.L2676:
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	160(%rsp), %rax
	movl	%r15d, %r12d
.L2586:
	cmpq	%r14, %rax
	je	.L2605
	movq	176(%rsp), %rax
	leaq	(%rax,%rax), %rbx
.L2507:
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.LEHE21:
	movq	160(%rsp), %rbp
	movl	56(%rsp), %edx
	movl	%r12d, %ecx
	movdqa	(%rsp), %xmm0
	leaq	-1(%rbp,%rbx), %rsi
	leaq	1(%rbp), %rdi
	call	_ZSt8to_charsPcS_DF128_St12chars_formati@PLT
	movq	%rax, %rbx
	testl	%edx, %edx
	je	.L2503
	movq	160(%rsp), %rax
	movq	$0, 168(%rsp)
	movb	$0, (%rax)
	movq	160(%rsp), %rax
	cmpl	$75, %edx
	je	.L2586
.L2505:
	leaq	1(%rax), %rbp
	addq	168(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L2509
	.p2align 4,,10
	.p2align 3
.L2476:
	movl	$3, 56(%rsp)
	movl	%r15d, %ecx
	movb	$101, 94(%rsp)
	movb	$0, 32(%rsp)
	movb	$0, 48(%rsp)
	jmp	.L2587
	.p2align 4,,10
	.p2align 3
.L2471:
	movb	$0, 48(%rsp)
	movl	%r15d, %ecx
.L2479:
	movl	$2, 56(%rsp)
	movb	$101, 94(%rsp)
	movb	$0, 32(%rsp)
	jmp	.L2587
	.p2align 4,,10
	.p2align 3
.L2472:
	movl	%r15d, %ecx
.L2484:
	movb	$69, 94(%rsp)
	movb	$1, 48(%rsp)
.L2480:
	movl	$1, 56(%rsp)
	movb	$0, 32(%rsp)
	jmp	.L2587
	.p2align 4,,10
	.p2align 3
.L2473:
	movb	$101, 94(%rsp)
	movl	%r15d, %ecx
	movb	$0, 48(%rsp)
	jmp	.L2480
	.p2align 4,,10
	.p2align 3
.L2474:
	andl	$120, %eax
	movl	$80, %edx
	movb	$1, 48(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 94(%rsp)
	jmp	.L2477
	.p2align 4,,10
	.p2align 3
.L2595:
	movl	$6, %ecx
	movl	$6, %r15d
.L2483:
	movb	$1, 48(%rsp)
	jmp	.L2479
	.p2align 4,,10
	.p2align 3
.L2596:
	movb	$101, 94(%rsp)
	movl	$6, %ecx
	movl	$6, %r15d
	movb	$0, 48(%rsp)
	jmp	.L2478
	.p2align 4,,10
	.p2align 3
.L2469:
	movb	$101, 94(%rsp)
	movl	%r15d, %ecx
	movb	$0, 48(%rsp)
	jmp	.L2478
	.p2align 4,,10
	.p2align 3
.L2470:
	movl	%r15d, %ecx
	jmp	.L2483
	.p2align 4,,10
	.p2align 3
.L2592:
	movb	$101, 94(%rsp)
	movl	$6, %ecx
	movl	$6, %r15d
	movb	$0, 48(%rsp)
	jmp	.L2480
	.p2align 4,,10
	.p2align 3
.L2593:
	movl	$6, %ecx
	movl	$6, %r15d
	jmp	.L2484
	.p2align 4,,10
	.p2align 3
.L2594:
	movb	$0, 48(%rsp)
	movl	$6, %ecx
	movl	$6, %r15d
	jmp	.L2479
	.p2align 4,,10
	.p2align 3
.L2597:
	movl	$6, %ecx
	movl	$6, %r15d
	jmp	.L2481
	.p2align 4,,10
	.p2align 3
.L2485:
	andl	$120, %eax
	movl	$80, %edx
	movb	$1, 48(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 94(%rsp)
	jmp	.L2488
	.p2align 4,,10
	.p2align 3
.L2620:
	movq	%r12, %rax
	movl	$2, %ecx
	movl	$32, %r9d
	jmp	.L2567
	.p2align 4,,10
	.p2align 3
.L2683:
	movb	$43, -1(%rbp)
	subq	$1, %rbp
	movzbl	0(%r13), %ecx
	movq	$1, 48(%rsp)
	jmp	.L2512
	.p2align 4,,10
	.p2align 3
.L2561:
	movzwl	4(%r13), %edi
	movq	24(%rsp), %rsi
.LEHB22:
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
.LEHE22:
	movq	%rax, %r8
	jmp	.L2560
	.p2align 4,,10
	.p2align 3
.L2682:
	movq	%rsi, %rbx
	movzwl	6(%rdi), %esi
	movzbl	(%rbx), %edx
	movq	%rdx, %rcx
	andl	$15, %ecx
	cmpq	%rcx, %rsi
	jnb	.L2428
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 32(%rsp)
	leaq	(%rsi,%rsi,4), %rcx
	salq	$4, %rsi
	addq	8(%rbx), %rsi
	shrq	$4, %rdx
	movdqa	(%rsi), %xmm0
	shrq	%cl, %rdx
	andl	$31, %edx
	movaps	%xmm0, 128(%rsp)
.L2429:
	movb	%dl, 144(%rsp)
	leaq	.L2433(%rip), %rcx
	movzbl	%dl, %edx
	movdqa	128(%rsp), %xmm0
	movslq	(%rcx,%rdx,4), %rdx
	movaps	%xmm0, 96(%rsp)
	movdqa	144(%rsp), %xmm0
	addq	%rcx, %rdx
	movaps	%xmm0, 112(%rsp)
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L2433:
	.long	.L2430-.L2433
	.long	.L2448-.L2433
	.long	.L2447-.L2433
	.long	.L2446-.L2433
	.long	.L2445-.L2433
	.long	.L2444-.L2433
	.long	.L2443-.L2433
	.long	.L2442-.L2433
	.long	.L2441-.L2433
	.long	.L2440-.L2433
	.long	.L2439-.L2433
	.long	.L2438-.L2433
	.long	.L2437-.L2433
	.long	.L2436-.L2433
	.long	.L2435-.L2433
	.long	.L2434-.L2433
	.long	.L2432-.L2433
	.long	.L2432-.L2433
	.long	.L2432-.L2433
	.long	.L2432-.L2433
	.long	.L2432-.L2433
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L2685:
	xorl	%r11d, %r11d
	cmpq	%rax, %r12
	movq	%r12, %r10
	sete	%r11b
	cmpb	$0, 32(%rsp)
	jne	.L2697
.L2612:
	xorl	%r15d, %r15d
	jmp	.L2520
	.p2align 4,,10
	.p2align 3
.L2518:
	movsbl	94(%rsp), %esi
	movq	%r12, %rdx
	movq	%rbp, %rdi
	movb	%cl, 80(%rsp)
	call	memchr@PLT
	movzbl	80(%rsp), %ecx
	testq	%rax, %rax
	je	.L2613
	subq	%rbp, %rax
	movq	%rax, %r9
	cmpq	$-1, %rax
	cmove	%r12, %r9
	jmp	.L2517
	.p2align 4,,10
	.p2align 3
.L2693:
	movq	192(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L2698
	movq	224(%rsp), %rax
	leaq	240(%rsp), %r15
	cmpq	%r15, %rax
	je	.L2578
	movq	208(%rsp), %rcx
	movq	%rdx, %xmm0
	movq	%rax, 192(%rsp)
	movhps	240(%rsp), %xmm0
	movups	%xmm0, 200(%rsp)
	testq	%rdi, %rdi
	je	.L2557
	movq	%rdi, 224(%rsp)
	movq	%rcx, 240(%rsp)
.L2556:
	movb	$0, (%rdi)
	movq	224(%rsp), %rdi
	movq	200(%rsp), %r12
	movq	192(%rsp), %rax
	cmpq	%r15, %rdi
	jne	.L2577
	jmp	.L2558
	.p2align 4,,10
	.p2align 3
.L2692:
	movq	%rsi, %rdi
	movq	%rsi, 32(%rsp)
	call	_ZNSt6localeC1Ev@PLT
	movq	24(%rsp), %rax
	movq	32(%rsp), %rsi
	movb	$1, 32(%rax)
	jmp	.L2550
	.p2align 4,,10
	.p2align 3
.L2428:
	andl	$15, %edx
	jne	.L2430
	movq	(%rbx), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 32(%rsp)
	shrq	$4, %rdx
	cmpq	%rdx, %rsi
	jb	.L2699
.L2430:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
.LEHB23:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L2533:
	cmpq	%r10, %rcx
	jb	.L2700
	movq	80(%rsp), %rdi
	movl	$48, %r8d
	movq	%r11, %rcx
	xorl	%edx, %edx
	movq	%r10, %rsi
	movq	%r9, 48(%rsp)
	movq	%r10, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
	movq	48(%rsp), %r9
	cmpq	32(%rsp), %r9
	jne	.L2544
	movq	160(%rsp), %rax
	movb	$46, (%rax,%r9)
	.p2align 4
	.p2align 3
.L2544:
	movq	168(%rsp), %r12
	movq	160(%rsp), %rbp
.L2532:
	leaq	208(%rsp), %rbx
	movb	$0, 208(%rsp)
	movq	%rbx, 192(%rsp)
	movq	$0, 200(%rsp)
	testb	$32, 0(%r13)
	je	.L2549
	jmp	.L2588
.L2615:
	movq	%r9, %r10
	movl	$1, %r11d
	xorl	%r15d, %r15d
	jmp	.L2526
.L2696:
	leaq	160(%rsp), %rax
	leaq	8(%r15), %rsi
	movq	%rax, 80(%rsp)
	cmpq	$128, %rsi
	ja	.L2676
.L2500:
	movl	$256, %esi
	jmp	.L2676
.L2697:
	movq	48(%rsp), %rax
	cmpb	$48, 0(%rbp,%rax)
	jne	.L2521
.L2672:
	movq	$-1, %r8
.L2522:
	movq	%r10, %rax
	subq	%r8, %rax
	jmp	.L2525
.L2613:
	movq	%r12, %r9
	jmp	.L2517
.L2698:
	movq	224(%rsp), %rax
	leaq	240(%rsp), %r15
	cmpq	%r15, %rax
	je	.L2578
	movq	%rax, 192(%rsp)
	movq	%rdx, %xmm0
	movhps	240(%rsp), %xmm0
	movups	%xmm0, 200(%rsp)
.L2557:
	movq	%r15, 224(%rsp)
	leaq	240(%rsp), %r15
	movq	%r15, %rdi
	jmp	.L2556
.L2443:
	movq	96(%rsp), %r15
	jmp	.L2427
.L2444:
	movq	96(%rsp), %rdx
	testq	%rdx, %rdx
	js	.L2455
	movq	%rdx, %r15
	jmp	.L2427
.L2445:
	movl	96(%rsp), %r15d
	jmp	.L2427
.L2446:
	movl	96(%rsp), %edx
	testl	%edx, %edx
	js	.L2452
	movslq	%edx, %r15
	jmp	.L2427
.L2604:
	movb	$0, 32(%rsp)
	movl	$6, %r15d
.L2503:
	movq	160(%rsp), %rdx
	movq	%rbx, %rax
	subq	%rbp, %rax
	movq	%rax, 168(%rsp)
	movb	$0, (%rdx,%rax)
	movq	160(%rsp), %rax
	leaq	1(%rax), %rbp
	addq	168(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.L2509
.L2493:
	leaq	160(%rsp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movq	%rax, 80(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movb	$101, 94(%rsp)
	movq	160(%rsp), %rax
	movb	$0, 48(%rsp)
.L2504:
	cmpq	%r14, %rax
	je	.L2601
	movq	176(%rsp), %rax
	leaq	(%rax,%rax), %rbx
.L2502:
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	160(%rsp), %rbp
	movdqa	(%rsp), %xmm0
	leaq	-1(%rbp,%rbx), %rsi
	leaq	1(%rbp), %rdi
	call	_ZSt8to_charsPcS_DF128_@PLT
	movq	%rax, %rbx
	testl	%edx, %edx
	je	.L2604
	movq	160(%rsp), %rax
	movq	$0, 168(%rsp)
	movb	$0, (%rax)
	movq	160(%rsp), %rax
	cmpl	$75, %edx
	je	.L2504
.L2673:
	movb	$0, 32(%rsp)
	movl	$6, %r15d
	jmp	.L2505
.L2529:
	leaq	(%r10,%r11), %rdi
	leaq	0(%rbp,%r10), %rbx
	movq	%r12, %rdx
	movq	%r9, 56(%rsp)
	subq	%r10, %rdx
	addq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r11, 48(%rsp)
	movq	%r10, 32(%rsp)
	call	memmove@PLT
	movq	56(%rsp), %r9
	cmpq	32(%rsp), %r9
	movq	48(%rsp), %r11
	jne	.L2531
	movb	$46, (%rbx)
	leaq	1(%rbp,%r9), %rbx
.L2531:
	movq	%r15, %rdx
	movl	$48, %esi
	movq	%rbx, %rdi
	movq	%r11, 32(%rsp)
	call	memset@PLT
	addq	32(%rsp), %r12
	jmp	.L2532
.L2616:
	movq	%r9, %r10
	movl	$1, %r11d
	jmp	.L2526
.L2610:
	movq	%r12, %r10
	jmp	.L2523
.L2621:
	movq	%r12, %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L2567
.L2541:
	movq	80(%rsp), %rdi
	movq	%r12, %r8
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	160(%rsp), %rax
	jmp	.L2542
.L2699:
	salq	$5, %rsi
	addq	8(%rbx), %rsi
	movdqu	(%rsi), %xmm0
	movaps	%xmm0, 128(%rsp)
	movzbl	16(%rsi), %edx
	movb	%dl, 144(%rsp)
	movzbl	16(%rsi), %edx
	jmp	.L2429
.L2686:
	movq	80(%rsp), %rdi
	movl	$46, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
.LEHE23:
	testq	%r15, %r15
	movq	32(%rsp), %r10
	je	.L2680
	movq	168(%rsp), %rsi
	jmp	.L2584
.L2601:
	movl	$30, %ebx
	jmp	.L2502
.L2605:
	movl	$30, %ebx
	jmp	.L2507
.L2689:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	160(%rsp), %rax
	jmp	.L2542
.L2578:
	cmpq	$1, %rdx
	je	.L2701
	movq	%r15, %rsi
	call	memcpy@PLT
.L2555:
	movq	232(%rsp), %rax
	movq	192(%rsp), %rdx
	movq	%rax, 200(%rsp)
	movb	$0, (%rdx,%rax)
	movq	224(%rsp), %rdi
	jmp	.L2556
.L2694:
	movq	(%rdi), %rax
	movq	%r8, 24(%rsp)
	movq	%rdi, (%rsp)
.LEHB24:
	call	*(%rax)
.LEHE24:
	movq	24(%rsp), %r8
	movq	(%rsp), %rdi
	jmp	.L2568
.L2701:
	movzbl	240(%rsp), %eax
	movb	%al, (%rdi)
	jmp	.L2555
.L2571:
	leaq	128(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
.L2572:
	movq	192(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L2574
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L2574:
	movq	160(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L2575
	movq	176(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L2575:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	je	.L2576
.L2661:
	call	__stack_chk_fail@PLT
.L2492:
	leaq	160(%rsp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movq	%rax, 80(%rsp)
.LEHB25:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	160(%rsp), %rax
.L2501:
	cmpq	%r14, %rax
	je	.L2603
	movq	176(%rsp), %rax
	leaq	(%rax,%rax), %rbx
.L2506:
	movq	80(%rsp), %rdi
	movq	%rbx, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	160(%rsp), %rbp
	movdqa	(%rsp), %xmm0
	movl	$4, %edx
	leaq	-1(%rbp,%rbx), %rsi
	leaq	1(%rbp), %rdi
	call	_ZSt8to_charsPcS_DF128_St12chars_format@PLT
	movq	%rax, %rbx
	testl	%edx, %edx
	je	.L2604
	movq	160(%rsp), %rax
	movq	$0, 168(%rsp)
	movb	$0, (%rax)
	movq	160(%rsp), %rax
	cmpl	$75, %edx
	jne	.L2673
	jmp	.L2501
.L2603:
	movl	$30, %ebx
	jmp	.L2506
.L2625:
	endbr64
	movq	%rax, %rbp
	jmp	.L2572
.L2431:
.L2623:
	endbr64
	movq	%rax, %rbp
	jmp	.L2574
.L2687:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	movq	%r12, %rcx
	movq	%r10, %rdx
	leaq	.LC44(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC45(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L2624:
	endbr64
	movq	%rax, %rbp
	jmp	.L2571
.L2452:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.LEHE25:
.L2576:
	movq	%rbp, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L2435:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
.LEHB27:
	call	_ZSt20__throw_format_errorPKc
.L2436:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2437:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2438:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2439:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2440:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2441:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2442:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2455:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2447:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2448:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2700:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	movq	%r10, %rdx
	leaq	.LC46(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	xorl	%eax, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L2434:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2688:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L2432:
	movq	392(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2661
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.LEHE27:
	.cfi_endproc
.LFE6365:
	.section	.gcc_except_table
.LLSDA6365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6365-.LLSDACSB6365
.LLSDACSB6365:
	.uleb128 .LEHB18-.LFB6365
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L2623-.LFB6365
	.uleb128 0
	.uleb128 .LEHB19-.LFB6365
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L2624-.LFB6365
	.uleb128 0
	.uleb128 .LEHB20-.LFB6365
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L2625-.LFB6365
	.uleb128 0
	.uleb128 .LEHB21-.LFB6365
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L2623-.LFB6365
	.uleb128 0
	.uleb128 .LEHB22-.LFB6365
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L2625-.LFB6365
	.uleb128 0
	.uleb128 .LEHB23-.LFB6365
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L2623-.LFB6365
	.uleb128 0
	.uleb128 .LEHB24-.LFB6365
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L2625-.LFB6365
	.uleb128 0
	.uleb128 .LEHB25-.LFB6365
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L2623-.LFB6365
	.uleb128 0
	.uleb128 .LEHB26-.LFB6365
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB6365
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L2623-.LFB6365
	.uleb128 0
.LLSDACSE6365:
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.size	_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6338:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6338
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$328, %rsp
	.cfi_def_cfa_offset 384
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %r12
	movq	%r12, 312(%rsp)
	leaq	96(%rsp), %r12
	movb	$0, 96(%rsp)
	movzbl	1(%rdi), %eax
	movq	$0, 88(%rsp)
	movl	%eax, %edx
	movq	%r12, 80(%rsp)
	andl	$6, %edx
	je	.L2703
	cmpb	$2, %dl
	je	.L2920
	movq	$-1, %rbp
	cmpb	$4, %dl
	je	.L2921
.L2705:
	movl	%eax, %edx
	leaq	.L2708(%rip), %rcx
	shrb	$3, %dl
	andl	$15, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L2708:
	.long	.L2822-.L2708
	.long	.L2715-.L2708
	.long	.L2714-.L2708
	.long	.L2713-.L2708
	.long	.L2905-.L2708
	.long	.L2711-.L2708
	.long	.L2906-.L2708
	.long	.L2709-.L2708
	.long	.L2907-.L2708
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L2703:
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$15, %edx
	cmpb	$8, %dl
	ja	.L2706
	leaq	.L2817(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L2817:
	.long	.L2723-.L2817
	.long	.L2718-.L2817
	.long	.L2818-.L2817
	.long	.L2852-.L2817
	.long	.L2853-.L2817
	.long	.L2854-.L2817
	.long	.L2855-.L2817
	.long	.L2856-.L2817
	.long	.L2857-.L2817
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L2723:
	leaq	304(%rsp), %r13
	leaq	177(%rsp), %r15
	pushq	392(%rsp)
	.cfi_def_cfa_offset 392
	pushq	392(%rsp)
	.cfi_def_cfa_offset 400
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	_ZSt8to_charsPcS_e@PLT
	popq	%rbp
	.cfi_def_cfa_offset 392
	popq	%r14
	.cfi_def_cfa_offset 384
	cmpl	$75, %edx
	je	.L2829
	movb	$101, 62(%rsp)
	movq	%rax, %r14
	movl	$6, %ebp
	movb	$0, 16(%rsp)
	movq	%r13, 32(%rsp)
.L2724:
	fldt	384(%rsp)
	movzbl	(%rbx), %r8d
	fxam
	fnstsw	%ax
	fstp	%st(0)
	testb	$2, %ah
	jne	.L2910
	movl	%r8d, %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	.L2922
	xorl	%ecx, %ecx
	cmpb	$12, %al
	je	.L2923
.L2741:
	movq	%r14, %r13
	subq	%r15, %r13
	testb	$16, %r8b
	je	.L2745
	fldt	384(%rsp)
	fabs
	fldt	.LC48(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	.L2745
	testq	%r13, %r13
	je	.L2836
	movq	%r13, %rdx
	movl	$46, %esi
	movq	%r15, %rdi
	movb	%r8b, 40(%rsp)
	movq	%rcx, 24(%rsp)
	call	memchr@PLT
	movq	24(%rsp), %rcx
	movzbl	40(%rsp), %r8d
	testq	%rax, %rax
	je	.L2747
	subq	%r15, %rax
	movq	%rax, 24(%rsp)
	cmpq	$-1, %rax
	je	.L2747
	leaq	1(%rax), %r11
	cmpq	%r13, %r11
	jnb	.L2924
	movsbl	62(%rsp), %esi
	movq	%r13, %rdx
	leaq	(%r15,%r11), %rdi
	movb	%r8b, 63(%rsp)
	subq	%r11, %rdx
	movq	%rcx, 48(%rsp)
	movq	%r11, 40(%rsp)
	call	memchr@PLT
	movq	40(%rsp), %r11
	movq	48(%rsp), %rcx
	testq	%rax, %rax
	movzbl	63(%rsp), %r8d
	je	.L2839
	subq	%r15, %rax
	movq	%rax, %r10
	cmpq	$-1, %rax
	cmove	%r13, %r10
.L2752:
	xorl	%r9d, %r9d
	cmpq	24(%rsp), %r10
	sete	%r9b
	cmpb	$0, 16(%rsp)
	je	.L2841
	cmpb	$48, (%r15,%rcx)
	je	.L2753
.L2750:
	movq	%r10, %rax
	subq	%rcx, %rax
	subq	$1, %rax
.L2754:
	testq	%rbp, %rbp
	jne	.L2756
	.p2align 4
	.p2align 3
.L2749:
	testq	%r9, %r9
	je	.L2745
.L2755:
	cmpq	$0, 88(%rsp)
	jne	.L2757
	movq	32(%rsp), %rax
	subq	%r14, %rax
	cmpq	%r9, %rax
	jnb	.L2758
.L2757:
	leaq	80(%rsp), %rax
	leaq	0(%r13,%r9), %rsi
	movq	%r10, 32(%rsp)
	movq	%rax, %rdi
	movq	%r9, 16(%rsp)
	movq	%rax, 40(%rsp)
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	88(%rsp), %rcx
	movq	16(%rsp), %r9
	movq	32(%rsp), %r10
	testq	%rcx, %rcx
	jne	.L2762
	cmpq	%r13, %r10
	movq	%r13, %r8
	movq	40(%rsp), %rdi
	movq	%r15, %rcx
	cmovbe	%r10, %r8
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0
	movq	16(%rsp), %r10
	cmpq	24(%rsp), %r10
	je	.L2925
	movq	88(%rsp), %rsi
	testq	%rbp, %rbp
	je	.L2919
.L2813:
	movq	40(%rsp), %rdi
	movl	$48, %r8d
	movq	%rbp, %rcx
	xorl	%edx, %edx
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
.LEHE28:
	movq	16(%rsp), %r10
.L2919:
	cmpq	%r10, %r13
	jb	.L2926
	movq	88(%rsp), %rsi
	subq	%r10, %r13
	leaq	(%r15,%r10), %rcx
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%r13, %rax
	jb	.L2927
	movq	80(%rsp), %rax
	movl	$15, %edx
	leaq	(%rsi,%r13), %rbp
	cmpq	%r12, %rax
	cmovne	96(%rsp), %rdx
	cmpq	%rbp, %rdx
	jb	.L2770
	testq	%r13, %r13
	je	.L2771
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r13
	je	.L2928
	movq	%r13, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	movq	80(%rsp), %rax
.L2771:
	movq	%rbp, 88(%rsp)
	movb	$0, (%rax,%rbp)
	jmp	.L2773
	.p2align 4,,10
	.p2align 3
.L2745:
	leaq	128(%rsp), %rbp
	andl	$32, %r8d
	movq	$0, 120(%rsp)
	movq	%rbp, 112(%rsp)
	movb	$0, 128(%rsp)
	jne	.L2776
.L2778:
	movzwl	(%rbx), %eax
	movq	%r15, %r14
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L2929
.L2788:
	cmpw	$256, %ax
	je	.L2790
.L2793:
	movq	8(%rsp), %rax
	movq	16(%rax), %rbx
	testq	%r13, %r13
	jne	.L2930
.L2795:
	movq	112(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L2798
	movq	128(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L2798:
	movq	80(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L2799
	movq	96(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L2799:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2897
	addq	$328, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2923:
	.cfi_restore_state
	movb	$32, -1(%r15)
	movzbl	(%rbx), %r8d
	subq	$1, %r15
	.p2align 4
	.p2align 3
.L2910:
	movl	$1, %ecx
	jmp	.L2741
	.p2align 4,,10
	.p2align 3
.L2776:
	fldt	384(%rsp)
	fabs
	fldt	.LC48(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	.L2778
.L2816:
	movq	8(%rsp), %rax
	leaq	24(%rax), %rsi
	cmpb	$0, 32(%rax)
	je	.L2931
.L2779:
	leaq	72(%rsp), %r14
	movq	%r14, %rdi
	call	_ZNSt6localeC1ERKS_@PLT
	movsbl	62(%rsp), %ecx
	movq	%r15, %rdx
	movq	%r13, %rsi
	leaq	144(%rsp), %rdi
	movq	%r14, %r8
.LEHB29:
	call	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
.LEHE29:
	movq	%r14, %rdi
	call	_ZNSt6localeD1Ev@PLT
	movq	152(%rsp), %rdx
	testq	%rdx, %rdx
	jne	.L2932
	movq	144(%rsp), %rdi
	leaq	160(%rsp), %rax
	cmpq	%rax, %rdi
	movq	%r15, %rax
	je	.L2787
.L2806:
	movq	%rax, 16(%rsp)
	movq	160(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	movq	16(%rsp), %rax
.L2787:
	movq	%r15, %r14
	movq	%rax, %r15
	movzwl	(%rbx), %eax
	andw	$384, %ax
	cmpw	$128, %ax
	jne	.L2788
.L2929:
	movzwl	4(%rbx), %r8d
.L2789:
	cmpq	%r8, %r13
	jnb	.L2793
	movq	8(%rsp), %rax
	movl	8(%rbx), %r9d
	movq	16(%rax), %rdi
	movzbl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	jne	.L2847
	testb	$64, %al
	je	.L2849
	fldt	384(%rsp)
	fabs
	fldt	.LC48(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jb	.L2849
	movzbl	(%r14), %eax
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdx
	cmpb	$15, (%rdx,%rax)
	jbe	.L2850
	movq	24(%rdi), %rax
	movzbl	(%r15), %edx
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%dl, (%rax)
	movq	24(%rdi), %rax
	subq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	je	.L2933
.L2797:
	addq	$1, %r15
	leaq	-1(%r13), %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L2796
	.p2align 4,,10
	.p2align 3
.L2930:
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rdi
.LEHB30:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L2795
	.p2align 4,,10
	.p2align 3
.L2920:
	movzwl	6(%rdi), %ebp
	jmp	.L2705
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L2934:
	addq	$1, %r11
	cmpq	%r13, %r11
	jnb	.L2911
.L2753:
	cmpb	$48, (%r15,%r11)
	je	.L2934
	jmp	.L2751
	.p2align 4,,10
	.p2align 3
.L2836:
	movq	$0, 24(%rsp)
.L2746:
	movq	24(%rsp), %r10
	cmpb	$0, 16(%rsp)
	je	.L2844
	testq	%rbp, %rbp
	je	.L2845
	movq	%r10, %rax
	movl	$1, %r9d
	subq	%rcx, %rax
.L2756:
	subq	%rax, %rbp
	addq	%rbp, %r9
	jmp	.L2749
	.p2align 4,,10
	.p2align 3
.L2847:
	movq	%r13, %rax
.L2796:
	movq	%r15, %rdx
	movq	%rax, %rsi
	subq	%r13, %r8
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
	movq	%rax, %rbx
	jmp	.L2795
	.p2align 4,,10
	.p2align 3
.L2857:
	movl	$6, %ebp
.L2907:
	movb	$69, 62(%rsp)
	movb	$1, 24(%rsp)
.L2707:
	movl	$3, 32(%rsp)
	movb	$1, 16(%rsp)
.L2717:
	leaq	304(%rsp), %r13
	leaq	177(%rsp), %r15
	movl	%ebp, %ecx
	pushq	392(%rsp)
	.cfi_def_cfa_offset 392
	pushq	392(%rsp)
	.cfi_def_cfa_offset 400
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	48(%rsp), %edx
	call	_ZSt8to_charsPcS_eSt12chars_formati@PLT
	popq	%rdi
	.cfi_def_cfa_offset 392
	popq	%r8
	.cfi_def_cfa_offset 384
	movq	%rax, %rcx
	cmpl	$75, %edx
	je	.L2935
.L2721:
	movq	%r13, 32(%rsp)
	movq	%rcx, %r14
.L2738:
	cmpb	$0, 24(%rsp)
	je	.L2724
	cmpq	%r14, %r15
	je	.L2724
	movq	%r15, %r13
	.p2align 4
	.p2align 3
.L2743:
	movsbl	0(%r13), %edi
	addq	$1, %r13
	call	toupper@PLT
	movb	%al, -1(%r13)
	cmpq	%r13, %r14
	jne	.L2743
	jmp	.L2724
	.p2align 4,,10
	.p2align 3
.L2854:
	movl	$6, %ebp
.L2711:
	movb	$0, 24(%rsp)
.L2710:
	movl	$2, 32(%rsp)
	movb	$101, 62(%rsp)
	movb	$0, 16(%rsp)
	jmp	.L2717
	.p2align 4,,10
	.p2align 3
.L2852:
	movl	$6, %ebp
.L2713:
	movb	$101, 62(%rsp)
	movb	$0, 24(%rsp)
.L2712:
	movl	$1, 32(%rsp)
	movb	$0, 16(%rsp)
	jmp	.L2717
	.p2align 4,,10
	.p2align 3
.L2853:
	movl	$6, %ebp
.L2905:
	movb	$69, 62(%rsp)
	movb	$1, 24(%rsp)
	jmp	.L2712
	.p2align 4,,10
	.p2align 3
.L2856:
	movl	$6, %ebp
.L2709:
	movb	$101, 62(%rsp)
	movb	$0, 24(%rsp)
	jmp	.L2707
	.p2align 4,,10
	.p2align 3
.L2855:
	movl	$6, %ebp
.L2906:
	movb	$1, 24(%rsp)
	jmp	.L2710
	.p2align 4,,10
	.p2align 3
.L2715:
	andl	$120, %eax
	movl	$4, 32(%rsp)
	cmpb	$16, %al
	je	.L2827
	movb	$112, 62(%rsp)
	movb	$0, 16(%rsp)
	movb	$0, 24(%rsp)
	jmp	.L2717
	.p2align 4,,10
	.p2align 3
.L2822:
	movl	$3, 32(%rsp)
	movb	$101, 62(%rsp)
	movb	$0, 16(%rsp)
	movb	$0, 24(%rsp)
	jmp	.L2717
	.p2align 4,,10
	.p2align 3
.L2714:
	andl	$120, %eax
	movl	$4, 32(%rsp)
	cmpb	$16, %al
	je	.L2825
	movb	$112, 62(%rsp)
	movb	$0, 16(%rsp)
	movb	$1, 24(%rsp)
	jmp	.L2717
	.p2align 4,,10
	.p2align 3
.L2718:
	andl	$120, %eax
	movl	$112, %edx
	movb	$0, 24(%rsp)
	cmpb	$16, %al
	movl	$101, %eax
	cmovne	%edx, %eax
	movb	%al, 62(%rsp)
.L2719:
	leaq	304(%rsp), %r13
	leaq	177(%rsp), %r15
	movl	$4, %edx
	pushq	392(%rsp)
	.cfi_def_cfa_offset 392
	pushq	392(%rsp)
	.cfi_def_cfa_offset 400
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	_ZSt8to_charsPcS_eSt12chars_format@PLT
	movq	%rax, %rcx
	popq	%rax
	.cfi_def_cfa_offset 392
	popq	%rsi
	.cfi_def_cfa_offset 384
	cmpl	$75, %edx
	je	.L2828
	movb	$0, 16(%rsp)
	movl	$6, %ebp
	jmp	.L2721
	.p2align 4,,10
	.p2align 3
.L2818:
	andl	$120, %eax
	movl	$80, %edx
	movb	$1, 24(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 62(%rsp)
	jmp	.L2719
	.p2align 4,,10
	.p2align 3
.L2849:
	movq	%r13, %rax
	movl	$2, %ecx
	movl	$32, %r9d
	jmp	.L2796
	.p2align 4,,10
	.p2align 3
.L2922:
	movb	$43, -1(%r15)
	movl	$1, %ecx
	movzbl	(%rbx), %r8d
	subq	$1, %r15
	jmp	.L2741
	.p2align 4,,10
	.p2align 3
.L2790:
	movzwl	4(%rbx), %edi
	movq	8(%rsp), %rsi
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
.LEHE30:
	movq	%rax, %r8
	jmp	.L2789
	.p2align 4,,10
	.p2align 3
.L2921:
	movzwl	6(%rdi), %edi
.LEHB31:
	call	_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movq	%rax, %rbp
	movzbl	1(%rbx), %eax
	jmp	.L2705
	.p2align 4,,10
	.p2align 3
.L2924:
	xorl	%r9d, %r9d
	cmpq	%rax, %r13
	movq	%r13, %r10
	sete	%r9b
	cmpb	$0, 16(%rsp)
	jne	.L2936
.L2841:
	xorl	%ebp, %ebp
	jmp	.L2749
	.p2align 4,,10
	.p2align 3
.L2935:
	leaq	8(%rbp), %r13
	cmpl	$2, 32(%rsp)
	je	.L2937
.L2725:
	leaq	80(%rsp), %rax
	movq	%rax, 40(%rsp)
	cmpq	$128, %r13
	jbe	.L2729
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.L2909:
	movq	80(%rsp), %rax
	movl	%ebp, %r15d
.L2815:
	cmpq	%r12, %rax
	je	.L2834
	movq	96(%rsp), %rax
	leaq	(%rax,%rax), %r14
.L2736:
	movq	40(%rsp), %rdi
	movq	%r14, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	80(%rsp), %r13
	pushq	392(%rsp)
	.cfi_def_cfa_offset 392
	movl	%r15d, %ecx
	pushq	392(%rsp)
	.cfi_def_cfa_offset 400
	movl	48(%rsp), %edx
	leaq	-1(%r13,%r14), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_eSt12chars_formati@PLT
	movq	%rax, %r14
	popq	%rax
	.cfi_def_cfa_offset 392
	popq	%rcx
	.cfi_def_cfa_offset 384
	testl	%edx, %edx
	je	.L2731
	movq	$0, 88(%rsp)
	movq	80(%rsp), %rax
	movb	$0, (%rax)
	movq	80(%rsp), %rax
	cmpl	$75, %edx
	jne	.L2733
	jmp	.L2815
	.p2align 4,,10
	.p2align 3
.L2828:
	movl	$4, %ebp
.L2722:
	leaq	80(%rsp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	80(%rsp), %rax
	testl	%ebp, %ebp
	je	.L2732
.L2735:
	cmpq	%r12, %rax
	je	.L2832
	movq	96(%rsp), %rax
	leaq	(%rax,%rax), %rbp
.L2734:
	movq	40(%rsp), %rdi
	movq	%rbp, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	80(%rsp), %r13
	pushq	392(%rsp)
	.cfi_def_cfa_offset 392
	movl	$4, %edx
	pushq	392(%rsp)
	.cfi_def_cfa_offset 400
	leaq	-1(%r13,%rbp), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_eSt12chars_format@PLT
	popq	%rsi
	.cfi_def_cfa_offset 392
	popq	%rdi
	.cfi_def_cfa_offset 384
	movq	%rax, %r14
	testl	%edx, %edx
	je	.L2833
	movq	$0, 88(%rsp)
	movq	80(%rsp), %rax
	movb	$0, (%rax)
	movq	80(%rsp), %rax
	cmpl	$75, %edx
	je	.L2735
.L2912:
	movb	$0, 16(%rsp)
	movl	$6, %ebp
.L2733:
	leaq	1(%rax), %r15
	addq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L2738
	.p2align 4,,10
	.p2align 3
.L2747:
	movsbl	62(%rsp), %esi
	movq	%r13, %rdx
	movq	%r15, %rdi
	movb	%r8b, 40(%rsp)
	movq	%rcx, 24(%rsp)
	call	memchr@PLT
	movq	24(%rsp), %rcx
	movzbl	40(%rsp), %r8d
	testq	%rax, %rax
	je	.L2842
	subq	%r15, %rax
	cmpq	$-1, %rax
	cmove	%r13, %rax
	movq	%rax, 24(%rsp)
	jmp	.L2746
	.p2align 4,,10
	.p2align 3
.L2932:
	movq	112(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L2938
	movq	144(%rsp), %rax
	leaq	160(%rsp), %r14
	cmpq	%r14, %rax
	je	.L2807
	movq	128(%rsp), %rcx
	movq	%rdx, %xmm0
	movq	%rax, 112(%rsp)
	movhps	160(%rsp), %xmm0
	movups	%xmm0, 120(%rsp)
	testq	%rdi, %rdi
	je	.L2786
	movq	%rdi, 144(%rsp)
	movq	%rcx, 160(%rsp)
.L2785:
	movb	$0, (%rdi)
	movq	144(%rsp), %rdi
	movq	120(%rsp), %r13
	movq	112(%rsp), %rax
	cmpq	%r14, %rdi
	jne	.L2806
	jmp	.L2787
	.p2align 4,,10
	.p2align 3
.L2931:
	movq	%rsi, %rdi
	movq	%rsi, 16(%rsp)
	call	_ZNSt6localeC1Ev@PLT
	movq	8(%rsp), %rax
	movq	16(%rsp), %rsi
	movb	$1, 32(%rax)
	jmp	.L2779
	.p2align 4,,10
	.p2align 3
.L2762:
	cmpq	%r10, %rcx
	jb	.L2939
	movq	40(%rsp), %rdi
	movl	$48, %r8d
	movq	%r9, %rcx
	xorl	%edx, %edx
	movq	%r10, %rsi
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
	movq	16(%rsp), %r10
	cmpq	24(%rsp), %r10
	jne	.L2773
	movq	80(%rsp), %rax
	movb	$46, (%rax,%r10)
	.p2align 4
	.p2align 3
.L2773:
	movq	88(%rsp), %r13
	movq	80(%rsp), %r15
.L2761:
	leaq	128(%rsp), %rbp
	movb	$0, 128(%rsp)
	movq	%rbp, 112(%rsp)
	movq	$0, 120(%rsp)
	testb	$32, (%rbx)
	je	.L2778
	jmp	.L2816
.L2844:
	movl	$1, %r9d
	xorl	%ebp, %ebp
	jmp	.L2755
.L2732:
	cmpq	%r12, %rax
	je	.L2830
	movq	96(%rsp), %rax
	leaq	(%rax,%rax), %rbp
.L2730:
	movq	40(%rsp), %rdi
	movq	%rbp, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	80(%rsp), %r13
	pushq	392(%rsp)
	.cfi_def_cfa_offset 392
	pushq	392(%rsp)
	.cfi_def_cfa_offset 400
	leaq	-1(%r13,%rbp), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_e@PLT
	popq	%r8
	.cfi_def_cfa_offset 392
	popq	%r9
	.cfi_def_cfa_offset 384
	movq	%rax, %r14
	testl	%edx, %edx
	je	.L2833
	movq	$0, 88(%rsp)
	movq	80(%rsp), %rax
	movb	$0, (%rax)
	movq	80(%rsp), %rax
	cmpl	$75, %edx
	jne	.L2912
	jmp	.L2732
.L2936:
	cmpb	$48, (%r15,%rcx)
	jne	.L2750
.L2911:
	movq	$-1, %r11
.L2751:
	movq	%r10, %rax
	subq	%r11, %rax
	jmp	.L2754
.L2937:
	movl	$0, 72(%rsp)
	leaq	72(%rsp), %rdi
	pushq	392(%rsp)
	.cfi_def_cfa_offset 392
	pushq	392(%rsp)
	.cfi_def_cfa_offset 400
	call	frexpl@PLT
	fstp	%st(0)
	movl	88(%rsp), %eax
	popq	%r10
	.cfi_def_cfa_offset 392
	popq	%r11
	.cfi_def_cfa_offset 384
	testl	%eax, %eax
	jle	.L2725
	imull	$4004, %eax, %edx
	movq	%rdx, %rax
	imulq	$995517945, %rdx, %rdx
	shrq	$32, %rdx
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$13, %eax
	addl	$1, %eax
	addq	%rax, %r13
	jmp	.L2725
.L2825:
	movb	$80, 62(%rsp)
	movb	$0, 16(%rsp)
	movb	$1, 24(%rsp)
	jmp	.L2717
.L2827:
	movb	$101, 62(%rsp)
	movb	$0, 16(%rsp)
	movb	$0, 24(%rsp)
	jmp	.L2717
.L2842:
	movq	%r13, 24(%rsp)
	jmp	.L2746
.L2938:
	movq	144(%rsp), %rax
	leaq	160(%rsp), %r14
	cmpq	%r14, %rax
	je	.L2807
	movq	%rax, 112(%rsp)
	movq	%rdx, %xmm0
	movhps	160(%rsp), %xmm0
	movups	%xmm0, 120(%rsp)
.L2786:
	movq	%r14, 144(%rsp)
	leaq	160(%rsp), %r14
	movq	%r14, %rdi
	jmp	.L2785
.L2834:
	movl	$30, %r14d
	jmp	.L2736
.L2833:
	movb	$0, 16(%rsp)
	movl	$6, %ebp
.L2731:
	movq	80(%rsp), %rdx
	movq	%r14, %rax
	subq	%r13, %rax
	movq	%rax, 88(%rsp)
	movb	$0, (%rdx,%rax)
	movq	80(%rsp), %rax
	leaq	1(%rax), %r15
	addq	88(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L2738
.L2829:
	movb	$0, 24(%rsp)
	xorl	%ebp, %ebp
	movb	$101, 62(%rsp)
	jmp	.L2722
.L2758:
	leaq	(%r10,%r9), %rdi
	leaq	(%r15,%r10), %r14
	movq	%r13, %rdx
	movq	%r9, 32(%rsp)
	subq	%r10, %rdx
	addq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r10, 16(%rsp)
	call	memmove@PLT
	movq	16(%rsp), %r10
	cmpq	24(%rsp), %r10
	movq	32(%rsp), %r9
	jne	.L2760
	movb	$46, (%r14)
	leaq	1(%r15,%r10), %r14
.L2760:
	movq	%rbp, %rdx
	movl	$48, %esi
	movq	%r14, %rdi
	movq	%r9, 16(%rsp)
	call	memset@PLT
	addq	16(%rsp), %r13
	jmp	.L2761
.L2845:
	movl	$1, %r9d
	jmp	.L2755
.L2850:
	movq	%r13, %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L2796
.L2839:
	movq	%r13, %r10
	jmp	.L2752
.L2770:
	movq	40(%rsp), %rdi
	movq	%r13, %r8
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	80(%rsp), %rax
	jmp	.L2771
.L2925:
	movq	40(%rsp), %rdi
	movl	$46, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	testq	%rbp, %rbp
	movq	16(%rsp), %r10
	je	.L2919
	movq	88(%rsp), %rsi
	jmp	.L2813
.L2832:
	movl	$30, %ebp
	jmp	.L2734
.L2729:
	movl	$256, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.LEHE31:
	jmp	.L2909
.L2830:
	movl	$30, %ebp
	jmp	.L2730
.L2928:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	80(%rsp), %rax
	jmp	.L2771
.L2807:
	cmpq	$1, %rdx
	je	.L2940
	movq	%r14, %rsi
	call	memcpy@PLT
.L2784:
	movq	152(%rsp), %rax
	movq	112(%rsp), %rdx
	movq	%rax, 120(%rsp)
	movb	$0, (%rdx,%rax)
	movq	144(%rsp), %rdi
	jmp	.L2785
.L2933:
	movq	(%rdi), %rax
	movq	%r8, 16(%rsp)
	movq	%rdi, 8(%rsp)
.LEHB32:
	call	*(%rax)
.LEHE32:
	movq	16(%rsp), %r8
	movq	8(%rsp), %rdi
	jmp	.L2797
.L2940:
	movzbl	160(%rsp), %eax
	movb	%al, (%rdi)
	jmp	.L2784
.L2927:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	je	.L2768
.L2897:
	call	__stack_chk_fail@PLT
.L2706:
.L2860:
	endbr64
	movq	%rax, %rbx
	jmp	.L2800
.L2861:
	endbr64
	movq	%rax, %rbx
	jmp	.L2801
.L2800:
	movq	%r14, %rdi
	call	_ZNSt6localeD1Ev@PLT
.L2801:
	movq	112(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L2803
	movq	128(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L2803:
	movq	80(%rsp), %rdi
	cmpq	%r12, %rdi
	jne	.L2941
.L2804:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2897
	movq	%rbx, %rdi
.LEHB33:
	call	_Unwind_Resume@PLT
.LEHE33:
.L2939:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2897
	movq	%r10, %rdx
	leaq	.LC46(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	xorl	%eax, %eax
.LEHB34:
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L2859:
	endbr64
	movq	%rax, %rbx
	jmp	.L2803
.L2926:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L2897
	movq	%r13, %rcx
	movq	%r10, %rdx
	leaq	.LC44(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC45(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L2768:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE34:
.L2941:
	movq	96(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L2804
	.cfi_endproc
.LFE6338:
	.section	.gcc_except_table
.LLSDA6338:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6338-.LLSDACSB6338
.LLSDACSB6338:
	.uleb128 .LEHB28-.LFB6338
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L2859-.LFB6338
	.uleb128 0
	.uleb128 .LEHB29-.LFB6338
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L2860-.LFB6338
	.uleb128 0
	.uleb128 .LEHB30-.LFB6338
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L2861-.LFB6338
	.uleb128 0
	.uleb128 .LEHB31-.LFB6338
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L2859-.LFB6338
	.uleb128 0
	.uleb128 .LEHB32-.LFB6338
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L2861-.LFB6338
	.uleb128 0
	.uleb128 .LEHB33-.LFB6338
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB6338
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L2859-.LFB6338
	.uleb128 0
.LLSDACSE6338:
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.size	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6335:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6335
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$376, %rsp
	.cfi_def_cfa_offset 432
	movq	%rsi, 8(%rsp)
	movsd	%xmm0, (%rsp)
	movq	%fs:40, %rbp
	movq	%rbp, 360(%rsp)
	leaq	144(%rsp), %rbp
	movb	$0, 144(%rsp)
	movzbl	1(%rdi), %eax
	movq	$0, 136(%rsp)
	movl	%eax, %edx
	movq	%rbp, 128(%rsp)
	andl	$6, %edx
	je	.L2943
	cmpb	$2, %dl
	je	.L3199
	movq	$-1, %r12
	cmpb	$4, %dl
	je	.L3200
.L2945:
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$15, %edx
	cmpb	$8, %dl
	ja	.L2949
	leaq	.L2986(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L2986:
	.long	.L2994-.L2986
	.long	.L2993-.L2986
	.long	.L2992-.L2986
	.long	.L2991-.L2986
	.long	.L2990-.L2986
	.long	.L2989-.L2986
	.long	.L2988-.L2986
	.long	.L2987-.L2986
	.long	.L2985-.L2986
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L2943:
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$15, %edx
	cmpb	$8, %dl
	ja	.L2949
	leaq	.L3000(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L3000:
	.long	.L3005-.L3000
	.long	.L3004-.L3000
	.long	.L3003-.L3000
	.long	.L3108-.L3000
	.long	.L3109-.L3000
	.long	.L3110-.L3000
	.long	.L3111-.L3000
	.long	.L3112-.L3000
	.long	.L3113-.L3000
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L3005:
	leaq	352(%rsp), %r13
	leaq	225(%rsp), %r14
	movsd	(%rsp), %xmm0
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_ZSt8to_charsPcS_d@PLT
	cmpl	$75, %edx
	je	.L3118
	movb	$101, 62(%rsp)
	movq	%rax, %r15
	movl	$6, %r12d
	movb	$0, 16(%rsp)
	movq	%r13, 32(%rsp)
.L3011:
	movsd	(%rsp), %xmm2
	movzbl	(%rbx), %r8d
	movmskpd	%xmm2, %eax
	testb	$1, %al
	jne	.L3189
	movl	%r8d, %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	.L3201
	xorl	%ecx, %ecx
	cmpb	$12, %al
	je	.L3202
.L3028:
	movq	%r15, %r13
	subq	%r14, %r13
	testb	$16, %r8b
	je	.L3032
	movsd	(%rsp), %xmm0
	movsd	.LC51(%rip), %xmm1
	andpd	.LC50(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.L3032
	testq	%r13, %r13
	je	.L3125
	movq	%r13, %rdx
	movl	$46, %esi
	movq	%r14, %rdi
	movb	%r8b, 40(%rsp)
	movq	%rcx, 24(%rsp)
	call	memchr@PLT
	movq	24(%rsp), %rcx
	movzbl	40(%rsp), %r8d
	testq	%rax, %rax
	je	.L3034
	subq	%r14, %rax
	movq	%rax, 24(%rsp)
	cmpq	$-1, %rax
	je	.L3034
	leaq	1(%rax), %r11
	cmpq	%r13, %r11
	jnb	.L3203
	movsbl	62(%rsp), %esi
	movq	%r13, %rdx
	leaq	(%r14,%r11), %rdi
	movb	%r8b, 63(%rsp)
	subq	%r11, %rdx
	movq	%rcx, 48(%rsp)
	movq	%r11, 40(%rsp)
	call	memchr@PLT
	movq	40(%rsp), %r11
	movq	48(%rsp), %rcx
	testq	%rax, %rax
	movzbl	63(%rsp), %r8d
	je	.L3128
	subq	%r14, %rax
	movq	%rax, %r10
	cmpq	$-1, %rax
	cmove	%r13, %r10
.L3039:
	xorl	%r9d, %r9d
	cmpq	24(%rsp), %r10
	sete	%r9b
	cmpb	$0, 16(%rsp)
	je	.L3130
	cmpb	$48, (%r14,%rcx)
	je	.L3040
.L3037:
	movq	%r10, %rax
	subq	%rcx, %rax
	subq	$1, %rax
.L3041:
	testq	%r12, %r12
	jne	.L3043
	.p2align 4
	.p2align 3
.L3036:
	testq	%r9, %r9
	je	.L3032
.L3042:
	cmpq	$0, 136(%rsp)
	jne	.L3044
	movq	32(%rsp), %rax
	subq	%r15, %rax
	cmpq	%r9, %rax
	jnb	.L3045
.L3044:
	leaq	128(%rsp), %rax
	leaq	0(%r13,%r9), %rsi
	movq	%r10, 32(%rsp)
	movq	%rax, %rdi
	movq	%r9, 16(%rsp)
	movq	%rax, 40(%rsp)
.LEHB35:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	136(%rsp), %rcx
	movq	16(%rsp), %r9
	movq	32(%rsp), %r10
	testq	%rcx, %rcx
	jne	.L3049
	cmpq	%r13, %r10
	movq	%r13, %r8
	movq	40(%rsp), %rdi
	movq	%r14, %rcx
	cmovbe	%r10, %r8
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0
	movq	16(%rsp), %r10
	cmpq	%r10, 24(%rsp)
	je	.L3204
	movq	136(%rsp), %rsi
	testq	%r12, %r12
	je	.L3198
.L3100:
	movq	40(%rsp), %rdi
	movl	$48, %r8d
	movq	%r12, %rcx
	xorl	%edx, %edx
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
.LEHE35:
	movq	16(%rsp), %r10
.L3198:
	cmpq	%r10, %r13
	jb	.L3205
	movq	136(%rsp), %rsi
	subq	%r10, %r13
	leaq	(%r14,%r10), %rcx
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%r13, %rax
	jb	.L3206
	movq	128(%rsp), %rax
	movl	$15, %edx
	leaq	0(%r13,%rsi), %r12
	cmpq	%rbp, %rax
	cmovne	144(%rsp), %rdx
	cmpq	%r12, %rdx
	jb	.L3057
	testq	%r13, %r13
	je	.L3058
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r13
	je	.L3207
	movq	%r13, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	movq	128(%rsp), %rax
.L3058:
	movq	%r12, 136(%rsp)
	movb	$0, (%rax,%r12)
	jmp	.L3060
	.p2align 4,,10
	.p2align 3
.L3032:
	leaq	176(%rsp), %r12
	andl	$32, %r8d
	movq	$0, 168(%rsp)
	movq	%r12, 160(%rsp)
	movb	$0, 176(%rsp)
	jne	.L3063
.L3065:
	movzwl	(%rbx), %eax
	movq	%r14, %rdx
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L3208
.L3075:
	cmpw	$256, %ax
	je	.L3077
.L3080:
	movq	8(%rsp), %rax
	movq	16(%rax), %rbx
	testq	%r13, %r13
	jne	.L3209
.L3082:
	movq	160(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L3085
	movq	176(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3085:
	movq	128(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L3086
	movq	144(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3086:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3202:
	.cfi_restore_state
	movb	$32, -1(%r14)
	movzbl	(%rbx), %r8d
	subq	$1, %r14
	.p2align 4
	.p2align 3
.L3189:
	movl	$1, %ecx
	jmp	.L3028
	.p2align 4,,10
	.p2align 3
.L3063:
	movsd	(%rsp), %xmm0
	movsd	.LC51(%rip), %xmm1
	andpd	.LC50(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.L3065
.L3104:
	movq	8(%rsp), %rax
	leaq	24(%rax), %rsi
	cmpb	$0, 32(%rax)
	je	.L3210
.L3066:
	leaq	96(%rsp), %rdi
	call	_ZNSt6localeC1ERKS_@PLT
	movsbl	62(%rsp), %ecx
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	192(%rsp), %rdi
	leaq	96(%rsp), %r8
.LEHB36:
	call	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
.LEHE36:
	leaq	96(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
	movq	200(%rsp), %rdx
	testq	%rdx, %rdx
	jne	.L3211
	movq	192(%rsp), %rdi
	leaq	208(%rsp), %rax
	movq	%r14, %r15
	cmpq	%rax, %rdi
	je	.L3074
.L3093:
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3074:
	movzwl	(%rbx), %eax
	movq	%r14, %rdx
	movq	%r15, %r14
	andw	$384, %ax
	cmpw	$128, %ax
	jne	.L3075
.L3208:
	movzwl	4(%rbx), %r8d
.L3076:
	cmpq	%r8, %r13
	jnb	.L3080
	movq	8(%rsp), %rax
	movl	8(%rbx), %r9d
	movq	16(%rax), %rdi
	movzbl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	jne	.L3136
	testb	$64, %al
	je	.L3138
	movsd	(%rsp), %xmm0
	movsd	.LC51(%rip), %xmm1
	andpd	.LC50(%rip), %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.L3138
	movzbl	(%rdx), %eax
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdx
	cmpb	$15, (%rdx,%rax)
	jbe	.L3139
	movq	24(%rdi), %rax
	movzbl	(%r14), %edx
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%dl, (%rax)
	movq	24(%rdi), %rax
	subq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	je	.L3212
.L3084:
	addq	$1, %r14
	leaq	-1(%r13), %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L3083
	.p2align 4,,10
	.p2align 3
.L3209:
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rdi
.LEHB37:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L3082
	.p2align 4,,10
	.p2align 3
.L3199:
	movzwl	6(%rdi), %r12d
	jmp	.L2945
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L3213:
	addq	$1, %r11
	cmpq	%r13, %r11
	jnb	.L3190
.L3040:
	cmpb	$48, (%r14,%r11)
	je	.L3213
	jmp	.L3038
	.p2align 4,,10
	.p2align 3
.L3125:
	movq	$0, 24(%rsp)
.L3033:
	movq	24(%rsp), %r10
	cmpb	$0, 16(%rsp)
	je	.L3133
	testq	%r12, %r12
	je	.L3134
	movq	%r10, %rax
	movl	$1, %r9d
	subq	%rcx, %rax
.L3043:
	subq	%rax, %r12
	addq	%r12, %r9
	jmp	.L3036
	.p2align 4,,10
	.p2align 3
.L3136:
	movq	%r13, %rax
.L3083:
	movq	%r14, %rdx
	movq	%rax, %rsi
	subq	%r13, %r8
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
.LEHE37:
	movq	%rax, %rbx
	jmp	.L3082
	.p2align 4,,10
	.p2align 3
.L3004:
	andl	$120, %eax
	movl	$101, %edx
	movb	$0, 24(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 62(%rsp)
.L3006:
	leaq	352(%rsp), %r13
	leaq	225(%rsp), %r14
	movl	$4, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_ZSt8to_charsPcS_dSt12chars_format@PLT
	movq	%rax, %rcx
	cmpl	$75, %edx
	je	.L3117
	movb	$0, 16(%rsp)
	movl	$6, %r12d
.L3009:
	movq	%r13, 32(%rsp)
	movq	%rcx, %r15
.L3025:
	cmpb	$0, 24(%rsp)
	je	.L3011
	cmpq	%r15, %r14
	je	.L3011
	movq	%r14, %r13
	.p2align 4
	.p2align 3
.L3030:
	movsbl	0(%r13), %edi
	addq	$1, %r13
	call	toupper@PLT
	movb	%al, -1(%r13)
	cmpq	%r13, %r15
	jne	.L3030
	jmp	.L3011
	.p2align 4,,10
	.p2align 3
.L2993:
	andl	$120, %eax
	movl	$112, %edx
	movb	$0, 24(%rsp)
	cmpb	$16, %al
	movl	$101, %eax
	cmovne	%edx, %eax
	movb	%al, 62(%rsp)
.L2995:
	movl	$4, 32(%rsp)
	movl	%r12d, %ecx
	movb	$0, 16(%rsp)
	jmp	.L3103
	.p2align 4,,10
	.p2align 3
.L2985:
	movl	%r12d, %ecx
.L2999:
	movb	$69, 62(%rsp)
	movb	$1, 24(%rsp)
.L2996:
	movl	$3, 32(%rsp)
	movb	$1, 16(%rsp)
.L3103:
	movl	32(%rsp), %edx
	movsd	(%rsp), %xmm0
	leaq	352(%rsp), %r13
	leaq	225(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_ZSt8to_charsPcS_dSt12chars_formati@PLT
	movq	%rax, %rcx
	cmpl	$75, %edx
	jne	.L3009
	leaq	8(%r12), %r13
	cmpl	$2, 32(%rsp)
	je	.L3214
.L3012:
	leaq	128(%rsp), %rax
	movq	%rax, 40(%rsp)
	cmpq	$128, %r13
	jbe	.L3016
	movq	%r13, %rsi
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.L3188:
	movl	%r12d, 48(%rsp)
	movq	128(%rsp), %rax
.L3102:
	cmpq	%rbp, %rax
	je	.L3123
	movq	144(%rsp), %rax
	leaq	(%rax,%rax), %r14
.L3023:
	movq	40(%rsp), %rdi
	movq	%r14, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.LEHE38:
	movq	128(%rsp), %r13
	movl	48(%rsp), %ecx
	movl	32(%rsp), %edx
	movsd	(%rsp), %xmm0
	leaq	-1(%r13,%r14), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_dSt12chars_formati@PLT
	movq	%rax, %r15
	testl	%edx, %edx
	je	.L3018
	movq	128(%rsp), %rax
	movq	$0, 136(%rsp)
	movb	$0, (%rax)
	movq	128(%rsp), %rax
	cmpl	$75, %edx
	jne	.L3020
	jmp	.L3102
	.p2align 4,,10
	.p2align 3
.L2994:
	movl	$3, 32(%rsp)
	movl	%r12d, %ecx
	movb	$101, 62(%rsp)
	movb	$0, 16(%rsp)
	movb	$0, 24(%rsp)
	jmp	.L3103
	.p2align 4,,10
	.p2align 3
.L2989:
	movb	$0, 24(%rsp)
	movl	%r12d, %ecx
.L2997:
	movl	$2, 32(%rsp)
	movb	$101, 62(%rsp)
	movb	$0, 16(%rsp)
	jmp	.L3103
	.p2align 4,,10
	.p2align 3
.L2990:
	movl	%r12d, %ecx
.L3002:
	movb	$69, 62(%rsp)
	movb	$1, 24(%rsp)
.L2998:
	movl	$1, 32(%rsp)
	movb	$0, 16(%rsp)
	jmp	.L3103
	.p2align 4,,10
	.p2align 3
.L2991:
	movb	$101, 62(%rsp)
	movl	%r12d, %ecx
	movb	$0, 24(%rsp)
	jmp	.L2998
	.p2align 4,,10
	.p2align 3
.L2992:
	andl	$120, %eax
	movl	$80, %edx
	movb	$1, 24(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 62(%rsp)
	jmp	.L2995
	.p2align 4,,10
	.p2align 3
.L3111:
	movl	$6, %ecx
	movl	$6, %r12d
.L3001:
	movb	$1, 24(%rsp)
	jmp	.L2997
	.p2align 4,,10
	.p2align 3
.L3112:
	movb	$101, 62(%rsp)
	movl	$6, %ecx
	movl	$6, %r12d
	movb	$0, 24(%rsp)
	jmp	.L2996
	.p2align 4,,10
	.p2align 3
.L2987:
	movb	$101, 62(%rsp)
	movl	%r12d, %ecx
	movb	$0, 24(%rsp)
	jmp	.L2996
	.p2align 4,,10
	.p2align 3
.L2988:
	movl	%r12d, %ecx
	jmp	.L3001
	.p2align 4,,10
	.p2align 3
.L3108:
	movb	$101, 62(%rsp)
	movl	$6, %ecx
	movl	$6, %r12d
	movb	$0, 24(%rsp)
	jmp	.L2998
	.p2align 4,,10
	.p2align 3
.L3109:
	movl	$6, %ecx
	movl	$6, %r12d
	jmp	.L3002
	.p2align 4,,10
	.p2align 3
.L3110:
	movb	$0, 24(%rsp)
	movl	$6, %ecx
	movl	$6, %r12d
	jmp	.L2997
	.p2align 4,,10
	.p2align 3
.L3113:
	movl	$6, %ecx
	movl	$6, %r12d
	jmp	.L2999
	.p2align 4,,10
	.p2align 3
.L3003:
	andl	$120, %eax
	movl	$80, %edx
	movb	$1, 24(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 62(%rsp)
	jmp	.L3006
	.p2align 4,,10
	.p2align 3
.L3138:
	movq	%r13, %rax
	movl	$2, %ecx
	movl	$32, %r9d
	jmp	.L3083
	.p2align 4,,10
	.p2align 3
.L3201:
	movb	$43, -1(%r14)
	movl	$1, %ecx
	movzbl	(%rbx), %r8d
	subq	$1, %r14
	jmp	.L3028
	.p2align 4,,10
	.p2align 3
.L3077:
	movzwl	4(%rbx), %edi
	movq	8(%rsp), %rsi
	movq	%rdx, 16(%rsp)
.LEHB39:
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
.LEHE39:
	movq	16(%rsp), %rdx
	movq	%rax, %r8
	jmp	.L3076
	.p2align 4,,10
	.p2align 3
.L3200:
	movq	%rsi, %rdi
	movzwl	6(%rbx), %esi
	movzbl	(%rdi), %edx
	movq	%rdx, %rcx
	andl	$15, %ecx
	cmpq	%rcx, %rsi
	jnb	.L2946
	movq	(%rdi), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 16(%rsp)
	leaq	(%rsi,%rsi,4), %rcx
	salq	$4, %rsi
	addq	8(%rdi), %rsi
	shrq	$4, %rdx
	movdqa	(%rsi), %xmm0
	shrq	%cl, %rdx
	andl	$31, %edx
	movaps	%xmm0, 96(%rsp)
.L2947:
	movb	%dl, 112(%rsp)
	movdqa	96(%rsp), %xmm0
	movzbl	%dl, %edx
	leaq	.L2951(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	movaps	%xmm0, 64(%rsp)
	movdqa	112(%rsp), %xmm0
	addq	%rcx, %rdx
	movaps	%xmm0, 80(%rsp)
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L2951:
	.long	.L2948-.L2951
	.long	.L2966-.L2951
	.long	.L2965-.L2951
	.long	.L2964-.L2951
	.long	.L2963-.L2951
	.long	.L2962-.L2951
	.long	.L2961-.L2951
	.long	.L2960-.L2951
	.long	.L2959-.L2951
	.long	.L2958-.L2951
	.long	.L2957-.L2951
	.long	.L2956-.L2951
	.long	.L2955-.L2951
	.long	.L2954-.L2951
	.long	.L2953-.L2951
	.long	.L2952-.L2951
	.long	.L2950-.L2951
	.long	.L2950-.L2951
	.long	.L2950-.L2951
	.long	.L2950-.L2951
	.long	.L2950-.L2951
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L3203:
	xorl	%r9d, %r9d
	cmpq	%rax, %r13
	movq	%r13, %r10
	sete	%r9b
	cmpb	$0, 16(%rsp)
	jne	.L3215
.L3130:
	xorl	%r12d, %r12d
	jmp	.L3036
	.p2align 4,,10
	.p2align 3
.L3117:
	movl	$4, %r12d
.L3010:
	leaq	128(%rsp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB40:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	128(%rsp), %rax
	testl	%r12d, %r12d
	je	.L3019
.L3022:
	cmpq	%rbp, %rax
	je	.L3121
	movq	144(%rsp), %rax
	leaq	(%rax,%rax), %r12
.L3021:
	movq	40(%rsp), %rdi
	movq	%r12, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	128(%rsp), %r13
	movsd	(%rsp), %xmm0
	movl	$4, %edx
	leaq	-1(%r13,%r12), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_dSt12chars_format@PLT
	movq	%rax, %r15
	testl	%edx, %edx
	je	.L3122
	movq	128(%rsp), %rax
	movq	$0, 136(%rsp)
	movb	$0, (%rax)
	movq	128(%rsp), %rax
	cmpl	$75, %edx
	je	.L3022
.L3191:
	movb	$0, 16(%rsp)
	movl	$6, %r12d
.L3020:
	leaq	1(%rax), %r14
	addq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L3025
	.p2align 4,,10
	.p2align 3
.L3034:
	movsbl	62(%rsp), %esi
	movq	%r13, %rdx
	movq	%r14, %rdi
	movb	%r8b, 40(%rsp)
	movq	%rcx, 24(%rsp)
	call	memchr@PLT
	movq	24(%rsp), %rcx
	movzbl	40(%rsp), %r8d
	testq	%rax, %rax
	je	.L3131
	subq	%r14, %rax
	cmpq	$-1, %rax
	cmove	%r13, %rax
	movq	%rax, 24(%rsp)
	jmp	.L3033
	.p2align 4,,10
	.p2align 3
.L3211:
	movq	160(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L3216
	movq	192(%rsp), %rax
	leaq	208(%rsp), %rsi
	cmpq	%rsi, %rax
	je	.L3094
	movq	176(%rsp), %rcx
	movq	%rdx, %xmm0
	movq	%rax, 160(%rsp)
	movhps	208(%rsp), %xmm0
	movups	%xmm0, 168(%rsp)
	testq	%rdi, %rdi
	je	.L3073
	movq	%rdi, 192(%rsp)
	movq	%rcx, 208(%rsp)
.L3072:
	movb	$0, (%rdi)
	movq	192(%rsp), %rdi
	movq	168(%rsp), %r13
	movq	160(%rsp), %r15
	cmpq	%rsi, %rdi
	jne	.L3093
	jmp	.L3074
	.p2align 4,,10
	.p2align 3
.L3210:
	movq	%rsi, %rdi
	movq	%rsi, 16(%rsp)
	call	_ZNSt6localeC1Ev@PLT
	movq	8(%rsp), %rax
	movq	16(%rsp), %rsi
	movb	$1, 32(%rax)
	jmp	.L3066
	.p2align 4,,10
	.p2align 3
.L2946:
	andl	$15, %edx
	jne	.L2948
	movq	%rdi, %rcx
	movq	(%rdi), %rdi
	movq	%rdi, %rdx
	movq	%rdi, 16(%rsp)
	shrq	$4, %rdx
	cmpq	%rdx, %rsi
	jb	.L3217
.L2948:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L3049:
	cmpq	%r10, %rcx
	jb	.L3218
	movq	40(%rsp), %rdi
	movl	$48, %r8d
	movq	%r9, %rcx
	xorl	%edx, %edx
	movq	%r10, %rsi
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
	movq	16(%rsp), %r10
	cmpq	%r10, 24(%rsp)
	jne	.L3060
	movq	128(%rsp), %rax
	movq	24(%rsp), %rcx
	movb	$46, (%rax,%rcx)
	.p2align 4
	.p2align 3
.L3060:
	movq	136(%rsp), %r13
	movq	128(%rsp), %r14
.L3048:
	leaq	176(%rsp), %r12
	movb	$0, 176(%rsp)
	movq	%r12, 160(%rsp)
	movq	$0, 168(%rsp)
	testb	$32, (%rbx)
	je	.L3065
	jmp	.L3104
.L3133:
	movl	$1, %r9d
	xorl	%r12d, %r12d
	jmp	.L3042
.L3019:
	cmpq	%rbp, %rax
	je	.L3119
	movq	144(%rsp), %rax
	leaq	(%rax,%rax), %r12
.L3017:
	movq	40(%rsp), %rdi
	movq	%r12, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	128(%rsp), %r13
	movsd	(%rsp), %xmm0
	leaq	-1(%r13,%r12), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_d@PLT
	movq	%rax, %r15
	testl	%edx, %edx
	je	.L3122
	movq	128(%rsp), %rax
	movq	$0, 136(%rsp)
	movb	$0, (%rax)
	movq	128(%rsp), %rax
	cmpl	$75, %edx
	jne	.L3191
	jmp	.L3019
.L3215:
	cmpb	$48, (%r14,%rcx)
	jne	.L3037
.L3190:
	movq	$-1, %r11
.L3038:
	movq	%r10, %rax
	subq	%r11, %rax
	jmp	.L3041
.L3214:
	movsd	(%rsp), %xmm0
	leaq	96(%rsp), %rdi
	movl	$0, 96(%rsp)
	call	frexp@PLT
	movl	96(%rsp), %eax
	testl	%eax, %eax
	jle	.L3012
	imull	$4004, %eax, %edx
	movq	%rdx, %rax
	imulq	$995517945, %rdx, %rdx
	shrq	$32, %rdx
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$13, %eax
	addl	$1, %eax
	addq	%rax, %r13
	jmp	.L3012
.L3131:
	movq	%r13, 24(%rsp)
	jmp	.L3033
.L3216:
	movq	192(%rsp), %rax
	leaq	208(%rsp), %rsi
	cmpq	%rsi, %rax
	je	.L3094
	movq	%rax, 160(%rsp)
	movq	%rdx, %xmm0
	movhps	208(%rsp), %xmm0
	movups	%xmm0, 168(%rsp)
.L3073:
	movq	%rsi, 192(%rsp)
	leaq	208(%rsp), %rsi
	movq	%rsi, %rdi
	jmp	.L3072
.L3123:
	movl	$30, %r14d
	jmp	.L3023
.L2961:
	movq	64(%rsp), %r12
	jmp	.L2945
.L2962:
	movq	64(%rsp), %r12
	testq	%r12, %r12
	jns	.L2945
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L2963:
	movl	64(%rsp), %r12d
	jmp	.L2945
.L2964:
	movslq	64(%rsp), %r12
	testl	%r12d, %r12d
	jns	.L2945
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L3122:
	movb	$0, 16(%rsp)
	movl	$6, %r12d
.L3018:
	movq	128(%rsp), %rdx
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%rax, 136(%rsp)
	movb	$0, (%rdx,%rax)
	movq	128(%rsp), %rax
	leaq	1(%rax), %r14
	addq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L3025
.L3118:
	movb	$0, 24(%rsp)
	xorl	%r12d, %r12d
	movb	$101, 62(%rsp)
	jmp	.L3010
.L3045:
	leaq	(%r10,%r9), %rdi
	leaq	(%r14,%r10), %r15
	movq	%r13, %rdx
	movq	%r9, 32(%rsp)
	subq	%r10, %rdx
	addq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r10, 16(%rsp)
	call	memmove@PLT
	movq	16(%rsp), %r10
	cmpq	%r10, 24(%rsp)
	movq	32(%rsp), %r9
	jne	.L3047
	movq	24(%rsp), %rax
	movb	$46, (%r15)
	leaq	1(%r14,%rax), %r15
.L3047:
	movq	%r12, %rdx
	movl	$48, %esi
	movq	%r15, %rdi
	movq	%r9, 16(%rsp)
	call	memset@PLT
	addq	16(%rsp), %r13
	jmp	.L3048
.L3134:
	movl	$1, %r9d
	jmp	.L3042
.L3128:
	movq	%r13, %r10
	jmp	.L3039
.L3139:
	movq	%r13, %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L3083
.L3057:
	movq	40(%rsp), %rdi
	movq	%r13, %r8
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	128(%rsp), %rax
	jmp	.L3058
.L3217:
	salq	$5, %rsi
	addq	8(%rcx), %rsi
	movdqu	(%rsi), %xmm0
	movaps	%xmm0, 96(%rsp)
	movzbl	16(%rsi), %edx
	movb	%dl, 112(%rsp)
	movzbl	16(%rsi), %edx
	jmp	.L2947
.L3204:
	movq	40(%rsp), %rdi
	movl	$46, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	testq	%r12, %r12
	movq	16(%rsp), %r10
	je	.L3198
	movq	136(%rsp), %rsi
	jmp	.L3100
.L3121:
	movl	$30, %r12d
	jmp	.L3021
.L3119:
	movl	$30, %r12d
	jmp	.L3017
.L3016:
	movl	$256, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.LEHE40:
	jmp	.L3188
.L3207:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	128(%rsp), %rax
	jmp	.L3058
.L3094:
	cmpq	$1, %rdx
	je	.L3219
	movq	%rsi, 16(%rsp)
	call	memcpy@PLT
	movq	16(%rsp), %rsi
.L3071:
	movq	200(%rsp), %rax
	movq	160(%rsp), %rdx
	movq	%rax, 168(%rsp)
	movb	$0, (%rdx,%rax)
	movq	192(%rsp), %rdi
	jmp	.L3072
.L3212:
	movq	(%rdi), %rax
	movq	%r8, 8(%rsp)
	movq	%rdi, (%rsp)
.LEHB41:
	call	*(%rax)
.LEHE41:
	movq	8(%rsp), %r8
	movq	(%rsp), %rdi
	jmp	.L3084
.L3219:
	movzbl	208(%rsp), %eax
	movb	%al, (%rdi)
	jmp	.L3071
.L3087:
	leaq	96(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
.L3088:
	movq	160(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L3090
	movq	176(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3090:
	movq	128(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L3091
	movq	144(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3091:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	je	.L3092
.L3179:
	call	__stack_chk_fail@PLT
.L3142:
	endbr64
	movq	%rax, %rbx
	jmp	.L3087
.L2950:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
.LEHB42:
	call	_ZSt20__throw_format_errorPKc
.L3218:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	movq	%r10, %rdx
	leaq	.LC46(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	xorl	%eax, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L2952:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3143:
	endbr64
	movq	%rax, %rbx
	jmp	.L3088
.L2953:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2954:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2955:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2956:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2957:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2958:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2959:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2960:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3141:
	endbr64
	movq	%rax, %rbx
	jmp	.L3090
.L2965:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L2966:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3206:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L3205:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3179
	movq	%r13, %rcx
	movq	%r10, %rdx
	leaq	.LC44(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC45(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE42:
.L2949:
.L3092:
	movq	%rbx, %rdi
.LEHB43:
	call	_Unwind_Resume@PLT
.LEHE43:
	.cfi_endproc
.LFE6335:
	.section	.gcc_except_table
.LLSDA6335:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6335-.LLSDACSB6335
.LLSDACSB6335:
	.uleb128 .LEHB35-.LFB6335
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L3141-.LFB6335
	.uleb128 0
	.uleb128 .LEHB36-.LFB6335
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L3142-.LFB6335
	.uleb128 0
	.uleb128 .LEHB37-.LFB6335
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L3143-.LFB6335
	.uleb128 0
	.uleb128 .LEHB38-.LFB6335
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L3141-.LFB6335
	.uleb128 0
	.uleb128 .LEHB39-.LFB6335
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L3143-.LFB6335
	.uleb128 0
	.uleb128 .LEHB40-.LFB6335
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L3141-.LFB6335
	.uleb128 0
	.uleb128 .LEHB41-.LFB6335
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L3143-.LFB6335
	.uleb128 0
	.uleb128 .LEHB42-.LFB6335
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L3141-.LFB6335
	.uleb128 0
	.uleb128 .LEHB43-.LFB6335
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE6335:
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.size	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.type	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, @function
_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_:
.LFB6329:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6329
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$376, %rsp
	.cfi_def_cfa_offset 432
	movq	%rsi, 8(%rsp)
	movss	%xmm0, (%rsp)
	movq	%fs:40, %rbp
	movq	%rbp, 360(%rsp)
	leaq	144(%rsp), %rbp
	movb	$0, 144(%rsp)
	movzbl	1(%rdi), %eax
	movq	$0, 136(%rsp)
	movl	%eax, %edx
	movq	%rbp, 128(%rsp)
	andl	$6, %edx
	je	.L3221
	cmpb	$2, %dl
	je	.L3477
	movq	$-1, %r12
	cmpb	$4, %dl
	je	.L3478
.L3223:
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$15, %edx
	cmpb	$8, %dl
	ja	.L3227
	leaq	.L3264(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L3264:
	.long	.L3272-.L3264
	.long	.L3271-.L3264
	.long	.L3270-.L3264
	.long	.L3269-.L3264
	.long	.L3268-.L3264
	.long	.L3267-.L3264
	.long	.L3266-.L3264
	.long	.L3265-.L3264
	.long	.L3263-.L3264
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L3221:
	movl	%eax, %edx
	shrb	$3, %dl
	andl	$15, %edx
	cmpb	$8, %dl
	ja	.L3227
	leaq	.L3278(%rip), %rcx
	movzbl	%dl, %edx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L3278:
	.long	.L3283-.L3278
	.long	.L3282-.L3278
	.long	.L3281-.L3278
	.long	.L3386-.L3278
	.long	.L3387-.L3278
	.long	.L3388-.L3278
	.long	.L3389-.L3278
	.long	.L3390-.L3278
	.long	.L3391-.L3278
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L3283:
	leaq	352(%rsp), %r13
	leaq	225(%rsp), %r14
	movss	(%rsp), %xmm0
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_ZSt8to_charsPcS_f@PLT
	cmpl	$75, %edx
	je	.L3396
	movb	$101, 62(%rsp)
	movq	%rax, %r15
	movl	$6, %r12d
	movb	$0, 16(%rsp)
	movq	%r13, 32(%rsp)
.L3289:
	movl	(%rsp), %eax
	movzbl	(%rbx), %r8d
	testl	%eax, %eax
	js	.L3467
	movl	%r8d, %eax
	andl	$12, %eax
	cmpb	$4, %al
	je	.L3479
	xorl	%ecx, %ecx
	cmpb	$12, %al
	je	.L3480
.L3306:
	movq	%r15, %r13
	subq	%r14, %r13
	testb	$16, %r8b
	je	.L3310
	movss	(%rsp), %xmm0
	movss	.LC53(%rip), %xmm1
	andps	.LC52(%rip), %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.L3310
	testq	%r13, %r13
	je	.L3403
	movq	%r13, %rdx
	movl	$46, %esi
	movq	%r14, %rdi
	movb	%r8b, 40(%rsp)
	movq	%rcx, 24(%rsp)
	call	memchr@PLT
	movq	24(%rsp), %rcx
	movzbl	40(%rsp), %r8d
	testq	%rax, %rax
	je	.L3312
	subq	%r14, %rax
	movq	%rax, 24(%rsp)
	cmpq	$-1, %rax
	je	.L3312
	leaq	1(%rax), %r11
	cmpq	%r13, %r11
	jnb	.L3481
	movsbl	62(%rsp), %esi
	movq	%r13, %rdx
	leaq	(%r14,%r11), %rdi
	movb	%r8b, 63(%rsp)
	subq	%r11, %rdx
	movq	%rcx, 48(%rsp)
	movq	%r11, 40(%rsp)
	call	memchr@PLT
	movq	40(%rsp), %r11
	movq	48(%rsp), %rcx
	testq	%rax, %rax
	movzbl	63(%rsp), %r8d
	je	.L3406
	subq	%r14, %rax
	movq	%rax, %r10
	cmpq	$-1, %rax
	cmove	%r13, %r10
.L3317:
	xorl	%r9d, %r9d
	cmpq	24(%rsp), %r10
	sete	%r9b
	cmpb	$0, 16(%rsp)
	je	.L3408
	cmpb	$48, (%r14,%rcx)
	je	.L3318
.L3315:
	movq	%r10, %rax
	subq	%rcx, %rax
	subq	$1, %rax
.L3319:
	testq	%r12, %r12
	jne	.L3321
	.p2align 4
	.p2align 3
.L3314:
	testq	%r9, %r9
	je	.L3310
.L3320:
	cmpq	$0, 136(%rsp)
	jne	.L3322
	movq	32(%rsp), %rax
	subq	%r15, %rax
	cmpq	%r9, %rax
	jnb	.L3323
.L3322:
	leaq	128(%rsp), %rax
	leaq	0(%r13,%r9), %rsi
	movq	%r10, 32(%rsp)
	movq	%rax, %rdi
	movq	%r9, 16(%rsp)
	movq	%rax, 40(%rsp)
.LEHB44:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	136(%rsp), %rcx
	movq	16(%rsp), %r9
	movq	32(%rsp), %r10
	testq	%rcx, %rcx
	jne	.L3327
	cmpq	%r13, %r10
	movq	%r13, %r8
	movq	40(%rsp), %rdi
	movq	%r14, %rcx
	cmovbe	%r10, %r8
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0
	movq	16(%rsp), %r10
	cmpq	%r10, 24(%rsp)
	je	.L3482
	movq	136(%rsp), %rsi
	testq	%r12, %r12
	je	.L3476
.L3378:
	movq	40(%rsp), %rdi
	movl	$48, %r8d
	movq	%r12, %rcx
	xorl	%edx, %edx
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
.LEHE44:
	movq	16(%rsp), %r10
.L3476:
	cmpq	%r10, %r13
	jb	.L3483
	movq	136(%rsp), %rsi
	subq	%r10, %r13
	leaq	(%r14,%r10), %rcx
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%r13, %rax
	jb	.L3484
	movq	128(%rsp), %rax
	movl	$15, %edx
	leaq	0(%r13,%rsi), %r12
	cmpq	%rbp, %rax
	cmovne	144(%rsp), %rdx
	cmpq	%r12, %rdx
	jb	.L3335
	testq	%r13, %r13
	je	.L3336
	leaq	(%rax,%rsi), %rdi
	cmpq	$1, %r13
	je	.L3485
	movq	%r13, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	movq	128(%rsp), %rax
.L3336:
	movq	%r12, 136(%rsp)
	movb	$0, (%rax,%r12)
	jmp	.L3338
	.p2align 4,,10
	.p2align 3
.L3310:
	leaq	176(%rsp), %r12
	andl	$32, %r8d
	movq	$0, 168(%rsp)
	movq	%r12, 160(%rsp)
	movb	$0, 176(%rsp)
	jne	.L3341
.L3343:
	movzwl	(%rbx), %eax
	movq	%r14, %rdx
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L3486
.L3353:
	cmpw	$256, %ax
	je	.L3355
.L3358:
	movq	8(%rsp), %rax
	movq	16(%rax), %rbx
	testq	%r13, %r13
	jne	.L3487
.L3360:
	movq	160(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L3363
	movq	176(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3363:
	movq	128(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L3364
	movq	144(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3364:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3480:
	.cfi_restore_state
	movb	$32, -1(%r14)
	movzbl	(%rbx), %r8d
	subq	$1, %r14
	.p2align 4
	.p2align 3
.L3467:
	movl	$1, %ecx
	jmp	.L3306
	.p2align 4,,10
	.p2align 3
.L3341:
	movss	(%rsp), %xmm0
	movss	.LC53(%rip), %xmm1
	andps	.LC52(%rip), %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.L3343
.L3382:
	movq	8(%rsp), %rax
	leaq	24(%rax), %rsi
	cmpb	$0, 32(%rax)
	je	.L3488
.L3344:
	leaq	96(%rsp), %rdi
	call	_ZNSt6localeC1ERKS_@PLT
	movsbl	62(%rsp), %ecx
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	192(%rsp), %rdi
	leaq	96(%rsp), %r8
.LEHB45:
	call	_ZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6locale.isra.0
.LEHE45:
	leaq	96(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
	movq	200(%rsp), %rdx
	testq	%rdx, %rdx
	jne	.L3489
	movq	192(%rsp), %rdi
	leaq	208(%rsp), %rax
	movq	%r14, %r15
	cmpq	%rax, %rdi
	je	.L3352
.L3371:
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3352:
	movzwl	(%rbx), %eax
	movq	%r14, %rdx
	movq	%r15, %r14
	andw	$384, %ax
	cmpw	$128, %ax
	jne	.L3353
.L3486:
	movzwl	4(%rbx), %r8d
.L3354:
	cmpq	%r8, %r13
	jnb	.L3358
	movq	8(%rsp), %rax
	movl	8(%rbx), %r9d
	movq	16(%rax), %rdi
	movzbl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	jne	.L3414
	testb	$64, %al
	je	.L3416
	movss	(%rsp), %xmm0
	movss	.LC53(%rip), %xmm1
	andps	.LC52(%rip), %xmm0
	ucomiss	%xmm0, %xmm1
	jb	.L3416
	movzbl	(%rdx), %eax
	leaq	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE(%rip), %rdx
	cmpb	$15, (%rdx,%rax)
	jbe	.L3417
	movq	24(%rdi), %rax
	movzbl	(%r14), %edx
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%dl, (%rax)
	movq	24(%rdi), %rax
	subq	8(%rdi), %rax
	cmpq	16(%rdi), %rax
	je	.L3490
.L3362:
	addq	$1, %r14
	leaq	-1(%r13), %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L3361
	.p2align 4,,10
	.p2align 3
.L3487:
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rdi
.LEHB46:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L3360
	.p2align 4,,10
	.p2align 3
.L3477:
	movzwl	6(%rdi), %r12d
	jmp	.L3223
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L3491:
	addq	$1, %r11
	cmpq	%r13, %r11
	jnb	.L3468
.L3318:
	cmpb	$48, (%r14,%r11)
	je	.L3491
	jmp	.L3316
	.p2align 4,,10
	.p2align 3
.L3403:
	movq	$0, 24(%rsp)
.L3311:
	movq	24(%rsp), %r10
	cmpb	$0, 16(%rsp)
	je	.L3411
	testq	%r12, %r12
	je	.L3412
	movq	%r10, %rax
	movl	$1, %r9d
	subq	%rcx, %rax
.L3321:
	subq	%rax, %r12
	addq	%r12, %r9
	jmp	.L3314
	.p2align 4,,10
	.p2align 3
.L3414:
	movq	%r13, %rax
.L3361:
	movq	%r14, %rdx
	movq	%rax, %rsi
	subq	%r13, %r8
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
.LEHE46:
	movq	%rax, %rbx
	jmp	.L3360
	.p2align 4,,10
	.p2align 3
.L3282:
	andl	$120, %eax
	movl	$101, %edx
	movb	$0, 24(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 62(%rsp)
.L3284:
	leaq	352(%rsp), %r13
	leaq	225(%rsp), %r14
	movl	$4, %edx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_ZSt8to_charsPcS_fSt12chars_format@PLT
	movq	%rax, %rcx
	cmpl	$75, %edx
	je	.L3395
	movb	$0, 16(%rsp)
	movl	$6, %r12d
.L3287:
	movq	%r13, 32(%rsp)
	movq	%rcx, %r15
.L3303:
	cmpb	$0, 24(%rsp)
	je	.L3289
	cmpq	%r15, %r14
	je	.L3289
	movq	%r14, %r13
	.p2align 4
	.p2align 3
.L3308:
	movsbl	0(%r13), %edi
	addq	$1, %r13
	call	toupper@PLT
	movb	%al, -1(%r13)
	cmpq	%r13, %r15
	jne	.L3308
	jmp	.L3289
	.p2align 4,,10
	.p2align 3
.L3271:
	andl	$120, %eax
	movl	$112, %edx
	movb	$0, 24(%rsp)
	cmpb	$16, %al
	movl	$101, %eax
	cmovne	%edx, %eax
	movb	%al, 62(%rsp)
.L3273:
	movl	$4, 32(%rsp)
	movl	%r12d, %ecx
	movb	$0, 16(%rsp)
	jmp	.L3381
	.p2align 4,,10
	.p2align 3
.L3263:
	movl	%r12d, %ecx
.L3277:
	movb	$69, 62(%rsp)
	movb	$1, 24(%rsp)
.L3274:
	movl	$3, 32(%rsp)
	movb	$1, 16(%rsp)
.L3381:
	movl	32(%rsp), %edx
	movss	(%rsp), %xmm0
	leaq	352(%rsp), %r13
	leaq	225(%rsp), %r14
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	_ZSt8to_charsPcS_fSt12chars_formati@PLT
	movq	%rax, %rcx
	cmpl	$75, %edx
	jne	.L3287
	leaq	8(%r12), %r13
	cmpl	$2, 32(%rsp)
	je	.L3492
.L3290:
	leaq	128(%rsp), %rax
	movq	%rax, 40(%rsp)
	cmpq	$128, %r13
	jbe	.L3294
	movq	%r13, %rsi
	movq	%rax, %rdi
.LEHB47:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.L3466:
	movl	%r12d, 48(%rsp)
	movq	128(%rsp), %rax
.L3380:
	cmpq	%rbp, %rax
	je	.L3401
	movq	144(%rsp), %rax
	leaq	(%rax,%rax), %r14
.L3301:
	movq	40(%rsp), %rdi
	movq	%r14, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.LEHE47:
	movq	128(%rsp), %r13
	movl	48(%rsp), %ecx
	movl	32(%rsp), %edx
	movss	(%rsp), %xmm0
	leaq	-1(%r13,%r14), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_fSt12chars_formati@PLT
	movq	%rax, %r15
	testl	%edx, %edx
	je	.L3296
	movq	128(%rsp), %rax
	movq	$0, 136(%rsp)
	movb	$0, (%rax)
	movq	128(%rsp), %rax
	cmpl	$75, %edx
	jne	.L3298
	jmp	.L3380
	.p2align 4,,10
	.p2align 3
.L3272:
	movl	$3, 32(%rsp)
	movl	%r12d, %ecx
	movb	$101, 62(%rsp)
	movb	$0, 16(%rsp)
	movb	$0, 24(%rsp)
	jmp	.L3381
	.p2align 4,,10
	.p2align 3
.L3267:
	movb	$0, 24(%rsp)
	movl	%r12d, %ecx
.L3275:
	movl	$2, 32(%rsp)
	movb	$101, 62(%rsp)
	movb	$0, 16(%rsp)
	jmp	.L3381
	.p2align 4,,10
	.p2align 3
.L3268:
	movl	%r12d, %ecx
.L3280:
	movb	$69, 62(%rsp)
	movb	$1, 24(%rsp)
.L3276:
	movl	$1, 32(%rsp)
	movb	$0, 16(%rsp)
	jmp	.L3381
	.p2align 4,,10
	.p2align 3
.L3269:
	movb	$101, 62(%rsp)
	movl	%r12d, %ecx
	movb	$0, 24(%rsp)
	jmp	.L3276
	.p2align 4,,10
	.p2align 3
.L3270:
	andl	$120, %eax
	movl	$80, %edx
	movb	$1, 24(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 62(%rsp)
	jmp	.L3273
	.p2align 4,,10
	.p2align 3
.L3389:
	movl	$6, %ecx
	movl	$6, %r12d
.L3279:
	movb	$1, 24(%rsp)
	jmp	.L3275
	.p2align 4,,10
	.p2align 3
.L3390:
	movb	$101, 62(%rsp)
	movl	$6, %ecx
	movl	$6, %r12d
	movb	$0, 24(%rsp)
	jmp	.L3274
	.p2align 4,,10
	.p2align 3
.L3265:
	movb	$101, 62(%rsp)
	movl	%r12d, %ecx
	movb	$0, 24(%rsp)
	jmp	.L3274
	.p2align 4,,10
	.p2align 3
.L3266:
	movl	%r12d, %ecx
	jmp	.L3279
	.p2align 4,,10
	.p2align 3
.L3386:
	movb	$101, 62(%rsp)
	movl	$6, %ecx
	movl	$6, %r12d
	movb	$0, 24(%rsp)
	jmp	.L3276
	.p2align 4,,10
	.p2align 3
.L3387:
	movl	$6, %ecx
	movl	$6, %r12d
	jmp	.L3280
	.p2align 4,,10
	.p2align 3
.L3388:
	movb	$0, 24(%rsp)
	movl	$6, %ecx
	movl	$6, %r12d
	jmp	.L3275
	.p2align 4,,10
	.p2align 3
.L3391:
	movl	$6, %ecx
	movl	$6, %r12d
	jmp	.L3277
	.p2align 4,,10
	.p2align 3
.L3281:
	andl	$120, %eax
	movl	$80, %edx
	movb	$1, 24(%rsp)
	cmpb	$16, %al
	movl	$112, %eax
	cmove	%edx, %eax
	movb	%al, 62(%rsp)
	jmp	.L3284
	.p2align 4,,10
	.p2align 3
.L3416:
	movq	%r13, %rax
	movl	$2, %ecx
	movl	$32, %r9d
	jmp	.L3361
	.p2align 4,,10
	.p2align 3
.L3479:
	movb	$43, -1(%r14)
	movl	$1, %ecx
	movzbl	(%rbx), %r8d
	subq	$1, %r14
	jmp	.L3306
	.p2align 4,,10
	.p2align 3
.L3355:
	movzwl	4(%rbx), %edi
	movq	8(%rsp), %rsi
	movq	%rdx, 16(%rsp)
.LEHB48:
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
.LEHE48:
	movq	16(%rsp), %rdx
	movq	%rax, %r8
	jmp	.L3354
	.p2align 4,,10
	.p2align 3
.L3478:
	movq	%rsi, %rdi
	movzwl	6(%rbx), %esi
	movzbl	(%rdi), %edx
	movq	%rdx, %rcx
	andl	$15, %ecx
	cmpq	%rcx, %rsi
	jnb	.L3224
	movq	(%rdi), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 16(%rsp)
	leaq	(%rsi,%rsi,4), %rcx
	salq	$4, %rsi
	addq	8(%rdi), %rsi
	shrq	$4, %rdx
	movdqa	(%rsi), %xmm0
	shrq	%cl, %rdx
	andl	$31, %edx
	movaps	%xmm0, 96(%rsp)
.L3225:
	movb	%dl, 112(%rsp)
	movdqa	96(%rsp), %xmm0
	movzbl	%dl, %edx
	leaq	.L3229(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	movaps	%xmm0, 64(%rsp)
	movdqa	112(%rsp), %xmm0
	addq	%rcx, %rdx
	movaps	%xmm0, 80(%rsp)
	notrack jmp	*%rdx
	.section	.rodata._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"aG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.align 4
	.align 4
.L3229:
	.long	.L3226-.L3229
	.long	.L3244-.L3229
	.long	.L3243-.L3229
	.long	.L3242-.L3229
	.long	.L3241-.L3229
	.long	.L3240-.L3229
	.long	.L3239-.L3229
	.long	.L3238-.L3229
	.long	.L3237-.L3229
	.long	.L3236-.L3229
	.long	.L3235-.L3229
	.long	.L3234-.L3229
	.long	.L3233-.L3229
	.long	.L3232-.L3229
	.long	.L3231-.L3229
	.long	.L3230-.L3229
	.long	.L3228-.L3229
	.long	.L3228-.L3229
	.long	.L3228-.L3229
	.long	.L3228-.L3229
	.long	.L3228-.L3229
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.p2align 4,,10
	.p2align 3
.L3481:
	xorl	%r9d, %r9d
	cmpq	%rax, %r13
	movq	%r13, %r10
	sete	%r9b
	cmpb	$0, 16(%rsp)
	jne	.L3493
.L3408:
	xorl	%r12d, %r12d
	jmp	.L3314
	.p2align 4,,10
	.p2align 3
.L3395:
	movl	$4, %r12d
.L3288:
	leaq	128(%rsp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
.LEHB49:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	128(%rsp), %rax
	testl	%r12d, %r12d
	je	.L3297
.L3300:
	cmpq	%rbp, %rax
	je	.L3399
	movq	144(%rsp), %rax
	leaq	(%rax,%rax), %r12
.L3299:
	movq	40(%rsp), %rdi
	movq	%r12, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	128(%rsp), %r13
	movss	(%rsp), %xmm0
	movl	$4, %edx
	leaq	-1(%r13,%r12), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_fSt12chars_format@PLT
	movq	%rax, %r15
	testl	%edx, %edx
	je	.L3400
	movq	128(%rsp), %rax
	movq	$0, 136(%rsp)
	movb	$0, (%rax)
	movq	128(%rsp), %rax
	cmpl	$75, %edx
	je	.L3300
.L3469:
	movb	$0, 16(%rsp)
	movl	$6, %r12d
.L3298:
	leaq	1(%rax), %r14
	addq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L3303
	.p2align 4,,10
	.p2align 3
.L3312:
	movsbl	62(%rsp), %esi
	movq	%r13, %rdx
	movq	%r14, %rdi
	movb	%r8b, 40(%rsp)
	movq	%rcx, 24(%rsp)
	call	memchr@PLT
	movq	24(%rsp), %rcx
	movzbl	40(%rsp), %r8d
	testq	%rax, %rax
	je	.L3409
	subq	%r14, %rax
	cmpq	$-1, %rax
	cmove	%r13, %rax
	movq	%rax, 24(%rsp)
	jmp	.L3311
	.p2align 4,,10
	.p2align 3
.L3489:
	movq	160(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L3494
	movq	192(%rsp), %rax
	leaq	208(%rsp), %rsi
	cmpq	%rsi, %rax
	je	.L3372
	movq	176(%rsp), %rcx
	movq	%rdx, %xmm0
	movq	%rax, 160(%rsp)
	movhps	208(%rsp), %xmm0
	movups	%xmm0, 168(%rsp)
	testq	%rdi, %rdi
	je	.L3351
	movq	%rdi, 192(%rsp)
	movq	%rcx, 208(%rsp)
.L3350:
	movb	$0, (%rdi)
	movq	192(%rsp), %rdi
	movq	168(%rsp), %r13
	movq	160(%rsp), %r15
	cmpq	%rsi, %rdi
	jne	.L3371
	jmp	.L3352
	.p2align 4,,10
	.p2align 3
.L3488:
	movq	%rsi, %rdi
	movq	%rsi, 16(%rsp)
	call	_ZNSt6localeC1Ev@PLT
	movq	8(%rsp), %rax
	movq	16(%rsp), %rsi
	movb	$1, 32(%rax)
	jmp	.L3344
	.p2align 4,,10
	.p2align 3
.L3224:
	andl	$15, %edx
	jne	.L3226
	movq	%rdi, %rcx
	movq	(%rdi), %rdi
	movq	%rdi, %rdx
	movq	%rdi, 16(%rsp)
	shrq	$4, %rdx
	cmpq	%rdx, %rsi
	jb	.L3495
.L3226:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
	.p2align 4,,10
	.p2align 3
.L3327:
	cmpq	%r10, %rcx
	jb	.L3496
	movq	40(%rsp), %rdi
	movl	$48, %r8d
	movq	%r9, %rcx
	xorl	%edx, %edx
	movq	%r10, %rsi
	movq	%r10, 16(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc.isra.0
	movq	16(%rsp), %r10
	cmpq	%r10, 24(%rsp)
	jne	.L3338
	movq	128(%rsp), %rax
	movq	24(%rsp), %rcx
	movb	$46, (%rax,%rcx)
	.p2align 4
	.p2align 3
.L3338:
	movq	136(%rsp), %r13
	movq	128(%rsp), %r14
.L3326:
	leaq	176(%rsp), %r12
	movb	$0, 176(%rsp)
	movq	%r12, 160(%rsp)
	movq	$0, 168(%rsp)
	testb	$32, (%rbx)
	je	.L3343
	jmp	.L3382
.L3411:
	movl	$1, %r9d
	xorl	%r12d, %r12d
	jmp	.L3320
.L3297:
	cmpq	%rbp, %rax
	je	.L3397
	movq	144(%rsp), %rax
	leaq	(%rax,%rax), %r12
.L3295:
	movq	40(%rsp), %rdi
	movq	%r12, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
	movq	128(%rsp), %r13
	movss	(%rsp), %xmm0
	leaq	-1(%r13,%r12), %rsi
	leaq	1(%r13), %rdi
	call	_ZSt8to_charsPcS_f@PLT
	movq	%rax, %r15
	testl	%edx, %edx
	je	.L3400
	movq	128(%rsp), %rax
	movq	$0, 136(%rsp)
	movb	$0, (%rax)
	movq	128(%rsp), %rax
	cmpl	$75, %edx
	jne	.L3469
	jmp	.L3297
.L3493:
	cmpb	$48, (%r14,%rcx)
	jne	.L3315
.L3468:
	movq	$-1, %r11
.L3316:
	movq	%r10, %rax
	subq	%r11, %rax
	jmp	.L3319
.L3492:
	movss	(%rsp), %xmm0
	leaq	96(%rsp), %rdi
	movl	$0, 96(%rsp)
	call	frexpf@PLT
	movl	96(%rsp), %eax
	testl	%eax, %eax
	jle	.L3290
	imull	$4004, %eax, %edx
	movq	%rdx, %rax
	imulq	$995517945, %rdx, %rdx
	shrq	$32, %rdx
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$13, %eax
	addl	$1, %eax
	addq	%rax, %r13
	jmp	.L3290
.L3409:
	movq	%r13, 24(%rsp)
	jmp	.L3311
.L3494:
	movq	192(%rsp), %rax
	leaq	208(%rsp), %rsi
	cmpq	%rsi, %rax
	je	.L3372
	movq	%rax, 160(%rsp)
	movq	%rdx, %xmm0
	movhps	208(%rsp), %xmm0
	movups	%xmm0, 168(%rsp)
.L3351:
	movq	%rsi, 192(%rsp)
	leaq	208(%rsp), %rsi
	movq	%rsi, %rdi
	jmp	.L3350
.L3401:
	movl	$30, %r14d
	jmp	.L3301
.L3239:
	movq	64(%rsp), %r12
	jmp	.L3223
.L3240:
	movq	64(%rsp), %r12
	testq	%r12, %r12
	jns	.L3223
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L3241:
	movl	64(%rsp), %r12d
	jmp	.L3223
.L3242:
	movslq	64(%rsp), %r12
	testl	%r12d, %r12d
	jns	.L3223
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
	.p2align 4,,10
	.p2align 3
.L3400:
	movb	$0, 16(%rsp)
	movl	$6, %r12d
.L3296:
	movq	128(%rsp), %rdx
	movq	%r15, %rax
	subq	%r13, %rax
	movq	%rax, 136(%rsp)
	movb	$0, (%rdx,%rax)
	movq	128(%rsp), %rax
	leaq	1(%rax), %r14
	addq	136(%rsp), %rax
	movq	%rax, 32(%rsp)
	jmp	.L3303
.L3396:
	movb	$0, 24(%rsp)
	xorl	%r12d, %r12d
	movb	$101, 62(%rsp)
	jmp	.L3288
.L3323:
	leaq	(%r10,%r9), %rdi
	leaq	(%r14,%r10), %r15
	movq	%r13, %rdx
	movq	%r9, 32(%rsp)
	subq	%r10, %rdx
	addq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r10, 16(%rsp)
	call	memmove@PLT
	movq	16(%rsp), %r10
	cmpq	%r10, 24(%rsp)
	movq	32(%rsp), %r9
	jne	.L3325
	movq	24(%rsp), %rax
	movb	$46, (%r15)
	leaq	1(%r14,%rax), %r15
.L3325:
	movq	%r12, %rdx
	movl	$48, %esi
	movq	%r15, %rdi
	movq	%r9, 16(%rsp)
	call	memset@PLT
	addq	16(%rsp), %r13
	jmp	.L3326
.L3412:
	movl	$1, %r9d
	jmp	.L3320
.L3406:
	movq	%r13, %r10
	jmp	.L3317
.L3417:
	movq	%r13, %rax
	movl	$2, %ecx
	movl	$48, %r9d
	jmp	.L3361
.L3335:
	movq	40(%rsp), %rdi
	movq	%r13, %r8
	xorl	%edx, %edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	128(%rsp), %rax
	jmp	.L3336
.L3495:
	salq	$5, %rsi
	addq	8(%rcx), %rsi
	movdqu	(%rsi), %xmm0
	movaps	%xmm0, 96(%rsp)
	movzbl	16(%rsi), %edx
	movb	%dl, 112(%rsp)
	movzbl	16(%rsi), %edx
	jmp	.L3225
.L3482:
	movq	40(%rsp), %rdi
	movl	$46, %esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	testq	%r12, %r12
	movq	16(%rsp), %r10
	je	.L3476
	movq	136(%rsp), %rsi
	jmp	.L3378
.L3399:
	movl	$30, %r12d
	jmp	.L3299
.L3397:
	movl	$30, %r12d
	jmp	.L3295
.L3294:
	movl	$256, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm
.LEHE49:
	jmp	.L3466
.L3485:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	movq	128(%rsp), %rax
	jmp	.L3336
.L3372:
	cmpq	$1, %rdx
	je	.L3497
	movq	%rsi, 16(%rsp)
	call	memcpy@PLT
	movq	16(%rsp), %rsi
.L3349:
	movq	200(%rsp), %rax
	movq	160(%rsp), %rdx
	movq	%rax, 168(%rsp)
	movb	$0, (%rdx,%rax)
	movq	192(%rsp), %rdi
	jmp	.L3350
.L3490:
	movq	(%rdi), %rax
	movq	%r8, 8(%rsp)
	movq	%rdi, (%rsp)
.LEHB50:
	call	*(%rax)
.LEHE50:
	movq	8(%rsp), %r8
	movq	(%rsp), %rdi
	jmp	.L3362
.L3497:
	movzbl	208(%rsp), %eax
	movb	%al, (%rdi)
	jmp	.L3349
.L3365:
	leaq	96(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
.L3366:
	movq	160(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L3368
	movq	176(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3368:
	movq	128(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L3369
	movq	144(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3369:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	je	.L3370
.L3457:
	call	__stack_chk_fail@PLT
.L3420:
	endbr64
	movq	%rax, %rbx
	jmp	.L3365
.L3228:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
.LEHB51:
	call	_ZSt20__throw_format_errorPKc
.L3496:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	movq	%r10, %rdx
	leaq	.LC46(%rip), %rsi
	leaq	.LC47(%rip), %rdi
	xorl	%eax, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L3230:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3421:
	endbr64
	movq	%rax, %rbx
	jmp	.L3366
.L3231:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3232:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3233:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3234:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3235:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3236:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3237:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3238:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3419:
	endbr64
	movq	%rax, %rbx
	jmp	.L3368
.L3243:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3244:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3484:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L3483:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3457
	movq	%r13, %rcx
	movq	%r10, %rdx
	leaq	.LC44(%rip), %rsi
	xorl	%eax, %eax
	leaq	.LC45(%rip), %rdi
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.LEHE51:
.L3227:
.L3370:
	movq	%rbx, %rdi
.LEHB52:
	call	_Unwind_Resume@PLT
.LEHE52:
	.cfi_endproc
.LFE6329:
	.section	.gcc_except_table
.LLSDA6329:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6329-.LLSDACSB6329
.LLSDACSB6329:
	.uleb128 .LEHB44-.LFB6329
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L3419-.LFB6329
	.uleb128 0
	.uleb128 .LEHB45-.LFB6329
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L3420-.LFB6329
	.uleb128 0
	.uleb128 .LEHB46-.LFB6329
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L3421-.LFB6329
	.uleb128 0
	.uleb128 .LEHB47-.LFB6329
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L3419-.LFB6329
	.uleb128 0
	.uleb128 .LEHB48-.LFB6329
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L3421-.LFB6329
	.uleb128 0
	.uleb128 .LEHB49-.LFB6329
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L3419-.LFB6329
	.uleb128 0
	.uleb128 .LEHB50-.LFB6329
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L3421-.LFB6329
	.uleb128 0
	.uleb128 .LEHB51-.LFB6329
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L3419-.LFB6329
	.uleb128 0
	.uleb128 .LEHB52-.LFB6329
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
.LLSDACSE6329:
	.section	.text._ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,"axG",@progbits,_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_,comdat
	.size	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_, .-_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.section	.text._ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,"axG",@progbits,_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	.type	_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv, @function
_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv:
.LFB6671:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movq	32(%rdi), %r13
	movq	%rdi, (%rsp)
	movq	%fs:40, %r14
	movq	%r14, 200(%rsp)
	movq	48(%rdi), %r14
	cmpq	%r13, %r14
	je	.L3499
	movdqu	16(%rdi), %xmm0
	movq	%rdi, %rax
	movl	4(%rdi), %r12d
	movq	%r14, %r8
	movq	%r14, 96(%rsp)
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %r11
	movq	%rax, %r14
	movaps	%xmm0, 64(%rsp)
	movdqu	32(%rdi), %xmm0
	leaq	64(%rsp), %rdi
	movq	%rdi, 16(%rsp)
	movaps	%xmm0, 80(%rsp)
	movzbl	88(%rsp), %ebp
.L3500:
	movzbl	%bpl, %eax
	movzbl	89(%rsp), %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	je	.L3638
	jge	.L3570
	addl	$1, %ebp
	movb	%bpl, 88(%rsp)
.L3570:
	cmpq	%r13, %r8
	je	.L3637
	movzbl	88(%rsp), %edi
	movl	$1717, %edx
	movq	%r11, %r9
	movl	64(%rsp,%rdi,4), %eax
	movq	%rdi, %rbp
	movl	%eax, %r10d
	sall	$4, %r10d
	orl	$15, %r10d
	.p2align 4
	.p2align 3
.L3502:
	testq	%rdx, %rdx
	jle	.L3639
.L3503:
	movq	%rdx, %rcx
	sarq	%rcx
	cmpl	%r10d, (%r9,%rcx,4)
	jnb	.L3574
	subq	%rcx, %rdx
	leaq	4(%r9,%rcx,4), %r9
	subq	$1, %rdx
	testq	%rdx, %rdx
	jg	.L3503
.L3639:
	movl	-4(%r9), %edx
	movzbl	8(%r14), %ecx
	movl	%edx, %ebx
	andl	$15, %ebx
	movl	%ebx, %r15d
	cmpb	$3, %cl
	je	.L3504
	cmpb	$1, %cl
	je	.L3505
	cmpl	$10, %ebx
	je	.L3640
	cmpl	$4, %ebx
	je	.L3510
.L3515:
	movb	$3, 8(%r14)
.L3504:
	cmpl	$13, %ebx
	jne	.L3510
	movzbl	9(%r14), %esi
	leal	1(%rsi), %ecx
.L3508:
	movb	%cl, 9(%r14)
	leaq	_ZNSt9__unicode9__v16_0_014__incb_linkersE(%rip), %r9
	cmpl	%eax, _ZNSt9__unicode9__v16_0_014__incb_linkersE(%rip)
	leaq	24(%r9), %rsi
	je	.L3520
	addq	$4, %r9
	cmpl	%eax, (%r9)
	je	.L3520
	addq	$4, %r9
.L3521:
	cmpl	%eax, (%r9)
	je	.L3520
	leaq	4(%r9), %r10
	movq	%r10, %r9
	cmpl	%eax, (%r10)
	je	.L3520
	addq	$4, %r9
	cmpl	%eax, (%r9)
	je	.L3520
	leaq	8(%r10), %r9
	cmpl	%eax, 8(%r10)
	je	.L3520
	leaq	12(%r10), %r9
	cmpq	%rsi, %r9
	jne	.L3521
	.p2align 4
	.p2align 3
.L3522:
	movdqa	64(%rsp), %xmm2
	movdqa	80(%rsp), %xmm0
	leal	-1(%r12), %r10d
	movq	96(%rsp), %r9
	movaps	%xmm2, 112(%rsp)
	movq	%r9, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	cmpl	$1, %r10d
	jbe	.L3524
	cmpl	$3, %r12d
	je	.L3641
	andl	$13, %edx
	cmpl	$1, %edx
	je	.L3524
	cmpl	$2, %ebx
	je	.L3578
	leal	-7(%r12), %edx
	cmpl	$5, %edx
	ja	.L3530
	leaq	.L3532(%rip), %r10
	movslq	(%r10,%rdx,4), %rdx
	addq	%r10, %rdx
	notrack jmp	*%rdx
	.section	.rodata._ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,"aG",@progbits,_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,comdat
	.align 4
	.align 4
.L3532:
	.long	.L3534-.L3532
	.long	.L3533-.L3532
	.long	.L3531-.L3532
	.long	.L3530-.L3532
	.long	.L3533-.L3532
	.long	.L3531-.L3532
	.section	.text._ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,"axG",@progbits,_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv,comdat
	.p2align 4,,10
	.p2align 3
.L3574:
	movq	%rcx, %rdx
	jmp	.L3502
	.p2align 4,,10
	.p2align 3
.L3520:
	cmpq	%rsi, %r9
	je	.L3522
	movb	$1, 10(%r14)
	jmp	.L3522
	.p2align 4,,10
	.p2align 3
.L3505:
	testl	%ebx, %ebx
	jne	.L3515
	cmpl	$168, %eax
	ja	.L3642
.L3514:
	movb	$3, 8(%r14)
.L3510:
	xorl	%ecx, %ecx
	jmp	.L3508
	.p2align 4,,10
	.p2align 3
.L3638:
	cmpq	%r13, %r8
	je	.L3637
	movzbl	90(%rsp), %eax
	addq	%r13, %rax
	movq	%rax, 80(%rsp)
	cmpq	%rax, %r8
	je	.L3643
	movq	16(%rsp), %rdi
	movq	%r8, 8(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	80(%rsp), %r13
	movq	8(%rsp), %r8
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %r11
	jmp	.L3570
	.p2align 4,,10
	.p2align 3
.L3640:
	cmpb	$2, %cl
	je	.L3513
	movl	(%r14), %esi
	cmpl	$168, %esi
	jbe	.L3514
	movl	%r12d, 8(%rsp)
	leaq	_ZNSt9__unicode9__v16_0_014__xpicto_edgesE(%rip), %r9
	movl	$156, %ecx
	movq	%r8, 24(%rsp)
	movq	%r9, %r10
.L3511:
	testq	%rcx, %rcx
	jle	.L3644
.L3512:
	movq	%rcx, %r8
	sarq	%r8
	cmpl	(%r10,%r8,4), %esi
	jb	.L3576
	subq	%r8, %rcx
	leaq	4(%r10,%r8,4), %r10
	subq	$1, %rcx
	testq	%rcx, %rcx
	jg	.L3512
.L3644:
	subq	%r9, %r10
	movl	8(%rsp), %r12d
	movq	24(%rsp), %r8
	andl	$4, %r10d
	je	.L3514
.L3513:
	movb	$1, 8(%r14)
	xorl	%ecx, %ecx
	jmp	.L3508
	.p2align 4,,10
	.p2align 3
.L3643:
	movdqa	64(%rsp), %xmm2
	movq	96(%rsp), %r9
	movb	$0, 88(%rsp)
	movdqa	80(%rsp), %xmm0
.L3564:
	movq	(%rsp), %rax
	movq	%r9, 48(%rax)
	movups	%xmm2, 16(%rax)
	movups	%xmm0, 32(%rax)
.L3499:
	movq	200(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3645
	movq	(%rsp), %rax
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3641:
	.cfi_restore_state
	cmpl	$2, %ebx
	setne	%cl
.L3527:
	testb	%cl, %cl
	jne	.L3636
.L3562:
	movl	%ebx, %r12d
	jmp	.L3500
	.p2align 4,,10
	.p2align 3
.L3637:
	movdqa	64(%rsp), %xmm2
	movdqa	80(%rsp), %xmm0
	movq	96(%rsp), %r9
	jmp	.L3564
	.p2align 4,,10
	.p2align 3
.L3531:
	cmpl	$9, %ebx
	setne	%cl
	jmp	.L3527
	.p2align 4,,10
	.p2align 3
.L3533:
	leal	-8(%rbx), %edx
	cmpl	$1, %edx
	jbe	.L3562
	.p2align 4
	.p2align 3
.L3524:
	movq	(%rsp), %rdi
	movl	%eax, (%rdi)
	xorl	%eax, %eax
	movl	%r15d, 4(%rdi)
	movw	%ax, 8(%rdi)
	movb	$0, 10(%rdi)
	jmp	.L3564
.L3534:
	cmpl	$8, %ebx
	ja	.L3535
	cmpl	$6, %ebx
	ja	.L3562
	jmp	.L3524
.L3530:
	movl	$1104, %edx
	btq	%rbx, %rdx
	setc	%r10b
	cmpl	$5, %r12d
	sete	%dl
	orb	%dl, %r10b
	jne	.L3562
	movzbl	10(%r14), %edx
	movb	%dl, 8(%rsp)
	testb	%dl, %dl
	jne	.L3646
.L3539:
	cmpl	$10, %r12d
	je	.L3647
	cmpl	$13, %r12d
	jne	.L3636
	cmpl	%ebx, %r12d
	jne	.L3636
	notl	%ecx
	andl	$1, %ecx
	jmp	.L3527
.L3578:
	movl	$2, %r15d
	jmp	.L3524
.L3535:
	leal	-11(%rbx), %edx
	cmpl	$1, %edx
	ja	.L3524
	jmp	.L3562
.L3576:
	movq	%r8, %rcx
	jmp	.L3511
.L3647:
	cmpb	$2, 8(%r14)
	je	.L3562
.L3636:
	movdqa	64(%rsp), %xmm2
	movdqa	80(%rsp), %xmm0
	movq	96(%rsp), %r9
	jmp	.L3524
.L3642:
	movl	%r12d, 8(%rsp)
	leaq	_ZNSt9__unicode9__v16_0_014__xpicto_edgesE(%rip), %r9
	movl	$156, %ecx
	movq	%r9, %r10
.L3517:
	testq	%rcx, %rcx
	jle	.L3648
.L3518:
	movq	%rcx, %rsi
	sarq	%rsi
	cmpl	(%r10,%rsi,4), %eax
	jb	.L3577
	subq	%rsi, %rcx
	leaq	4(%r10,%rsi,4), %r10
	subq	$1, %rcx
	testq	%rcx, %rcx
	jg	.L3518
.L3648:
	subq	%r9, %r10
	movl	8(%rsp), %r12d
	andl	$4, %r10d
	je	.L3514
	movb	$2, 8(%r14)
	xorl	%ecx, %ecx
	jmp	.L3508
.L3577:
	movq	%rsi, %rcx
	jmp	.L3517
.L3646:
	movl	(%r14), %edx
	sall	$2, %edx
	cmpl	$3073, %edx
	jbe	.L3539
	movl	%r12d, 36(%rsp)
	orl	$3, %edx
	leaq	_ZNSt9__unicode9__v16_0_012__incb_edgesE(%rip), %r9
	movq	%r8, 40(%rsp)
	movl	%eax, 48(%rsp)
	movl	%edx, 24(%rsp)
	movl	$790, %edx
.L3541:
	testq	%rdx, %rdx
	jle	.L3649
.L3542:
	movq	%rdx, %r8
	movl	24(%rsp), %eax
	sarq	%r8
	cmpl	%eax, (%r9,%r8,4)
	jnb	.L3579
	subq	%r8, %rdx
	leaq	4(%r9,%r8,4), %r9
	subq	$1, %rdx
	testq	%rdx, %rdx
	jg	.L3542
.L3649:
	movl	-4(%r9), %edx
	movl	36(%rsp), %r12d
	movq	40(%rsp), %r8
	movl	48(%rsp), %eax
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.L3539
	movl	112(%rsp,%rdi,4), %edx
	sall	$2, %edx
	cmpl	$3073, %edx
	jbe	.L3539
	movl	%eax, 40(%rsp)
	orl	$3, %edx
	leaq	_ZNSt9__unicode9__v16_0_012__incb_edgesE(%rip), %r9
	movl	%edx, 24(%rsp)
	movl	$790, %edx
.L3544:
	testq	%rdx, %rdx
	jle	.L3650
.L3545:
	movq	%rdx, %rdi
	movl	24(%rsp), %eax
	sarq	%rdi
	cmpl	%eax, (%r9,%rdi,4)
	jnb	.L3580
	subq	%rdi, %rdx
	leaq	4(%r9,%rdi,4), %r9
	subq	$1, %rdx
	testq	%rdx, %rdx
	jg	.L3545
.L3650:
	movl	-4(%r9), %edx
	movl	36(%rsp), %r12d
	movl	40(%rsp), %eax
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.L3539
	movdqu	16(%r14), %xmm0
	movq	48(%r14), %rdi
	movb	%cl, 36(%rsp)
	movq	%r8, 24(%rsp)
	movq	%r14, %r8
	movaps	%xmm0, 160(%rsp)
	movdqu	32(%r14), %xmm0
	movl	%eax, %r14d
	movq	%rdi, 192(%rsp)
	leaq	160(%rsp), %rdi
	movaps	%xmm0, 176(%rsp)
	movzbl	184(%rsp), %r9d
	movq	%rdi, 48(%rsp)
	movq	%xmm0, %rdi
	movl	%r15d, 40(%rsp)
	movl	%ebx, %r15d
	movl	%r10d, %ebx
.L3546:
	movzbl	%r9b, %edx
	movzbl	185(%rsp), %ecx
	addl	$1, %edx
	cmpl	%ecx, %edx
	je	.L3651
	jge	.L3556
	addl	$1, %r9d
	movb	%r9b, 184(%rsp)
.L3556:
	cmpq	%rdi, %r13
	sete	%cl
	cmpb	%r9b, %bpl
	sete	%dl
	testb	%dl, %cl
	jne	.L3560
	movzbl	%r9b, %edx
	movl	160(%rsp,%rdx,4), %ecx
	cmpl	%ecx, _ZNSt9__unicode9__v16_0_014__incb_linkersE(%rip)
	leaq	_ZNSt9__unicode9__v16_0_014__incb_linkersE(%rip), %rdx
	je	.L3547
	addq	$4, %rdx
	cmpl	%ecx, (%rdx)
	je	.L3547
	addq	$4, %rdx
.L3548:
	cmpl	%ecx, (%rdx)
	je	.L3547
	leaq	4(%rdx), %rax
	movq	%rax, %rdx
	cmpl	%ecx, (%rax)
	je	.L3547
	addq	$4, %rdx
	cmpl	%ecx, (%rdx)
	je	.L3547
	leaq	8(%rax), %rdx
	cmpl	%ecx, 8(%rax)
	je	.L3547
	leaq	12(%rax), %rdx
	cmpq	%rsi, %rdx
	jne	.L3548
.L3549:
	sall	$2, %ecx
	cmpl	$3073, %ecx
	ja	.L3652
.L3630:
	movl	%r14d, %eax
	movl	%r15d, %ebx
	movq	%r8, %r14
	movzbl	36(%rsp), %ecx
	movl	40(%rsp), %r15d
	movq	24(%rsp), %r8
	jmp	.L3539
.L3579:
	movq	%r8, %rdx
	jmp	.L3541
.L3580:
	movq	%rdi, %rdx
	jmp	.L3544
.L3547:
	cmpq	%rsi, %rdx
	je	.L3549
	movzbl	8(%rsp), %ebx
	jmp	.L3546
.L3651:
	movq	192(%rsp), %rdx
	cmpq	%rdi, %rdx
	je	.L3556
	movzbl	186(%rsp), %ecx
	addq	%rcx, %rdi
	movq	%rdi, 176(%rsp)
	cmpq	%rdi, %rdx
	je	.L3653
	movq	48(%rsp), %rdi
	movq	%r8, 56(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	176(%rsp), %rdi
	movzbl	184(%rsp), %r9d
	leaq	24+_ZNSt9__unicode9__v16_0_014__incb_linkersE(%rip), %rsi
	movq	56(%rsp), %r8
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %r11
	jmp	.L3556
.L3653:
	movb	$0, 184(%rsp)
	xorl	%r9d, %r9d
	jmp	.L3556
.L3645:
	call	__stack_chk_fail@PLT
.L3560:
	testb	%bl, %bl
	movl	%r14d, %eax
	movl	%r15d, %ebx
	movq	%r8, %r14
	movzbl	36(%rsp), %ecx
	movl	40(%rsp), %r15d
	movq	24(%rsp), %r8
	jne	.L3562
	jmp	.L3539
.L3652:
	movl	%r12d, 56(%rsp)
	movl	%ecx, %eax
	movl	$790, %edx
	leaq	_ZNSt9__unicode9__v16_0_012__incb_edgesE(%rip), %rcx
	orl	$3, %eax
.L3553:
	testq	%rdx, %rdx
	jle	.L3654
.L3554:
	movq	%rdx, %r10
	sarq	%r10
	cmpl	%eax, (%rcx,%r10,4)
	jnb	.L3582
	subq	%r10, %rdx
	leaq	4(%rcx,%r10,4), %rcx
	subq	$1, %rdx
	testq	%rdx, %rdx
	jg	.L3554
.L3654:
	movl	-4(%rcx), %edx
	movl	56(%rsp), %r12d
	andl	$3, %edx
	cmpl	$1, %edx
	je	.L3583
	cmpl	$2, %edx
	je	.L3546
	jmp	.L3630
	.p2align 4,,10
	.p2align 3
.L3582:
	movq	%r10, %rdx
	jmp	.L3553
.L3583:
	xorl	%ebx, %ebx
	jmp	.L3546
	.cfi_endproc
.LFE6671:
	.size	_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv, .-_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	.section	.text._ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE,"axG",@progbits,_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	.type	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE, @function
_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE:
.LFB6341:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6341
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %xmm0
	movq	%rsi, %r9
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	punpcklqdq	%xmm0, %xmm0
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$760, %rsp
	.cfi_def_cfa_offset 816
	movq	%rcx, 8(%rsp)
	movzbl	1(%rdi), %ecx
	movl	%ecx, %eax
	movq	%fs:40, %r12
	movq	%r12, 744(%rsp)
	movq	%rsi, %r12
	andl	$6, %eax
	movq	%rdx, 16(%rsp)
	testw	$384, (%rdi)
	jne	.L3656
	testb	%al, %al
	je	.L3813
.L3657:
	cmpb	$2, %al
	je	.L3814
	cmpb	$4, %al
	je	.L3815
.L3662:
	testq	%r9, %r9
	je	.L3767
	leaq	(%rdx,%r9), %rbp
	cmpq	%rbp, %rdx
	je	.L3685
	xorl	%r11d, %r11d
	leaq	144(%rsp), %rdi
	movl	%r8d, 32(%rsp)
	movups	%xmm0, 152(%rsp)
	movw	%r11w, 168(%rsp)
	movb	$0, 170(%rsp)
	movq	%rbp, 176(%rsp)
	movq	%rdx, 48(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	160(%rsp), %rcx
	movq	48(%rsp), %xmm0
	movq	%rbp, 176(%rsp)
	movq	%rbp, 448(%rsp)
	movzwl	168(%rsp), %eax
	movq	%rcx, %xmm5
	cmpq	%rcx, %rbp
	movl	32(%rsp), %r8d
	movq	%rbp, 400(%rsp)
	punpcklqdq	%xmm5, %xmm0
	movups	%xmm0, 152(%rsp)
	movdqa	144(%rsp), %xmm1
	movdqa	160(%rsp), %xmm0
	movaps	%xmm1, 416(%rsp)
	movaps	%xmm0, 432(%rsp)
	movaps	%xmm1, 368(%rsp)
	movaps	%xmm0, 384(%rsp)
	je	.L3687
	movzbl	%al, %eax
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %rsi
	movl	416(%rsp,%rax,4), %r8d
	movl	$1717, %eax
	movl	%r8d, %edi
	sall	$4, %edi
	orl	$15, %edi
	.p2align 4
	.p2align 3
.L3690:
	testq	%rax, %rax
	jle	.L3816
.L3691:
	movq	%rax, %rdx
	sarq	%rdx
	cmpl	%edi, (%rsi,%rdx,4)
	jnb	.L3768
	subq	%rdx, %rax
	leaq	4(%rsi,%rdx,4), %rsi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3691
.L3816:
	movl	-4(%rsi), %ebx
	andl	$15, %ebx
	movl	%ebx, %r13d
	jmp	.L3687
	.p2align 4,,10
	.p2align 3
.L3656:
	testb	%al, %al
	je	.L3662
	jmp	.L3657
	.p2align 4,,10
	.p2align 3
.L3813:
	movq	8(%rsp), %rax
	notl	%ecx
	andl	$120, %ecx
	movq	16(%rax), %rbp
	je	.L3817
	testq	%rsi, %rsi
	jne	.L3818
	.p2align 4
	.p2align 3
.L3661:
	movq	744(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3808
	addq	$760, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3685:
	.cfi_restore_state
	movq	%rbp, %xmm0
	xorl	%r10d, %r10d
	movl	$0, 144(%rsp)
	punpcklqdq	%xmm0, %xmm0
	movb	$0, 170(%rsp)
	movups	%xmm0, 152(%rsp)
	movdqa	144(%rsp), %xmm0
	movw	%r10w, 168(%rsp)
	movaps	%xmm0, 368(%rsp)
	movdqa	160(%rsp), %xmm0
	movq	%rbp, 176(%rsp)
	movaps	%xmm0, 384(%rsp)
.L3687:
	xorl	%r9d, %r9d
	movl	%r8d, 352(%rsp)
	movl	$1, %ebx
	movl	%r13d, 356(%rsp)
	movw	%r9w, 360(%rsp)
	movb	$0, 362(%rsp)
	movdqa	352(%rsp), %xmm0
	movq	%rbp, 400(%rsp)
	movaps	%xmm0, 416(%rsp)
	movdqa	368(%rsp), %xmm0
	movq	%rbp, 464(%rsp)
	movaps	%xmm0, 432(%rsp)
	movdqa	384(%rsp), %xmm0
	movaps	%xmm0, 448(%rsp)
	cmpl	$4351, %r8d
	jbe	.L3696
	jmp	.L3819
	.p2align 4,,10
	.p2align 3
.L3701:
	movl	416(%rsp), %edx
	movl	$1, %eax
	cmpl	$4351, %edx
	ja	.L3820
.L3697:
	addq	%rax, %rbx
.L3696:
	leaq	416(%rsp), %rdi
	call	_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	cmpq	%rbp, 32(%rax)
	jne	.L3701
.L3684:
	movq	$-1, %rbp
.L3683:
	movzwl	(%r14), %eax
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L3821
.L3702:
	cmpw	$256, %ax
	je	.L3704
.L3707:
	movzbl	1(%r14), %edx
	testb	$6, %dl
	je	.L3822
	notl	%edx
	andl	$120, %edx
	je	.L3823
.L3708:
	movq	16(%rsp), %r13
	movq	744(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L3808
	movq	8(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r14, %r8
	addq	$760, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdx
	movl	$1, %r9d
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LEHB53:
	jmp	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	.p2align 4,,10
	.p2align 3
.L3815:
	.cfi_restore_state
	movzwl	6(%r14), %edi
	movq	8(%rsp), %rsi
	movq	%rdx, 80(%rsp)
	movq	%r9, 72(%rsp)
	movl	%r8d, 32(%rsp)
	movaps	%xmm0, 48(%rsp)
	call	_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
.LEHE53:
	movl	32(%rsp), %r8d
	movdqa	48(%rsp), %xmm0
	cmpq	$-1, %rax
	movq	72(%rsp), %r9
	movq	80(%rsp), %rdx
	movq	%rax, %rbp
	je	.L3662
.L3664:
	testq	%r9, %r9
	je	.L3811
	leaq	(%rdx,%r9), %r13
	cmpq	%r13, %rdx
	je	.L3666
	xorl	%eax, %eax
	leaq	96(%rsp), %rdi
	movq	%rdx, 32(%rsp)
	movw	%ax, 120(%rsp)
	movups	%xmm0, 104(%rsp)
	movb	$0, 122(%rsp)
	movq	%r13, 128(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	112(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%r13, 128(%rsp)
	movq	%r13, 448(%rsp)
	movzwl	120(%rsp), %eax
	movq	%rdx, %xmm0
	movq	%rcx, %xmm2
	movq	%r13, 400(%rsp)
	punpcklqdq	%xmm2, %xmm0
	movups	%xmm0, 104(%rsp)
	movdqa	96(%rsp), %xmm1
	movdqa	112(%rsp), %xmm0
	movaps	%xmm1, 416(%rsp)
	movaps	%xmm0, 432(%rsp)
	movaps	%xmm1, 368(%rsp)
	movaps	%xmm0, 384(%rsp)
	cmpq	%rcx, %r13
	je	.L3668
	movzbl	%al, %eax
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %rsi
	movl	416(%rsp,%rax,4), %r15d
	movl	$1717, %eax
	movl	%r15d, %edi
	sall	$4, %edi
	orl	$15, %edi
	.p2align 4
	.p2align 3
.L3671:
	testq	%rax, %rax
	jle	.L3824
.L3672:
	movq	%rax, %rcx
	sarq	%rcx
	cmpl	%edi, (%rsi,%rcx,4)
	jnb	.L3760
	subq	%rcx, %rax
	leaq	4(%rsi,%rcx,4), %rsi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3672
.L3824:
	movl	-4(%rsi), %ebx
	andl	$15, %ebx
.L3668:
	movl	%ebx, 356(%rsp)
	xorl	%ebx, %ebx
	movw	%bx, 360(%rsp)
	movl	$1, %ebx
	movl	%r15d, 352(%rsp)
	movb	$0, 362(%rsp)
	movdqa	352(%rsp), %xmm0
	movq	%r13, 400(%rsp)
	movaps	%xmm0, 416(%rsp)
	movdqa	368(%rsp), %xmm0
	movq	%r13, 464(%rsp)
	movaps	%xmm0, 432(%rsp)
	movdqa	384(%rsp), %xmm0
	movaps	%xmm0, 448(%rsp)
	cmpl	$4351, %r15d
	ja	.L3825
.L3673:
	cmpq	%rbx, %rbp
	jb	.L3763
	movq	%rdx, 32(%rsp)
	jmp	.L3677
	.p2align 4,,10
	.p2align 3
.L3678:
	addq	%rbx, %rax
	cmpq	%rax, %rbp
	jb	.L3826
.L3766:
	movq	%rax, %rbx
.L3677:
	leaq	416(%rsp), %rdi
	call	_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	cmpq	%r13, 32(%rax)
	je	.L3683
	movl	416(%rsp), %edx
	movl	$1, %eax
	cmpl	$4351, %edx
	jbe	.L3678
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %rdi
	movl	$206, %eax
	movq	%rdi, %r8
	.p2align 4
	.p2align 3
.L3680:
	testq	%rax, %rax
	jle	.L3827
.L3681:
	movq	%rax, %rcx
	sarq	%rcx
	cmpl	(%r8,%rcx,4), %edx
	jb	.L3765
	subq	%rcx, %rax
	leaq	4(%r8,%rcx,4), %r8
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3681
.L3827:
	subq	%rdi, %r8
	movq	%r8, %rax
	shrq	$63, %r8
	sarq	$2, %rax
	addq	%r8, %rax
	andl	$1, %eax
	subq	%r8, %rax
	addl	$1, %eax
	addq	%rbx, %rax
	cmpq	%rax, %rbp
	jnb	.L3766
	.p2align 4
	.p2align 3
.L3826:
	movzwl	(%r14), %eax
	movq	448(%rsp), %r12
	subq	32(%rsp), %r12
	andw	$384, %ax
	cmpw	$128, %ax
	jne	.L3702
	.p2align 4
	.p2align 3
.L3821:
	movzwl	4(%r14), %eax
.L3703:
	cmpq	%rax, %rbx
	jnb	.L3707
	movzbl	1(%r14), %edx
	notl	%edx
	andl	$120, %edx
	jne	.L3708
.L3823:
	leaq	448(%rsp), %rax
	movq	16(%rsp), %r13
	movq	%r12, %rsi
	leaq	16+_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(%rip), %rbx
	movq	%rax, %xmm4
	movq	%rbx, %xmm0
	movq	%rax, 440(%rsp)
	leaq	416(%rsp), %rdi
	leaq	720(%rsp), %rax
	punpcklqdq	%xmm4, %xmm0
	movq	%r13, %rdx
	movl	$12, %ecx
	movq	$256, 432(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rax, 704(%rsp)
	movq	$0, 712(%rsp)
	movb	$0, 720(%rsp)
	movaps	%xmm0, 416(%rsp)
.LEHB54:
	call	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	movq	424(%rsp), %rsi
	movq	440(%rsp), %rdx
	movq	712(%rsp), %r15
	subq	%rsi, %rdx
	testq	%r15, %r15
	je	.L3714
	testq	%rdx, %rdx
	jne	.L3828
.L3715:
	movq	704(%rsp), %rsi
	movq	%r15, 16(%rsp)
	movq	%rsi, %xmm0
	movq	%rsi, 24(%rsp)
	punpcklqdq	%xmm0, %xmm0
	cmpq	$-1, %rbp
	je	.L3736
.L3756:
	addq	%rsi, %r15
	xorl	%r8d, %r8d
	leaq	192(%rsp), %rdi
	movq	%rsi, 48(%rsp)
	movups	%xmm0, 200(%rsp)
	movw	%r8w, 216(%rsp)
	movb	$0, 218(%rsp)
	movq	%r15, 224(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	48(%rsp), %rsi
	movdqa	208(%rsp), %xmm0
	movq	%r15, 224(%rsp)
	movq	%r15, 384(%rsp)
	movzwl	216(%rsp), %eax
	movq	%rsi, 200(%rsp)
	movdqa	192(%rsp), %xmm1
	movq	%r15, 336(%rsp)
	movaps	%xmm1, 352(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm1, 304(%rsp)
	movaps	%xmm0, 320(%rsp)
	cmpq	208(%rsp), %r15
	je	.L3719
	movzbl	%al, %eax
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %rdi
	movl	352(%rsp,%rax,4), %eax
	movl	%eax, %r8d
	movl	%eax, 40(%rsp)
	movl	$1717, %eax
	sall	$4, %r8d
	orl	$15, %r8d
	.p2align 4
	.p2align 3
.L3721:
	testq	%rax, %rax
	jle	.L3829
.L3722:
	movq	%rax, %rdx
	sarq	%rdx
	cmpl	%r8d, (%rdi,%rdx,4)
	jnb	.L3773
	subq	%rdx, %rax
	leaq	4(%rdi,%rdx,4), %rdi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3722
.L3829:
	movl	-4(%rdi), %eax
	andl	$15, %eax
	movl	%eax, 68(%rsp)
.L3719:
	movl	68(%rsp), %ebx
	movl	40(%rsp), %eax
	xorl	%edi, %edi
	movb	$0, 298(%rsp)
	movw	%di, 296(%rsp)
	movl	%ebx, 292(%rsp)
	movl	$1, %ebx
	movl	%eax, 288(%rsp)
	movdqa	288(%rsp), %xmm0
	movq	%r15, 336(%rsp)
	movaps	%xmm0, 352(%rsp)
	movdqa	304(%rsp), %xmm0
	movq	%r15, 400(%rsp)
	movaps	%xmm0, 368(%rsp)
	movdqa	320(%rsp), %xmm0
	movaps	%xmm0, 384(%rsp)
	cmpl	$4351, %eax
	ja	.L3830
.L3723:
	movq	%rsi, %r13
	cmpq	%rbx, %rbp
	jnb	.L3727
	jmp	.L3831
	.p2align 4,,10
	.p2align 3
.L3729:
	addq	%rbx, %rax
	cmpq	%rax, %rbp
	jb	.L3832
	movq	%rax, %rbx
.L3727:
	leaq	352(%rsp), %rdi
	call	_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	cmpq	%r15, 32(%rax)
	je	.L3735
	movl	352(%rsp), %edx
	movl	$1, %eax
	cmpl	$4351, %edx
	jbe	.L3729
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %rsi
	movl	$206, %eax
	movq	%rsi, %rdi
	.p2align 4
	.p2align 3
.L3731:
	testq	%rax, %rax
	jle	.L3833
.L3732:
	movq	%rax, %rcx
	sarq	%rcx
	cmpl	(%rdi,%rcx,4), %edx
	jb	.L3777
	subq	%rcx, %rax
	leaq	4(%rdi,%rcx,4), %rdi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3732
.L3833:
	subq	%rsi, %rdi
	movq	%rdi, %rax
	shrq	$63, %rdi
	sarq	$2, %rax
	addq	%rdi, %rax
	andl	$1, %eax
	subq	%rdi, %rax
	addl	$1, %eax
	jmp	.L3729
	.p2align 4,,10
	.p2align 3
.L3765:
	movq	%rcx, %rax
	jmp	.L3680
	.p2align 4,,10
	.p2align 3
.L3760:
	movq	%rcx, %rax
	jmp	.L3671
	.p2align 4,,10
	.p2align 3
.L3768:
	movq	%rdx, %rax
	jmp	.L3690
	.p2align 4,,10
	.p2align 3
.L3666:
	movq	%rdx, %xmm0
	movl	$0, 96(%rsp)
	xorl	%eax, %eax
	punpcklqdq	%xmm0, %xmm0
	movw	%ax, 120(%rsp)
	movups	%xmm0, 104(%rsp)
	movdqa	96(%rsp), %xmm0
	movb	$0, 122(%rsp)
	movaps	%xmm0, 368(%rsp)
	movdqa	112(%rsp), %xmm0
	movq	%rdx, 128(%rsp)
	movaps	%xmm0, 384(%rsp)
	jmp	.L3668
	.p2align 4,,10
	.p2align 3
.L3763:
	movq	$0, 16(%rsp)
	xorl	%r12d, %r12d
.L3811:
	xorl	%ebx, %ebx
	jmp	.L3683
	.p2align 4,,10
	.p2align 3
.L3777:
	movq	%rcx, %rax
	jmp	.L3731
	.p2align 4,,10
	.p2align 3
.L3773:
	movq	%rdx, %rax
	jmp	.L3721
	.p2align 4,,10
	.p2align 3
.L3780:
	movq	%rdx, %rax
.L3740:
	testq	%rax, %rax
	jle	.L3834
.L3741:
	movq	%rax, %rdx
	sarq	%rdx
	cmpl	%edi, (%rsi,%rdx,4)
	jnb	.L3780
	subq	%rdx, %rax
	leaq	4(%rsi,%rdx,4), %rsi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3741
.L3834:
	movl	-4(%rsi), %eax
	andl	$15, %eax
	movl	%eax, 92(%rsp)
.L3738:
	movl	92(%rsp), %ebx
	movl	88(%rsp), %eax
	xorl	%edx, %edx
	movb	$0, 298(%rsp)
	movw	%dx, 296(%rsp)
	movl	%ebx, 292(%rsp)
	movl	$1, %ebx
	movl	%eax, 288(%rsp)
	movdqa	288(%rsp), %xmm0
	movq	%r15, 336(%rsp)
	movaps	%xmm0, 352(%rsp)
	movdqa	304(%rsp), %xmm0
	movq	%r15, 400(%rsp)
	movaps	%xmm0, 368(%rsp)
	movdqa	320(%rsp), %xmm0
	movaps	%xmm0, 384(%rsp)
	cmpl	$4351, %eax
	jbe	.L3746
	jmp	.L3835
	.p2align 4,,10
	.p2align 3
.L3751:
	movl	352(%rsp), %edx
	movl	$1, %eax
	cmpl	$4351, %edx
	ja	.L3836
.L3747:
	addq	%rax, %rbx
.L3746:
	leaq	352(%rsp), %rdi
	call	_ZNSt9__unicode9__v16_0_022_Grapheme_cluster_viewISt17basic_string_viewIcSt11char_traitsIcEEE9_IteratorppEv
	cmpq	%r15, 32(%rax)
	jne	.L3751
.L3735:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rax
	movl	$1, %r9d
	movq	%r14, %r8
	movq	8(%rsp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
.LEHE54:
	movq	704(%rsp), %rdi
	movq	%rax, %rbp
	cmpq	32(%rsp), %rdi
	je	.L3661
	movq	720(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L3661
	.p2align 4,,10
	.p2align 3
.L3822:
	movq	8(%rsp), %rax
	notl	%edx
	andl	$120, %edx
	movq	16(%rax), %rbp
	je	.L3837
	testq	%r12, %r12
	je	.L3661
	movq	16(%rsp), %r13
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
.LEHB55:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L3661
	.p2align 4,,10
	.p2align 3
.L3820:
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %rsi
	movl	$206, %eax
	movq	%rsi, %rdi
	.p2align 4
	.p2align 3
.L3699:
	testq	%rax, %rax
	jle	.L3838
.L3700:
	movq	%rax, %rcx
	sarq	%rcx
	cmpl	(%rdi,%rcx,4), %edx
	jb	.L3772
	subq	%rcx, %rax
	leaq	4(%rdi,%rcx,4), %rdi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3700
.L3838:
	subq	%rsi, %rdi
	movq	%rdi, %rax
	shrq	$63, %rdi
	sarq	$2, %rax
	addq	%rdi, %rax
	andl	$1, %eax
	subq	%rdi, %rax
	addl	$1, %eax
	jmp	.L3697
	.p2align 4,,10
	.p2align 3
.L3772:
	movq	%rcx, %rax
	jmp	.L3699
	.p2align 4,,10
	.p2align 3
.L3814:
	movzwl	6(%r14), %ebp
	jmp	.L3664
	.p2align 4,,10
	.p2align 3
.L3704:
	movzwl	4(%r14), %edi
	movq	8(%rsp), %rsi
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	jmp	.L3703
	.p2align 4,,10
	.p2align 3
.L3714:
	movq	%rsi, %xmm0
	movq	%rdx, 16(%rsp)
	movq	%rsi, 24(%rsp)
	punpcklqdq	%xmm0, %xmm0
	cmpq	$-1, %rbp
	je	.L3717
	testq	%rdx, %rdx
	je	.L3757
	movq	%rdx, %r15
	jmp	.L3756
	.p2align 4,,10
	.p2align 3
.L3717:
	movq	%rdx, %r15
	testq	%rdx, %rdx
	je	.L3757
.L3736:
	addq	%rsi, %r15
	xorl	%ecx, %ecx
	leaq	240(%rsp), %rdi
	movq	%rsi, 40(%rsp)
	movups	%xmm0, 248(%rsp)
	movw	%cx, 264(%rsp)
	movb	$0, 266(%rsp)
	movq	%r15, 272(%rsp)
	call	_ZNSt9__unicode13_Utf_iteratorIcDiPKcS2_NS_5_ReplEE12_M_read_utf8Ev
	movq	40(%rsp), %rsi
	movdqa	256(%rsp), %xmm0
	movq	%r15, 272(%rsp)
	movq	%r15, 384(%rsp)
	movzwl	264(%rsp), %eax
	movq	%rsi, 248(%rsp)
	movdqa	240(%rsp), %xmm1
	movq	%r15, 336(%rsp)
	movaps	%xmm1, 352(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm1, 304(%rsp)
	movaps	%xmm0, 320(%rsp)
	cmpq	256(%rsp), %r15
	je	.L3738
	movzbl	%al, %eax
	leaq	_ZNSt9__unicode9__v16_0_011__gcb_edgesE(%rip), %rsi
	movl	352(%rsp,%rax,4), %eax
	movl	%eax, %edi
	movl	%eax, 88(%rsp)
	movl	$1717, %eax
	sall	$4, %edi
	orl	$15, %edi
	jmp	.L3740
	.p2align 4,,10
	.p2align 3
.L3767:
	xorl	%ebx, %ebx
	jmp	.L3684
	.p2align 4,,10
	.p2align 3
.L3836:
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %r8
	movl	$206, %eax
	movq	%r8, %rdi
	.p2align 4
	.p2align 3
.L3749:
	testq	%rax, %rax
	jle	.L3839
.L3750:
	movq	%rax, %rcx
	sarq	%rcx
	cmpl	(%rdi,%rcx,4), %edx
	jb	.L3784
	subq	%rcx, %rax
	leaq	4(%rdi,%rcx,4), %rdi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L3750
.L3839:
	subq	%r8, %rdi
	movq	%rdi, %rax
	shrq	$63, %rdi
	sarq	$2, %rax
	addq	%rdi, %rax
	andl	$1, %eax
	subq	%rdi, %rax
	addl	$1, %eax
	jmp	.L3747
	.p2align 4,,10
	.p2align 3
.L3784:
	movq	%rcx, %rax
	jmp	.L3749
	.p2align 4,,10
	.p2align 3
.L3825:
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %rax
	movl	$206, %ecx
	movq	%rax, %rdi
	.p2align 4
	.p2align 3
.L3675:
	testq	%rcx, %rcx
	jle	.L3840
.L3676:
	movq	%rcx, %rsi
	sarq	%rsi
	cmpl	(%rdi,%rsi,4), %r15d
	jb	.L3762
	subq	%rsi, %rcx
	leaq	4(%rdi,%rsi,4), %rdi
	subq	$1, %rcx
	testq	%rcx, %rcx
	jg	.L3676
.L3840:
	subq	%rax, %rdi
	movq	%rdi, %rax
	shrq	$63, %rdi
	sarq	$2, %rax
	addq	%rdi, %rax
	andl	$1, %eax
	subq	%rdi, %rax
	leal	1(%rax), %ebx
	jmp	.L3673
	.p2align 4,,10
	.p2align 3
.L3762:
	movq	%rsi, %rcx
	jmp	.L3675
	.p2align 4,,10
	.p2align 3
.L3818:
	movq	%rbp, %rdi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L3661
	.p2align 4,,10
	.p2align 3
.L3831:
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
.L3757:
	xorl	%ebx, %ebx
	jmp	.L3735
	.p2align 4,,10
	.p2align 3
.L3837:
	movq	16(%rsp), %r13
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	$12, %ecx
	movq	%r13, %rdx
	call	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
.LEHE55:
	movq	%rax, %rbp
	jmp	.L3661
	.p2align 4,,10
	.p2align 3
.L3832:
	movq	384(%rsp), %rax
	movq	24(%rsp), %rdi
	subq	%r13, %rax
	movq	%rdi, 24(%rsp)
	movq	%rax, 16(%rsp)
	jmp	.L3735
	.p2align 4,,10
	.p2align 3
.L3828:
	leaq	704(%rsp), %rdi
.LEHB56:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.isra.0
.LEHE56:
	movq	424(%rsp), %rax
	movq	712(%rsp), %r15
	movq	%rax, 440(%rsp)
	testq	%r15, %r15
	jne	.L3715
	xorl	%ebx, %ebx
	movq	%rax, 24(%rsp)
	movq	%rbx, 16(%rsp)
	xorl	%ebx, %ebx
	jmp	.L3735
	.p2align 4,,10
	.p2align 3
.L3817:
	movq	%rbp, %rdi
	movl	$12, %ecx
.LEHB57:
	call	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	movq	%rax, %rbp
	jmp	.L3661
.L3819:
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %rax
	movl	$206, %edx
	movq	%rax, %rdi
	.p2align 4
	.p2align 3
.L3694:
	testq	%rdx, %rdx
	jle	.L3841
.L3695:
	movq	%rdx, %rcx
	sarq	%rcx
	cmpl	(%rdi,%rcx,4), %r8d
	jb	.L3770
	subq	%rcx, %rdx
	leaq	4(%rdi,%rcx,4), %rdi
	subq	$1, %rdx
	testq	%rdx, %rdx
	jg	.L3695
.L3841:
	subq	%rax, %rdi
	movq	%rdi, %rax
	shrq	$63, %rdi
	sarq	$2, %rax
	addq	%rdi, %rax
	andl	$1, %eax
	subq	%rdi, %rax
	leal	1(%rax), %ebx
	jmp	.L3696
	.p2align 4,,10
	.p2align 3
.L3770:
	movq	%rcx, %rdx
	jmp	.L3694
.L3830:
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %rax
	movl	$206, %edx
	movq	%rax, %r8
	.p2align 4
	.p2align 3
.L3725:
	testq	%rdx, %rdx
	jle	.L3842
.L3726:
	movq	%rdx, %rcx
	movl	40(%rsp), %ebx
	sarq	%rcx
	cmpl	(%r8,%rcx,4), %ebx
	jb	.L3775
	subq	%rcx, %rdx
	leaq	4(%r8,%rcx,4), %r8
	subq	$1, %rdx
	testq	%rdx, %rdx
	jg	.L3726
.L3842:
	subq	%rax, %r8
	movq	%r8, %rax
	shrq	$63, %r8
	sarq	$2, %rax
	addq	%r8, %rax
	andl	$1, %eax
	subq	%r8, %rax
	leal	1(%rax), %ebx
	jmp	.L3723
	.p2align 4,,10
	.p2align 3
.L3775:
	movq	%rcx, %rdx
	jmp	.L3725
.L3835:
	leaq	_ZNSt9__unicode9__v16_0_013__width_edgesE(%rip), %rax
	movl	$206, %edx
	movq	%rax, %rdi
	.p2align 4
	.p2align 3
.L3744:
	testq	%rdx, %rdx
	jle	.L3843
.L3745:
	movq	%rdx, %rcx
	movl	88(%rsp), %ebx
	sarq	%rcx
	cmpl	(%rdi,%rcx,4), %ebx
	jb	.L3782
	subq	%rcx, %rdx
	leaq	4(%rdi,%rcx,4), %rdi
	subq	$1, %rdx
	testq	%rdx, %rdx
	jg	.L3745
.L3843:
	subq	%rax, %rdi
	movq	%rdi, %rax
	shrq	$63, %rdi
	sarq	$2, %rax
	addq	%rdi, %rax
	andl	$1, %eax
	subq	%rdi, %rax
	leal	1(%rax), %ebx
	jmp	.L3746
.L3782:
	movq	%rcx, %rdx
	jmp	.L3744
.L3753:
	movq	704(%rsp), %rdi
	cmpq	32(%rsp), %rdi
	jne	.L3844
.L3754:
	movq	744(%rsp), %rax
	subq	%fs:40, %rax
	je	.L3755
.L3808:
	call	__stack_chk_fail@PLT
.L3785:
	endbr64
	movq	%rax, %rbp
	jmp	.L3753
.L3844:
	movq	720(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L3754
.L3755:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE57:
	.cfi_endproc
.LFE6341:
	.section	.gcc_except_table
.LLSDA6341:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6341-.LLSDACSB6341
.LLSDACSB6341:
	.uleb128 .LEHB53-.LFB6341
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB6341
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L3785-.LFB6341
	.uleb128 0
	.uleb128 .LEHB55-.LFB6341
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB6341
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L3785-.LFB6341
	.uleb128 0
	.uleb128 .LEHB57-.LFB6341
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
.LLSDACSE6341:
	.section	.text._ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE,"axG",@progbits,_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE,comdat
	.size	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE, .-_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	.section	.rodata._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE.str1.8,"aMS",@progbits,1
	.align 8
.LC54:
	.string	"format error: format-spec contains invalid formatting options for 'bool'"
	.align 8
.LC55:
	.string	"format error: format-spec contains invalid formatting options for 'charT'"
	.section	.rodata._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE.str1.1,"aMS",@progbits,1
.LC56:
	.string	"{"
	.section	.text._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE
	.type	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE, @function
_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE:
.LFB6008:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6008
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.L3848(%rip), %rcx
	movzbl	%dl, %edx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$240, %rsp
	.cfi_def_cfa_offset 288
	movslq	(%rcx,%rdx,4), %rax
	movq	%fs:40, %rbp
	movq	%rbp, 232(%rsp)
	movq	%rsi, %rbp
	addq	%rcx, %rax
	notrack jmp	*%rax
	.section	.rodata._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,"aG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,comdat
	.align 4
	.align 4
.L3848:
	.long	.L3864-.L3848
	.long	.L3863-.L3848
	.long	.L3862-.L3848
	.long	.L3861-.L3848
	.long	.L3860-.L3848
	.long	.L3859-.L3848
	.long	.L3858-.L3848
	.long	.L3857-.L3848
	.long	.L3856-.L3848
	.long	.L3855-.L3848
	.long	.L3854-.L3848
	.long	.L3853-.L3848
	.long	.L3852-.L3848
	.long	.L3851-.L3848
	.long	.L3850-.L3848
	.long	.L3849-.L3848
	.long	.L3847-.L3848
	.long	.L3847-.L3848
	.long	.L3847-.L3848
	.long	.L3847-.L3848
	.long	.L3847-.L3848
	.section	.text._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,comdat
	.p2align 4,,10
	.p2align 3
.L3849:
	movq	0(%rbp), %rcx
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rcx), %rsi
	movq	%rcx, 24(%rsp)
	movl	$32, 88(%rsp)
.LEHB58:
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	24(%rsp), %rcx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	(%rsp), %rdi
	movq	%rax, 8(%rcx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movq	%rbp, %rcx
	call	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	.p2align 4
	.p2align 3
.L4105:
	movq	%rax, 16(%rbp)
.L3845:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
	addq	$240, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L3847:
	.cfi_restore_state
	movq	0(%rbp), %rdx
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rdx), %rsi
	movq	%rdx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	24(%rsp), %rdx
	movdqa	(%rbx), %xmm0
	movq	(%rsp), %rdi
	movq	%rax, 8(%rdx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movq	%rbp, %rsi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3863:
	movq	0(%rbp), %rcx
	xorl	%edx, %edx
	leaq	80(%rsp), %rdi
	leaq	80(%rsp), %r15
	movq	$0, 80(%rsp)
	leaq	8(%rcx), %rsi
	movq	%rcx, (%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
.LEHE58:
	movq	(%rsp), %rcx
	movq	%rax, %rdx
	movzbl	81(%rsp), %eax
	andl	$120, %eax
	jne	.L3866
	movzbl	80(%rsp), %eax
	testb	$92, %al
	jne	.L4110
	movq	%rdx, 8(%rcx)
	movq	0(%rbp), %rdx
	leaq	128(%rsp), %rsi
	movq	%rsi, 112(%rsp)
	movzbl	(%rbx), %ebx
	movq	%rsi, %r12
	movq	$0, 120(%rsp)
	movq	56(%rdx), %rbp
	movb	$0, 128(%rsp)
	testb	$32, %al
	jne	.L4111
	testb	%bl, %bl
	je	.L4027
	movl	$4, %r8d
	leaq	.LC30(%rip), %rcx
.L3888:
	leaq	112(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
.LEHB59:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0
.L4104:
	movq	120(%rsp), %rdx
	movq	112(%rsp), %rbx
	movq	%r15, %r8
	movq	%rbp, %rcx
	movl	$1, %r9d
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
.LEHE59:
	movq	112(%rsp), %rdi
	movq	%rax, %rbx
	cmpq	%r12, %rdi
	je	.L3889
	movq	128(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3889:
	movq	%rbx, %rax
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L3862:
	movq	0(%rbp), %rcx
	movl	$7, %edx
	leaq	64(%rsp), %rdi
	movq	$0, 64(%rsp)
	movl	$32, 72(%rsp)
	leaq	64(%rsp), %r14
	leaq	8(%rcx), %rsi
	movq	%rcx, (%rsp)
.LEHB60:
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	(%rsp), %rcx
	movq	%rax, %rsi
	movzbl	65(%rsp), %eax
	movl	%eax, %edx
	notl	%eax
	andl	$120, %edx
	testb	$56, %al
	jne	.L3895
	movzwl	68(%rsp), %edi
	testb	$92, 64(%rsp)
	jne	.L4112
	movq	0(%rbp), %rax
	movq	%rsi, 8(%rcx)
	movzbl	(%rbx), %esi
	movq	56(%rax), %rbp
	cmpb	$56, %dl
	je	.L4023
	leaq	63(%rsp), %rax
	movb	%sil, 63(%rsp)
	movl	$1, %ecx
	movq	%rax, %rbx
	movzwl	64(%rsp), %eax
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L3901
	cmpw	$256, %ax
	je	.L3902
.L3904:
	movq	16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	movl	$15, %ecx
	call	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L3861:
	movq	0(%rbp), %rcx
	movl	$1, %edx
	leaq	64(%rsp), %rdi
	movq	$0, 64(%rsp)
	movl	$32, 72(%rsp)
	leaq	64(%rsp), %r14
	leaq	8(%rcx), %rsi
	movq	%rcx, (%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	(%rsp), %rcx
	movl	(%rbx), %r8d
	movq	%rax, 8(%rcx)
	movq	0(%rbp), %rax
	movl	%r8d, %esi
	movq	56(%rax), %rbp
	movzbl	65(%rsp), %eax
	movl	%eax, %ecx
	andl	$120, %ecx
	cmpb	$56, %cl
	je	.L4113
	shrb	$3, %al
	andl	$15, %eax
	testl	%r8d, %r8d
	js	.L4114
	cmpb	$4, %al
	je	.L3918
	ja	.L3919
	cmpb	$1, %al
	jbe	.L3920
	leaq	.LC35(%rip), %r10
	cmpb	$16, %cl
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %r10
	testl	%r8d, %r8d
	jne	.L4025
	movl	$48, %eax
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
.L3925:
	movb	%al, 195(%rsp)
	testb	$16, 64(%rsp)
	je	.L4101
.L4038:
	movq	$-2, %rsi
	movl	$2, %eax
.L3929:
	addq	%rbx, %rsi
	movl	%eax, %edi
	testl	%eax, %eax
	je	.L3930
	xorl	%eax, %eax
.L3944:
	movl	%eax, %ecx
	addl	$1, %eax
	movzbl	(%r10,%rcx), %r9d
	movb	%r9b, (%rsi,%rcx)
	cmpl	%edi, %eax
	jb	.L3944
	.p2align 4
	.p2align 3
.L3930:
	movzbl	64(%rsp), %eax
	leaq	-1(%rsi), %rcx
	testl	%r8d, %r8d
	jns	.L3946
	movb	$45, -1(%rsi)
	movq	%rcx, %rsi
.L3949:
	movq	%rdx, %rax
	subq	%rsi, %rbx
	movq	%rsi, %rdx
	movq	%rbp, %r8
	subq	%rsi, %rax
	movq	%rbx, %rcx
	movq	%r14, %rdi
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L3860:
	movq	0(%rbp), %rcx
	movl	$1, %edx
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movl	$32, 88(%rsp)
	leaq	80(%rsp), %r15
	leaq	8(%rcx), %rsi
	movq	%rcx, (%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	(%rsp), %rcx
	movl	(%rbx), %esi
	movq	%rax, 8(%rcx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movzbl	81(%rsp), %eax
	movl	%eax, %ecx
	andl	$120, %ecx
	cmpb	$56, %cl
	je	.L4115
	shrb	$3, %al
	andl	$15, %eax
	cmpb	$4, %al
	je	.L3953
	ja	.L3954
	cmpb	$1, %al
	jbe	.L3955
	leaq	.LC35(%rip), %r9
	cmpb	$16, %cl
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %r9
	testl	%esi, %esi
	jne	.L4116
	movl	$48, %eax
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
.L3960:
	movb	%al, 195(%rsp)
	movzbl	80(%rsp), %eax
	testb	$16, %al
	je	.L4103
.L4048:
	movq	$-2, %rsi
	movl	$2, %ecx
.L3964:
	addq	%rbx, %rsi
	movl	%ecx, %r8d
	testl	%ecx, %ecx
	je	.L3965
	xorl	%ecx, %ecx
.L3982:
	movl	%ecx, %edi
	addl	$1, %ecx
	movzbl	(%r9,%rdi), %r10d
	movb	%r10b, (%rsi,%rdi)
	cmpl	%r8d, %ecx
	jb	.L3982
	.p2align 4
	.p2align 3
.L3965:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L4050
	cmpl	$3, %eax
	je	.L4117
.L3985:
	movq	%rdx, %rax
	subq	%rsi, %rbx
	movq	%rsi, %rdx
	movq	%rbp, %r8
	subq	%rsi, %rax
	movq	%rbx, %rcx
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L3859:
	movq	0(%rbp), %rcx
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rcx), %rsi
	movq	%rcx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	24(%rsp), %rcx
	movq	(%rbx), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rcx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movq	%rbp, %rdx
	call	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3858:
	movq	0(%rbp), %rcx
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rcx), %rsi
	movq	%rcx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	24(%rsp), %rcx
	movq	(%rbx), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rcx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movq	%rbp, %rdx
	call	_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3857:
	movq	0(%rbp), %rdx
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rdx), %rsi
	movq	%rdx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	24(%rsp), %rdx
	movss	(%rbx), %xmm0
	movq	(%rsp), %rdi
	movq	%rax, 8(%rdx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movq	%rbp, %rsi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3856:
	movq	0(%rbp), %rdx
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rdx), %rsi
	movq	%rdx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	24(%rsp), %rdx
	movsd	(%rbx), %xmm0
	movq	(%rsp), %rdi
	movq	%rax, 8(%rdx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movq	%rbp, %rsi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3855:
	movq	0(%rbp), %rdx
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rdx), %rsi
	movq	%rdx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	24(%rsp), %rdx
	movq	%rax, 8(%rdx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	pushq	8(%rbx)
	.cfi_def_cfa_offset 296
	pushq	(%rbx)
	.cfi_def_cfa_offset 304
	movq	16(%rsp), %rdi
	movq	%rbp, %rsi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbp)
	popq	%rcx
	.cfi_def_cfa_offset 296
	popq	%rsi
	.cfi_def_cfa_offset 288
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3854:
	movq	0(%rbp), %rdx
	leaq	80(%rsp), %r8
	movq	$0, 80(%rsp)
	movq	%r8, %rdi
	movq	%r8, (%rsp)
	leaq	8(%rdx), %rsi
	movq	%rdx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	movq	24(%rsp), %rdx
	movq	%rax, 8(%rdx)
	movq	0(%rbp), %rax
	movq	(%rbx), %rbx
	movq	56(%rax), %rbp
	movq	%rbx, %rdi
	call	strlen@PLT
	movq	(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3853:
	movq	0(%rbp), %rdx
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rdx), %rsi
	movq	%rdx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	movq	24(%rsp), %rdx
	movq	(%rbx), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rdx)
	movq	0(%rbp), %rax
	movq	8(%rbx), %rdx
	movq	56(%rax), %rbp
	movq	%rbp, %rcx
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3852:
	movq	$0, 80(%rsp)
	movq	0(%rbp), %r9
	movq	16(%r9), %rdx
	movq	8(%r9), %rsi
	cmpq	%rsi, %rdx
	je	.L3986
	cmpb	$125, (%rsi)
	je	.L3986
	leaq	80(%rsp), %rdi
	movl	$1, %ecx
	leaq	.LC56(%rip), %r8
	movq	%r9, 24(%rsp)
	movq	%rdx, (%rsp)
	movq	%rdi, %r15
	movl	$32, 88(%rsp)
	call	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE
	movq	(%rsp), %rdx
	movq	24(%rsp), %r9
	movq	%rax, %rsi
	cmpq	%rax, %rdx
	je	.L3987
	movzbl	(%rax), %eax
	cmpb	$125, %al
	je	.L3987
	cmpb	$48, %al
	je	.L3990
	xorl	%eax, %eax
.L3991:
	sall	$6, %eax
	movq	%r15, %rdi
	movq	%r9, 24(%rsp)
	movl	%eax, %ecx
	movzbl	80(%rsp), %eax
	movq	%rdx, (%rsp)
	andl	$-65, %eax
	orl	%ecx, %eax
	leaq	8(%r9), %rcx
	movb	%al, 80(%rsp)
	call	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	movq	(%rsp), %rdx
	movq	24(%rsp), %r9
	movq	%rax, %rsi
	cmpq	%rax, %rdx
	je	.L4052
	movzbl	(%rax), %ecx
	cmpb	$112, %cl
	je	.L3994
	xorl	%eax, %eax
	cmpb	$80, %cl
	je	.L4118
.L3996:
	cmpb	$125, %cl
	jne	.L4119
.L3993:
	leal	0(,%rax,8), %edx
	movzbl	81(%rsp), %eax
	movzwl	84(%rsp), %r12d
	andl	$-121, %eax
	orl	%edx, %eax
	movb	%al, 81(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	88(%rsp), %eax
	movl	%eax, 72(%rsp)
	movq	0(%rbp), %rax
.L3989:
	movq	%rsi, 8(%r9)
	movq	56(%rax), %r15
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L4000
	movzbl	65(%rsp), %eax
	movl	$30768, %edx
	movl	$3, %ebp
	movb	$48, 194(%rsp)
	movw	%dx, 192(%rsp)
	andl	$120, %eax
	cmpb	$8, %al
	je	.L4120
.L4002:
	leaq	192(%rsp), %rdx
	movq	%rbp, %rcx
	movq	%rdx, %rbx
	testb	$64, 64(%rsp)
	je	.L4008
	movzwl	64(%rsp), %eax
	movzwl	%r12w, %r8d
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L4010
	cmpw	$256, %ax
	je	.L4011
.L4014:
	movq	16(%r15), %rbx
	testq	%rbp, %rbp
	jne	.L4121
.L4016:
	movq	%rbx, 16(%r15)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3851:
	movq	0(%rbp), %rdi
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
	movq	(%rbx), %rdx
	movq	56(%rdi), %rsi
	addq	$8, %rdi
	movq	8(%rbx), %rax
	addq	$240, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L3850:
	.cfi_restore_state
	movq	0(%rbp), %rcx
	leaq	80(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 80(%rsp)
	movq	%rdi, (%rsp)
	leaq	8(%rcx), %rsi
	movq	%rcx, 24(%rsp)
	movl	$32, 88(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	24(%rsp), %rcx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	(%rsp), %rdi
	movq	%rax, 8(%rcx)
	movq	0(%rbp), %rax
	movq	56(%rax), %rbp
	movq	%rbp, %rcx
	call	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbp)
	jmp	.L3845
	.p2align 4,,10
	.p2align 3
.L3895:
	movq	0(%rbp), %rax
	movq	%rsi, 8(%rcx)
	movzbl	(%rbx), %esi
	movq	56(%rax), %rbp
	cmpb	$56, %dl
	je	.L4023
	testb	%dl, %dl
	je	.L4023
	movq	%rbp, %rdx
	movq	%r14, %rdi
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L3866:
	movq	%rdx, 8(%rcx)
	movq	0(%rbp), %rdx
	movzbl	(%rbx), %esi
	movq	56(%rdx), %rbp
	cmpb	$56, %al
	je	.L4108
	movq	%rbp, %rdx
	movq	%r15, %rdi
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L4115:
	cmpl	$127, %esi
	ja	.L3907
.L4108:
	leaq	64(%rsp), %rcx
	movl	$1, %eax
	movb	%sil, 64(%rsp)
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r15, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L4113:
	leal	128(%r8), %eax
	cmpl	$255, %eax
	ja	.L3907
	movb	%r8b, 80(%rsp)
.L4109:
	leaq	80(%rsp), %rcx
	movl	$1, %eax
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r14, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L4105
	.p2align 4,,10
	.p2align 3
.L3986:
	movq	80(%rsp), %rax
	movl	$32, 88(%rsp)
	xorl	%r12d, %r12d
	movl	$32, 72(%rsp)
	movq	%rax, 64(%rsp)
	movq	%r9, %rax
	jmp	.L3989
	.p2align 4,,10
	.p2align 3
.L4000:
	movdqa	.LC6(%rip), %xmm0
	bsrq	%rax, %rdx
	leal	4(%rdx), %edi
	shrl	$2, %edi
	movaps	%xmm0, 176(%rsp)
	cmpq	$255, %rax
	jbe	.L4003
	leal	-1(%rdi), %edx
	.p2align 4
	.p2align 3
.L4004:
	movq	%rax, %rsi
	movl	%edx, %ecx
	andl	$15, %esi
	movzbl	176(%rsp,%rsi), %esi
	movb	%sil, 194(%rsp,%rcx)
	movq	%rax, %rcx
	leal	-1(%rdx), %esi
	shrq	$8, %rax
	shrq	$4, %rcx
	subl	$2, %edx
	andl	$15, %ecx
	movzbl	176(%rsp,%rcx), %ecx
	movb	%cl, 194(%rsp,%rsi)
	cmpq	$255, %rax
	ja	.L4004
.L4003:
	cmpq	$15, %rax
	jbe	.L4005
	movq	%rax, %rdx
	shrq	$4, %rax
	andl	$15, %edx
	movzbl	176(%rsp,%rdx), %edx
	movb	%dl, 195(%rsp)
	movzbl	176(%rsp,%rax), %eax
.L4006:
	movb	%al, 194(%rsp)
	leal	2(%rdi), %eax
	leaq	194(%rsp), %rbx
	movslq	%eax, %rbp
	movl	$30768, %eax
	leaq	(%rbx,%rdi), %r14
	movw	%ax, 192(%rsp)
	movzbl	65(%rsp), %eax
	andl	$120, %eax
	cmpb	$8, %al
	jne	.L4002
.L4001:
	movb	$88, 193(%rsp)
	.p2align 4
	.p2align 3
.L4007:
	movsbl	(%rbx), %edi
	addq	$1, %rbx
	call	toupper@PLT
	movb	%al, -1(%rbx)
	cmpq	%rbx, %r14
	jne	.L4007
	jmp	.L4002
.L3920:
	testl	%r8d, %r8d
	jne	.L3915
.L4102:
	movb	$48, 195(%rsp)
	movzbl	64(%rsp), %eax
.L3931:
	leaq	195(%rsp), %rbx
	leaq	196(%rsp), %rdx
	leaq	194(%rsp), %rcx
	movq	%rbx, %rsi
.L3946:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L4122
	cmpl	$3, %eax
	jne	.L3949
	movb	$32, -1(%rsi)
.L3950:
	movq	%rcx, %rsi
	jmp	.L3949
	.p2align 4,,10
	.p2align 3
.L4023:
	movb	%sil, 80(%rsp)
	jmp	.L4109
	.p2align 4,,10
	.p2align 3
.L4008:
	movq	%rdx, %rsi
	movq	%rbp, %rdi
	movl	$2, %r9d
	movq	%r15, %rcx
	leaq	64(%rsp), %r8
	movq	%rbp, %rdx
	movw	%r12w, 68(%rsp)
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	movq	%rax, %rbx
	jmp	.L4016
.L4011:
	movq	%r15, %rsi
	movl	%r12d, %edi
	movq	%rdx, 24(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rbp, (%rsp)
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movq	24(%rsp), %rdx
	movq	(%rsp), %rcx
	movq	8(%rsp), %rbx
	movq	%rax, %r8
.L4010:
	cmpq	%r8, %rbp
	jnb	.L4014
	movq	16(%r15), %rdi
	testq	%rbp, %rbp
	jne	.L4123
.L4017:
	leaq	194(%rsp), %rax
	movl	$48, %r9d
	subq	%rbp, %r8
	movl	$2, %ecx
	movq	%rax, %rbx
	leaq	-2(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
	movq	%rax, %rbx
	jmp	.L4016
	.p2align 4,,10
	.p2align 3
.L4114:
	negl	%esi
	cmpb	$3, %al
	jbe	.L3911
	cmpb	$4, %al
	je	.L3912
	cmpb	$40, %cl
	je	.L4124
.L3917:
	leaq	195(%rsp), %rbx
	movl	%esi, %edx
	leaq	227(%rsp), %rsi
	movl	%r8d, (%rsp)
	movq	%rbx, %rdi
	movb	%cl, 24(%rsp)
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	cmpb	$48, 24(%rsp)
	movl	(%rsp), %r8d
	movq	%rax, %rdx
	jne	.L4036
	cmpq	%rbx, %rax
	je	.L4037
.L3941:
	movq	%rbx, %rcx
	.p2align 4
	.p2align 3
.L3943:
	movsbl	(%rcx), %edi
	movq	%rdx, 32(%rsp)
	movl	%r8d, 24(%rsp)
	movq	%rcx, (%rsp)
	call	toupper@PLT
	movq	(%rsp), %rcx
	movq	32(%rsp), %rdx
	movl	24(%rsp), %r8d
	movb	%al, (%rcx)
	addq	$1, %rcx
	cmpq	%rdx, %rcx
	jne	.L3943
.L4037:
	leaq	.LC37(%rip), %r10
	movl	$2, %eax
.L3939:
	movq	%rbx, %rsi
	testb	$16, 64(%rsp)
	je	.L3930
	movq	%rax, %rsi
	negq	%rsi
	jmp	.L3929
	.p2align 4,,10
	.p2align 3
.L4027:
	movl	$5, %r8d
	leaq	.LC29(%rip), %rcx
	jmp	.L3888
	.p2align 4,,10
	.p2align 3
.L3987:
	movq	80(%rsp), %rax
	xorl	%r12d, %r12d
	movq	%rax, 64(%rsp)
	movl	88(%rsp), %eax
	movl	%eax, 72(%rsp)
	movq	%r9, %rax
	jmp	.L3989
	.p2align 4,,10
	.p2align 3
.L4005:
	movzbl	176(%rsp,%rax), %eax
	jmp	.L4006
	.p2align 4,,10
	.p2align 3
.L4050:
	movl	$43, %eax
.L3984:
	movb	%al, -1(%rsi)
	subq	$1, %rsi
	jmp	.L3985
.L3915:
	cmpl	$9, %esi
	jbe	.L4031
	movl	%esi, %ecx
	movl	$1, %edi
	movabsq	$3777893186295716171, %r9
	jmp	.L3937
	.p2align 4,,10
	.p2align 3
.L3933:
	cmpl	$999, %ecx
	jbe	.L4125
	cmpl	$9999, %ecx
	jbe	.L4126
	movl	%ecx, %eax
	addl	$4, %edi
	mulq	%r9
	shrq	$11, %rdx
	cmpl	$99999, %ecx
	jbe	.L3934
	movl	%edx, %ecx
.L3937:
	cmpl	$99, %ecx
	ja	.L3933
	addl	$1, %edi
.L3934:
	movl	%edi, %eax
	cmpl	$32, %edi
	ja	.L4127
.L3932:
	leaq	195(%rsp), %rbx
	movl	%esi, %edx
	movl	%edi, %esi
	movq	%rax, 24(%rsp)
	movq	%rbx, %rdi
	movl	%r8d, (%rsp)
	call	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movq	24(%rsp), %rax
	movl	(%rsp), %r8d
	leaq	(%rbx,%rax), %rdx
.L4101:
	movq	%rbx, %rsi
	jmp	.L3930
	.p2align 4,,10
	.p2align 3
.L4121:
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	jmp	.L4016
	.p2align 4,,10
	.p2align 3
.L4120:
	leaq	195(%rsp), %r14
	movl	$3, %ebp
	leaq	194(%rsp), %rbx
	jmp	.L4001
	.p2align 4,,10
	.p2align 3
.L3955:
	testl	%esi, %esi
	jne	.L3966
	movb	$48, 195(%rsp)
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
.L3967:
	movzbl	80(%rsp), %eax
	movq	%rbx, %rsi
	jmp	.L3965
	.p2align 4,,10
	.p2align 3
.L3954:
	cmpb	$40, %cl
	je	.L4128
	testl	%esi, %esi
	jne	.L3979
	movb	$48, 195(%rsp)
	cmpb	$48, %cl
	je	.L4045
	leaq	.LC37(%rip), %r9
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
.L3978:
	movzbl	80(%rsp), %eax
	testb	$16, %al
	jne	.L4048
.L4103:
	movq	%rbx, %rsi
	jmp	.L3965
	.p2align 4,,10
	.p2align 3
.L3953:
	testl	%esi, %esi
	je	.L3975
	leaq	195(%rsp), %rbx
	movl	%esi, %edx
	leaq	227(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	leaq	.LC39(%rip), %r9
	movl	$1, %ecx
	movq	%rax, %rdx
.L3976:
	movzbl	80(%rsp), %eax
	movq	%rbx, %rsi
	testb	$16, %al
	je	.L3965
	movq	%rcx, %rsi
	negq	%rsi
	jmp	.L3964
	.p2align 4,,10
	.p2align 3
.L4117:
	movl	$32, %eax
	jmp	.L3984
.L3990:
	leaq	1(%rsi), %rcx
	cmpq	%rcx, %rdx
	jne	.L4129
.L3992:
	orb	$64, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rcx, %rsi
	xorl	%r12d, %r12d
	movq	%rax, 64(%rsp)
	movl	88(%rsp), %eax
	movl	%eax, 72(%rsp)
	movq	%r9, %rax
	jmp	.L3989
.L3911:
	cmpb	$1, %al
	jbe	.L3915
	leaq	.LC35(%rip), %r10
	cmpb	$16, %cl
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %r10
.L4025:
	bsrl	%esi, %ecx
	movl	$32, %eax
	xorl	$31, %ecx
	subl	%ecx, %eax
	cltq
	cmpl	$1, %esi
	je	.L4130
	movl	$31, %edx
	leaq	195(%rsp), %rbx
	subl	%ecx, %edx
	leaq	194(%rsp,%rdx), %rdi
	leaq	(%rbx,%rdx), %r9
	movl	$30, %edx
	subl	%ecx, %edx
	subq	%rdx, %rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L3927:
	movl	%esi, %ecx
	subq	$1, %r9
	shrl	%esi
	andl	$1, %ecx
	addl	$48, %ecx
	movb	%cl, 1(%r9)
	cmpq	%rdi, %r9
	jne	.L3927
.L3928:
	leaq	(%rbx,%rax), %rdx
	movl	$49, %eax
	jmp	.L3925
.L4122:
	movb	$43, -1(%rsi)
	jmp	.L3950
.L3918:
	testl	%r8d, %r8d
	je	.L4102
.L3912:
	leaq	195(%rsp), %rbx
	movl	%esi, %edx
	movl	%r8d, (%rsp)
	leaq	227(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	movl	(%rsp), %r8d
	leaq	.LC39(%rip), %r10
	movq	%rax, %rdx
	movl	$1, %eax
	jmp	.L3939
.L3902:
	movq	%rbp, %rsi
	movq	%rcx, (%rsp)
	movq	%rbx, 8(%rsp)
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movq	(%rsp), %rcx
	movq	8(%rsp), %rbx
	movq	%rax, %rdi
.L3901:
	cmpq	$3, %rdi
	jbe	.L3904
	leaq	192(%rsp), %rax
	leaq	16+_ZTVNSt8__format14_Fixedbuf_sinkIcEE(%rip), %rdi
	movq	%rcx, %rsi
	movq	%rbx, %rdx
	movq	%rax, %xmm1
	movq	%rdi, %xmm0
	movl	$15, %ecx
	movq	$12, 96(%rsp)
	punpcklqdq	%xmm1, %xmm0
	leaq	80(%rsp), %rdi
	movq	%rax, 104(%rsp)
	movaps	%xmm0, 80(%rsp)
	call	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	movq	88(%rsp), %rax
	movq	104(%rsp), %rdx
	movq	%r14, %r8
	movl	$1, %r9d
	subq	%rax, %rdx
	movq	%rax, %rbx
	cmpb	$92, 1(%rax)
	movl	$3, %eax
	movq	%rdx, %rcx
	cmovne	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	movq	%rbp, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
.LEHE60:
	jmp	.L4105
.L3919:
	cmpb	$40, %cl
	je	.L4131
	testl	%r8d, %r8d
	jne	.L3917
	movb	$48, 195(%rsp)
	cmpb	$48, %cl
	je	.L4035
	leaq	.LC37(%rip), %r10
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
.L3942:
	testb	$16, 64(%rsp)
	jne	.L4038
	jmp	.L4101
.L3966:
	cmpl	$9, %esi
	jbe	.L4042
	movl	%esi, %ecx
	movl	$1, %edi
	movabsq	$3777893186295716171, %r8
	jmp	.L3973
	.p2align 4,,10
	.p2align 3
.L3969:
	cmpl	$999, %ecx
	jbe	.L4132
	cmpl	$9999, %ecx
	jbe	.L4133
	movl	%ecx, %eax
	addl	$4, %edi
	mulq	%r8
	shrq	$11, %rdx
	cmpl	$99999, %ecx
	jbe	.L3970
	movl	%edx, %ecx
.L3973:
	cmpl	$99, %ecx
	ja	.L3969
	addl	$1, %edi
.L3970:
	movl	%edi, %eax
	cmpl	$32, %edi
	ja	.L4134
.L3968:
	leaq	195(%rsp), %rbx
	movl	%esi, %edx
	movl	%edi, %esi
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	call	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movq	(%rsp), %rax
	leaq	(%rbx,%rax), %rdx
	jmp	.L3967
.L4116:
	bsrl	%esi, %edi
	movl	$32, %eax
	xorl	$31, %edi
	subl	%edi, %eax
	cltq
	cmpl	$1, %esi
	je	.L4135
	movl	$31, %edx
	leaq	195(%rsp), %rbx
	subl	%edi, %edx
	leaq	194(%rsp,%rdx), %r8
	leaq	(%rbx,%rdx), %rcx
	movl	$30, %edx
	subl	%edi, %edx
	subq	%rdx, %r8
	.p2align 5
	.p2align 4
	.p2align 3
.L3962:
	movl	%esi, %edi
	subq	$1, %rcx
	shrl	%esi
	andl	$1, %edi
	addl	$48, %edi
	movb	%dil, 1(%rcx)
	cmpq	%r8, %rcx
	jne	.L3962
.L3963:
	leaq	(%rbx,%rax), %rdx
	movl	$49, %eax
	jmp	.L3960
.L3975:
	leaq	195(%rsp), %rbx
	movb	$48, 195(%rsp)
	movzbl	80(%rsp), %eax
	leaq	196(%rsp), %rdx
	movq	%rbx, %rsi
	jmp	.L3965
.L4052:
	xorl	%eax, %eax
	jmp	.L3993
.L4129:
	cmpb	$125, 1(%rsi)
	je	.L3992
	movq	%rcx, %rsi
	movl	$1, %eax
	jmp	.L3991
	.p2align 4,,10
	.p2align 3
.L3994:
	leaq	1(%rax), %rdi
	xorl	%eax, %eax
.L3997:
	cmpq	%rdi, %rdx
	je	.L4053
	movzbl	1(%rsi), %ecx
	movq	%rdi, %rsi
	jmp	.L3996
.L4128:
	testl	%esi, %esi
	jne	.L3977
	movb	$48, 195(%rsp)
	leaq	.LC38(%rip), %r9
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
	jmp	.L3978
.L3979:
	leaq	195(%rsp), %rbx
	movl	%esi, %edx
	movb	%cl, (%rsp)
	leaq	227(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	movq	%rax, %rdx
	cmpb	$48, (%rsp)
	jne	.L4046
	cmpq	%rbx, %rax
	je	.L4047
.L3980:
	movq	%rbx, %rcx
	.p2align 4
	.p2align 3
.L3981:
	movsbl	(%rcx), %edi
	movq	%rdx, 24(%rsp)
	movq	%rcx, (%rsp)
	call	toupper@PLT
	movq	(%rsp), %rcx
	movq	24(%rsp), %rdx
	movb	%al, (%rcx)
	addq	$1, %rcx
	cmpq	%rdx, %rcx
	jne	.L3981
.L4047:
	leaq	.LC37(%rip), %r9
	movl	$2, %ecx
	jmp	.L3976
.L4111:
	leaq	24(%rbp), %rsi
	cmpb	$0, 32(%rbp)
	je	.L4136
.L3873:
	leaq	64(%rsp), %r14
	movq	%r14, %rdi
	call	_ZNSt6localeC1ERKS_@PLT
	leaq	_ZNSt7__cxx118numpunctIcE2idE(%rip), %rdi
	call	_ZNKSt6locale2id5_M_idEv@PLT
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rdx,8), %rsi
	testq	%rsi, %rsi
	je	.L3874
	movq	%r14, %rdi
	movq	%rsi, (%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	(%rsp), %rsi
	movq	(%rsi), %rax
	testb	%bl, %bl
	je	.L4137
	leaq	144(%rsp), %rdi
.LEHB61:
	call	*40(%rax)
.LEHE61:
.L3878:
	movq	112(%rsp), %rax
	movq	%rax, %r8
	cmpq	%r12, %rax
	je	.L4138
	movq	144(%rsp), %rcx
	leaq	160(%rsp), %rdx
	cmpq	%rdx, %rcx
	je	.L4020
	movq	128(%rsp), %rsi
	movq	%rcx, 112(%rsp)
	movq	152(%rsp), %xmm0
	movhps	160(%rsp), %xmm0
	movups	%xmm0, 120(%rsp)
	testq	%rax, %rax
	je	.L3885
	movq	%rax, 144(%rsp)
	movq	%rsi, 160(%rsp)
.L3884:
	movb	$0, (%rax)
	movq	144(%rsp), %rdi
	cmpq	%rdx, %rdi
	je	.L4104
	movq	160(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L4104
.L4118:
	leaq	1(%rsi), %rdi
	movl	$1, %eax
	jmp	.L3997
.L4123:
	movl	$2, %eax
	movq	%r8, 24(%rsp)
	cmpq	%rax, %rbp
	movq	%rdi, (%rsp)
	cmovbe	%rbp, %rax
	movq	%rcx, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rax, %rsi
.LEHB62:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE62:
	movq	24(%rsp), %r8
	movq	(%rsp), %rdi
	jmp	.L4017
.L4131:
	testl	%r8d, %r8d
	jne	.L3940
	movzbl	64(%rsp), %eax
	movb	$48, 195(%rsp)
	testb	$16, %al
	je	.L3931
	movq	$-2, %rsi
	leaq	196(%rsp), %rdx
	leaq	.LC38(%rip), %r10
	movl	$2, %eax
	leaq	195(%rsp), %rbx
	jmp	.L3929
.L3977:
	leaq	195(%rsp), %rbx
	movl	%esi, %edx
	leaq	227(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	leaq	.LC38(%rip), %r9
	movq	%rax, %rdx
	jmp	.L3978
.L4137:
	leaq	144(%rsp), %rdi
.LEHB63:
	call	*48(%rax)
.LEHE63:
	jmp	.L3878
.L4124:
	movl	%r8d, (%rsp)
	movl	%esi, %edx
	leaq	195(%rsp), %rbx
	leaq	227(%rsp), %rsi
.L4100:
	movq	%rbx, %rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	movl	(%rsp), %r8d
	leaq	.LC38(%rip), %r10
	movq	%rax, %rdx
	jmp	.L3942
.L4035:
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
	jmp	.L3941
.L4045:
	leaq	196(%rsp), %rdx
	leaq	195(%rsp), %rbx
	jmp	.L3980
.L4036:
	leaq	.LC37(%rip), %r10
	jmp	.L3942
.L4046:
	leaq	.LC37(%rip), %r9
	jmp	.L3978
.L4132:
	addl	$2, %edi
	jmp	.L3970
.L4125:
	addl	$2, %edi
	jmp	.L3934
.L4126:
	addl	$3, %edi
	jmp	.L3934
.L4133:
	addl	$3, %edi
	jmp	.L3970
.L4136:
	movq	%rsi, %rdi
	movq	%rsi, (%rsp)
	call	_ZNSt6localeC1Ev@PLT
	movb	$1, 32(%rbp)
	movq	(%rsp), %rsi
	jmp	.L3873
.L4138:
	movq	144(%rsp), %rax
	leaq	160(%rsp), %rdx
	cmpq	%rdx, %rax
	je	.L4020
	movq	152(%rsp), %xmm0
	movq	%rax, 112(%rsp)
	movhps	160(%rsp), %xmm0
	movups	%xmm0, 120(%rsp)
.L3885:
	movq	%rdx, 144(%rsp)
	leaq	160(%rsp), %rdx
	movq	%rdx, %rax
	jmp	.L3884
.L4020:
	movq	152(%rsp), %rax
	testq	%rax, %rax
	je	.L3881
	cmpq	$1, %rax
	je	.L4139
	movl	%eax, %ecx
	movq	%r8, %rdi
	movq	%rdx, %rsi
	rep movsb
.L3883:
	movq	152(%rsp), %rax
	movq	112(%rsp), %r8
.L3881:
	movq	%rax, 120(%rsp)
	movb	$0, (%r8,%rax)
	movq	144(%rsp), %rax
	jmp	.L3884
.L4135:
	leaq	195(%rsp), %rbx
	jmp	.L3963
.L4130:
	leaq	195(%rsp), %rbx
	jmp	.L3928
.L4134:
	leaq	227(%rsp), %rdx
	leaq	195(%rsp), %rbx
	jmp	.L3967
.L4127:
	leaq	227(%rsp), %rdx
	leaq	195(%rsp), %rbx
	jmp	.L4101
.L4053:
	movq	%rdx, %rsi
	jmp	.L3993
.L3891:
	movq	%r14, %rdi
	call	_ZNSt6localeD1Ev@PLT
.L3892:
	movq	112(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L3893
	movq	128(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L3893:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	je	.L3894
.L4107:
	call	__stack_chk_fail@PLT
.L3940:
	movl	%r8d, (%rsp)
	leaq	227(%rsp), %rsi
	leaq	195(%rsp), %rbx
	movl	%r8d, %edx
	jmp	.L4100
.L4139:
	movzbl	160(%rsp), %eax
	movb	%al, (%r8)
	jmp	.L3883
.L4031:
	movl	$1, %eax
	movl	$1, %edi
	jmp	.L3932
.L4042:
	movl	$1, %eax
	movl	$1, %edi
	jmp	.L3968
.L3874:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
.LEHB64:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE64:
.L3907:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
	leaq	.LC40(%rip), %rdi
.LEHB65:
	call	_ZSt20__throw_format_errorPKc
.L4119:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
	call	_ZNSt8__format29__failed_to_parse_format_specEv
.L4057:
	endbr64
	movq	%rax, %rbx
	jmp	.L3891
.L4056:
	endbr64
	movq	%rax, %rbx
	jmp	.L3892
.L4110:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
	leaq	.LC54(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3864:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
.L4112:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4107
	leaq	.LC55(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L3894:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE65:
	.cfi_endproc
.LFE6008:
	.section	.gcc_except_table
.LLSDA6008:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6008-.LLSDACSB6008
.LLSDACSB6008:
	.uleb128 .LEHB58-.LFB6008
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB6008
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L4056-.LFB6008
	.uleb128 0
	.uleb128 .LEHB60-.LFB6008
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB6008
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L4056-.LFB6008
	.uleb128 0
	.uleb128 .LEHB62-.LFB6008
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB63-.LFB6008
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L4056-.LFB6008
	.uleb128 0
	.uleb128 .LEHB64-.LFB6008
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L4057-.LFB6008
	.uleb128 0
	.uleb128 .LEHB65-.LFB6008
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSE6008:
	.section	.text._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE,comdat
	.size	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE, .-_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"format error: unmatched '}' in format string"
	.section	.text.unlikely
.LCOLDB60:
	.text
.LHOTB60:
	.p2align 4
	.type	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0, @function
_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0:
.LFB6906:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6906
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$312, %rsp
	.cfi_def_cfa_offset 368
	movq	%fs:40, %rbp
	movq	%rbp, 296(%rsp)
	movq	%rcx, %rbp
	leaq	176(%rsp), %r14
	movq	%rdi, 56(%rsp)
	movq	%rsi, %rcx
	cmpq	$2, %rsi
	je	.L4304
.L4141:
	pxor	%xmm0, %xmm0
	movq	%r14, %xmm2
	movq	56(%rsp), %rax
	punpcklqdq	%xmm2, %xmm0
	testq	%r8, %r8
	je	.L4305
	movdqu	0(%rbp), %xmm1
	leaq	200(%rsp), %rdi
	movq	%r8, %rsi
	movq	%rcx, 8(%rsp)
	movq	%rax, 192(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm1, 176(%rsp)
	call	_ZNSt6localeC1ERKS_@PLT
	movdqa	16(%rsp), %xmm0
	movq	8(%rsp), %rcx
	movb	$1, 208(%rsp)
	movl	$1, %eax
.L4147:
	movdqa	.LC58(%rip), %xmm1
	leaq	0(%r13,%r12), %rdx
	leaq	16+_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE(%rip), %rsi
	movq	%r13, 232(%rsp)
	movq	%rdx, 240(%rsp)
	movl	$0, 248(%rsp)
	movq	%rsi, 224(%rsp)
	movaps	%xmm1, 256(%rsp)
	movaps	%xmm0, 272(%rsp)
	cmpq	$2, %r12
	je	.L4306
	testq	%r12, %r12
	jne	.L4149
	testb	%al, %al
	jne	.L4307
	.p2align 4
	.p2align 3
.L4140:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4308
	addq	$312, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4306:
	.cfi_restore_state
	cmpb	$123, 0(%r13)
	je	.L4309
.L4149:
	movq	%r12, %rdx
	movl	$123, %esi
	movq	%r13, %rdi
	movq	%rcx, 8(%rsp)
	call	memchr@PLT
	movq	%r12, %rdx
	movl	$125, %esi
	movq	%r13, %rdi
	movq	%rax, %rbp
	movq	$-1, %r14
	subq	%r13, %rbp
	testq	%rax, %rax
	cmove	%r14, %rbp
	call	memchr@PLT
	movq	8(%rsp), %rcx
	movq	%rax, %r12
	subq	%r13, %r12
	testq	%rax, %rax
	leaq	224(%rsp), %rax
	movq	%rax, 40(%rsp)
	cmove	%r14, %r12
	.p2align 4
	.p2align 3
.L4155:
	cmpq	%r12, %rbp
	je	.L4310
	jb	.L4159
.L4160:
	leaq	1(%r12), %r14
	cmpq	%rcx, %r14
	je	.L4210
	cmpb	$125, 1(%rbx,%r12)
	jne	.L4210
	movq	232(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	280(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rax), %r15
	testq	%r14, %r14
	jne	.L4311
.L4211:
	movq	32(%rsp), %rax
	movq	%r15, 16(%rax)
	movq	16(%rsp), %rax
	movq	240(%rsp), %r15
	leaq	2(%rax,%r12), %rbx
	leaq	-1(%rbp), %rax
	subq	%r14, %rax
	movq	%r15, %rcx
	cmpq	$-1, %rbp
	movq	%rbx, 232(%rsp)
	cmovne	%rax, %rbp
	subq	%rbx, %rcx
	je	.L4157
	movq	%rcx, %rdx
	movl	$125, %esi
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	call	memchr@PLT
	movq	8(%rsp), %rcx
	movq	%rax, %r12
	subq	%rbx, %r12
	testq	%rax, %rax
	jne	.L4155
	movq	$-1, %r12
	cmpq	$-1, %rbp
	je	.L4158
	.p2align 4
	.p2align 3
.L4159:
	leaq	1(%rbp), %r14
	cmpq	%rcx, %r14
	je	.L4162
	movzbl	1(%rbx,%rbp), %eax
	cmpq	$-1, %r12
	je	.L4209
	cmpb	$123, %al
	movq	232(%rsp), %rbx
	sete	%r8b
	sete	16(%rsp)
	movzbl	%r8b, %r8d
	leaq	(%r8,%rbp), %r14
	leaq	(%rbx,%r14), %rax
	movq	%rax, 8(%rsp)
	testq	%r14, %r14
	jne	.L4312
	addq	$1, %rbx
	movq	240(%rsp), %rsi
	movq	%rbx, 232(%rsp)
.L4171:
	movsbw	(%rbx), %ax
	cmpb	$125, %al
	je	.L4313
	cmpb	$58, %al
	je	.L4314
	cmpb	$48, %al
	je	.L4315
	leal	-49(%rax), %edx
	cmpb	$8, %dl
	ja	.L4186
	movq	8(%rsp), %rcx
	subl	$48, %eax
	leaq	2(%rcx), %rdi
	cmpq	%rdi, %rsi
	je	.L4316
	movzbl	1(%rbx), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L4185
	movq	%rbx, %rdi
	xorl	%eax, %eax
	movl	$16, %r8d
	jmp	.L4195
	.p2align 4,,10
	.p2align 3
.L4317:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	leal	(%rcx,%rax,2), %eax
.L4190:
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	je	.L4196
.L4195:
	movzbl	(%rdi), %ecx
	subl	$48, %ecx
	cmpb	$9, %cl
	ja	.L4188
	subl	$4, %r8d
	jns	.L4317
	movl	$10, %edx
	mulw	%dx
	jo	.L4186
	movzbl	%cl, %ecx
	addw	%ax, %cx
	jc	.L4186
	movl	%ecx, %eax
	jmp	.L4190
	.p2align 4,,10
	.p2align 3
.L4310:
	movq	240(%rsp), %r15
.L4158:
	movq	280(%rsp), %rbx
	movq	232(%rsp), %rax
	movq	%r15, %rdx
	movq	16(%rbx), %rbp
	subq	%rax, %r15
	jne	.L4225
.L4161:
	movq	%rbp, 16(%rbx)
	movq	%rdx, 232(%rsp)
	.p2align 4
	.p2align 3
.L4157:
	movzbl	208(%rsp), %eax
	testb	%al, %al
	je	.L4140
.L4307:
	leaq	200(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
	jmp	.L4140
.L4319:
	cmpq	$-1, %rbp
	je	.L4175
	leaq	1(%rbp), %r14
	cmpq	%r14, %rcx
	je	.L4162
	movzbl	1(%r13,%r14), %eax
	.p2align 4
	.p2align 3
.L4209:
	cmpb	$123, %al
	jne	.L4162
	movq	232(%rsp), %rbx
	movb	$1, 16(%rsp)
	movq	$-1, %r12
	leaq	(%rbx,%r14), %rax
	movq	%rax, 8(%rsp)
	movq	280(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rax), %r15
.L4224:
	movq	24(%r15), %rdi
	movq	16(%r15), %r13
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %r13
	cmpq	%r13, %r14
	jb	.L4167
	.p2align 4
	.p2align 3
.L4169:
	testq	%r13, %r13
	je	.L4168
	movq	%r13, %rdx
	movq	%rbx, %rsi
	call	memcpy@PLT
	movq	24(%r15), %rdi
.L4168:
	movq	(%r15), %rax
	addq	%r13, %rdi
	addq	%r13, %rbx
	subq	%r13, %r14
	movq	%rdi, 24(%r15)
	movq	%r15, %rdi
.LEHB66:
	call	*(%rax)
	movq	24(%r15), %rdi
	movq	16(%r15), %r13
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %r13
	cmpq	%r13, %r14
	jnb	.L4169
	testq	%r14, %r14
	jne	.L4167
.L4170:
	movq	32(%rsp), %rax
	movq	%r15, 16(%rax)
	movq	240(%rsp), %r15
	movq	8(%rsp), %rax
	movq	%r15, %rcx
	movq	%r15, %rsi
	leaq	1(%rax), %rbx
	movq	%rbx, 232(%rsp)
	subq	%rbx, %rcx
	cmpb	$0, 16(%rsp)
	je	.L4171
	leaq	-2(%r12), %rax
	subq	%rbp, %rax
	cmpq	$-1, %r12
	cmovne	%rax, %r12
	testq	%rcx, %rcx
	je	.L4157
	movq	%rcx, %rdx
	movl	$123, %esi
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	call	memchr@PLT
	movq	8(%rsp), %rcx
	movq	%rax, %rbp
	subq	%rbx, %rbp
	testq	%rax, %rax
	jne	.L4155
	cmpq	$-1, %r12
	je	.L4175
	movq	$-1, %rbp
	jmp	.L4160
	.p2align 4,,10
	.p2align 3
.L4311:
	movq	24(%r15), %rdi
	movq	16(%r15), %rdx
	movq	%r14, %rbx
	movq	16(%rsp), %r13
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %rdx
	cmpq	%rdx, %r14
	jb	.L4212
	.p2align 4
	.p2align 3
.L4214:
	testq	%rdx, %rdx
	je	.L4213
	movq	%r13, %rsi
	movq	%rdx, 8(%rsp)
	call	memcpy@PLT
	movq	24(%r15), %rdi
	movq	8(%rsp), %rdx
.L4213:
	movq	(%r15), %rax
	addq	%rdx, %rdi
	addq	%rdx, %r13
	subq	%rdx, %rbx
	movq	%rdi, 24(%r15)
	movq	%r15, %rdi
	call	*(%rax)
	movq	24(%r15), %rdi
	movq	16(%r15), %rdx
	movq	%rdi, %rax
	subq	8(%r15), %rax
	subq	%rax, %rdx
	cmpq	%rdx, %rbx
	jnb	.L4214
	testq	%rbx, %rbx
	je	.L4211
.L4212:
	movq	%rbx, %rdx
	movq	%r13, %rsi
	call	memcpy@PLT
	addq	%rbx, 24(%r15)
	jmp	.L4211
	.p2align 4,,10
	.p2align 3
.L4305:
	movdqu	0(%rbp), %xmm1
	movq	%rax, 192(%rsp)
	xorl	%eax, %eax
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	movaps	%xmm1, 176(%rsp)
	jmp	.L4147
	.p2align 4,,10
	.p2align 3
.L4313:
	cmpl	$1, 248(%rsp)
	je	.L4297
	movq	256(%rsp), %rax
	movl	$2, 248(%rsp)
	leaq	1(%rax), %rdx
	movq	%rdx, 256(%rsp)
.L4180:
	movq	280(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movq	%rcx, %rdx
	andl	$15, %edx
	cmpq	%rdx, %rax
	jnb	.L4202
	movq	(%rsi), %rdx
	leaq	(%rax,%rax,4), %rcx
	salq	$4, %rax
	addq	8(%rsi), %rax
	movdqa	(%rax), %xmm0
	shrq	$4, %rdx
	shrq	%cl, %rdx
	movaps	%xmm0, 144(%rsp)
	movl	%edx, %ecx
	andl	$31, %edx
	andl	$31, %ecx
.L4203:
	movq	40(%rsp), %rax
	leaq	72(%rsp), %rsi
	leaq	112(%rsp), %rdi
	movdqa	144(%rsp), %xmm0
	movb	%cl, 160(%rsp)
	movaps	%xmm0, 112(%rsp)
	movdqa	160(%rsp), %xmm0
	movq	%rax, 72(%rsp)
	movaps	%xmm0, 128(%rsp)
	call	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE
.LEHE66:
	movq	232(%rsp), %r13
	movq	240(%rsp), %r15
	cmpq	%r15, %r13
	je	.L4204
	cmpb	$125, 0(%r13)
	jne	.L4204
	leaq	1(%r13), %rbx
	movq	%r15, %rcx
	movq	%rbx, 232(%rsp)
	subq	%rbx, %rcx
	je	.L4157
	movq	%rcx, %rdx
	movl	$123, %esi
	movq	%rbx, %rdi
	movq	%rcx, 8(%rsp)
	call	memchr@PLT
	testq	%rax, %rax
	je	.L4318
	movq	8(%rsp), %rdx
	subq	%rbx, %rax
	movl	$125, %esi
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	memchr@PLT
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L4319
.L4208:
	subq	%rbx, %r12
	jmp	.L4155
	.p2align 4,,10
	.p2align 3
.L4202:
	andl	$15, %ecx
	testb	%cl, %cl
	jne	.L4234
	movq	(%rsi), %rdi
	xorl	%edx, %edx
	shrq	$4, %rdi
	cmpq	%rdi, %rax
	jnb	.L4203
	salq	$5, %rax
	addq	8(%rsi), %rax
	movdqu	(%rax), %xmm0
	movaps	%xmm0, 144(%rsp)
	movzbl	16(%rax), %edx
	movb	%dl, 160(%rsp)
	movzbl	16(%rax), %edx
	movl	%edx, %ecx
	jmp	.L4203
	.p2align 4,,10
	.p2align 3
.L4304:
	cmpb	$123, (%rdx)
	jne	.L4141
	cmpb	$125, 1(%rdx)
	jne	.L4141
	leaq	56(%rsp), %rax
	movb	$0, 144(%rsp)
	movq	%rax, %xmm0
	leaq	144(%rsp), %rax
	movq	%rax, %xmm3
	punpcklqdq	%xmm3, %xmm0
	testb	$15, 0(%rbp)
	je	.L4142
	movq	0(%rbp), %rdx
	movq	8(%rbp), %rsi
	shrq	$4, %rdx
	movdqa	(%rsi), %xmm1
	movl	%edx, %eax
	andl	$31, %edx
	andl	$31, %eax
	movaps	%xmm1, 80(%rsp)
.L4143:
	movaps	%xmm0, 176(%rsp)
	movdqa	80(%rsp), %xmm0
	leaq	176(%rsp), %r14
	leaq	224(%rsp), %rdi
	movb	%al, 96(%rsp)
	movq	%r14, %rsi
	movaps	%xmm0, 224(%rsp)
	movdqa	96(%rsp), %xmm0
	movq	%r8, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movaps	%xmm0, 240(%rsp)
.LEHB67:
	call	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_15__do_vformat_toIS3_cS4_EET_S8_St17basic_string_viewIT0_St11char_traitsISA_EERKSt17basic_format_argsIT1_EPKSt6localeEUlRS8_E_EEDcOS8_NS1_6_Arg_tE
.LEHE67:
	movq	8(%rsp), %rcx
	movq	16(%rsp), %r8
	cmpb	$0, 144(%rsp)
	jne	.L4140
	jmp	.L4141
	.p2align 4,,10
	.p2align 3
.L4234:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L4203
	.p2align 4,,10
	.p2align 3
.L4314:
	cmpl	$1, 248(%rsp)
	je	.L4298
	movq	256(%rsp), %rax
	movq	8(%rsp), %r13
	movl	$2, 248(%rsp)
	leaq	1(%rax), %rdx
	addq	$2, %r13
	movq	%rdx, 256(%rsp)
	movq	%r13, 232(%rsp)
	jmp	.L4180
	.p2align 4,,10
	.p2align 3
.L4167:
	movq	%r14, %rdx
	movq	%rbx, %rsi
	call	memcpy@PLT
	addq	%r14, 24(%r15)
	jmp	.L4170
	.p2align 4,,10
	.p2align 3
.L4315:
	movq	8(%rsp), %rax
	movzbl	2(%rax), %edx
	leaq	2(%rax), %rdi
	xorl	%eax, %eax
.L4185:
	cmpb	$125, %dl
	je	.L4197
	cmpb	$58, %dl
	jne	.L4186
.L4197:
	movzwl	%ax, %eax
	cmpl	$2, 248(%rsp)
	je	.L4299
	movl	$1, 248(%rsp)
	xorl	%edx, %edx
	cmpb	$58, (%rdi)
	sete	%dl
	addq	%rdx, %rdi
	movq	%rdi, 232(%rsp)
	jmp	.L4180
.L4309:
	cmpb	$125, 1(%r13)
	jne	.L4149
	movl	$2, 248(%rsp)
	addq	$1, %r13
	movq	%r13, 232(%rsp)
	movq	$1, 256(%rsp)
	testb	$15, 176(%rsp)
	je	.L4320
	movq	176(%rsp), %rdx
	movq	184(%rsp), %rcx
	shrq	$4, %rdx
	movdqa	(%rcx), %xmm0
	movl	%edx, %eax
	andl	$31, %edx
	andl	$31, %eax
	movaps	%xmm0, 112(%rsp)
.L4156:
	movdqa	112(%rsp), %xmm0
	movb	%al, 128(%rsp)
	leaq	224(%rsp), %rcx
	leaq	64(%rsp), %rsi
	leaq	144(%rsp), %rdi
	movq	%rcx, 64(%rsp)
	movaps	%xmm0, 144(%rsp)
	movdqa	128(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
.LEHB68:
	call	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE8_M_visitIZNS1_19_Formatting_scannerIS3_cE13_M_format_argEmEUlRT_E_EEDcOS9_NS1_6_Arg_tE
	jmp	.L4157
	.p2align 4,,10
	.p2align 3
.L4318:
	movq	8(%rsp), %rdx
	movl	$125, %esi
	movq	%rbx, %rdi
	call	memchr@PLT
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	movq	%rax, %r12
	je	.L4175
	movq	$-1, %rbp
	jmp	.L4208
.L4175:
	movq	280(%rsp), %rbx
	movq	232(%rsp), %rax
	movq	16(%rbx), %rbp
	subq	%rax, %r15
	.p2align 4
	.p2align 3
.L4225:
	movq	%rax, %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE68:
	movq	240(%rsp), %rdx
	jmp	.L4161
.L4316:
	movzbl	2(%rcx), %edx
	jmp	.L4185
.L4188:
	cmpq	%rdi, %rbx
	je	.L4186
.L4196:
	movzbl	(%rdi), %edx
	jmp	.L4185
.L4142:
	movq	0(%rbp), %rsi
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %rsi
	je	.L4143
	movq	8(%rbp), %rax
	movdqu	(%rax), %xmm1
	movzbl	16(%rax), %edx
	movaps	%xmm1, 80(%rsp)
	movl	%edx, %eax
	jmp	.L4143
.L4320:
	movq	176(%rsp), %rsi
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrq	$4, %rsi
	je	.L4156
	movq	184(%rsp), %rax
	movdqu	(%rax), %xmm0
	movzbl	16(%rax), %edx
	movaps	%xmm0, 112(%rsp)
	movl	%edx, %eax
	jmp	.L4156
.L4308:
	call	__stack_chk_fail@PLT
.L4312:
	movq	280(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rax), %r15
	jmp	.L4224
.L4295:
	endbr64
	jmp	.L4296
	.section	.gcc_except_table
.LLSDA6906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6906-.LLSDACSB6906
.LLSDACSB6906:
	.uleb128 .LEHB66-.LFB6906
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L4295-.LFB6906
	.uleb128 0
	.uleb128 .LEHB67-.LFB6906
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB6906
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L4295-.LFB6906
	.uleb128 0
.LLSDACSE6906:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC6906
	.type	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0.cold, @function
_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0.cold:
.LFSB6906:
.L4299:
	.cfi_def_cfa_offset 368
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4321
.LEHB69:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L4297:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4322
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L4321:
	call	__stack_chk_fail@PLT
.L4162:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4323
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L4210:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4324
	leaq	.LC59(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.LEHE69:
.L4324:
	call	__stack_chk_fail@PLT
.L4238:
	endbr64
.L4296:
	movq	%rax, %rbx
	cmpb	$0, 208(%rsp)
	je	.L4222
	leaq	200(%rsp), %rdi
	call	_ZNSt6localeD1Ev@PLT
.L4222:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4325
	movq	%rbx, %rdi
.LEHB70:
	call	_Unwind_Resume@PLT
.LEHE70:
.L4298:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4326
.LEHB71:
	call	_ZNSt8__format39__conflicting_indexing_in_format_stringEv
.L4204:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4327
	call	_ZNSt8__format39__unmatched_left_brace_in_format_stringEv
.L4326:
	call	__stack_chk_fail@PLT
.L4327:
	call	__stack_chk_fail@PLT
.L4322:
	call	__stack_chk_fail@PLT
.L4323:
	call	__stack_chk_fail@PLT
.L4186:
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4328
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
.LEHE71:
.L4328:
	call	__stack_chk_fail@PLT
.L4325:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6906:
	.section	.gcc_except_table
.LLSDAC6906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC6906-.LLSDACSBC6906
.LLSDACSBC6906:
	.uleb128 .LEHB69-.LCOLDB60
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L4238-.LCOLDB60
	.uleb128 0
	.uleb128 .LEHB70-.LCOLDB60
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LCOLDB60
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L4238-.LCOLDB60
	.uleb128 0
.LLSDACSEC6906:
	.section	.text.unlikely
	.text
	.size	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0, .-_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0
	.section	.text.unlikely
	.size	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0.cold, .-_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0.cold
.LCOLDE60:
	.text
.LHOTE60:
	.section	.text._ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,"axG",@progbits,_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,comdat
	.p2align 4
	.weak	_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE
	.type	_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE, @function
_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE:
.LFB3979:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3979
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16+_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(%rip), %r10
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%r10, %xmm0
	subq	$376, %rsp
	.cfi_def_cfa_offset 400
	movq	%fs:40, %rbx
	movq	%rbx, 360(%rsp)
	movq	%rdi, %rbx
	leaq	64(%rsp), %rax
	movq	%rcx, 16(%rsp)
	leaq	336(%rsp), %rbp
	movq	%rax, %xmm1
	movq	%r8, 24(%rsp)
	leaq	32(%rsp), %rdi
	xorl	%r8d, %r8d
	punpcklqdq	%xmm1, %xmm0
	leaq	16(%rsp), %rcx
	movq	$256, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rbp, 320(%rsp)
	movq	$0, 328(%rsp)
	movb	$0, 336(%rsp)
	movaps	%xmm0, 32(%rsp)
.LEHB72:
	call	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0
	movq	328(%rsp), %rsi
	movq	40(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	%rsi, %rax
	subq	%rcx, %r8
	jne	.L4360
	movq	320(%rsp), %rdx
	leaq	16(%rbx), %rcx
	movq	%rcx, (%rbx)
	cmpq	%rbp, %rdx
	je	.L4348
.L4349:
	movq	336(%rsp), %rax
	movq	%rdx, (%rbx)
	movq	%rax, 16(%rbx)
	movq	%rsi, %rax
.L4338:
	movq	%rax, 8(%rbx)
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4357
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4360:
	.cfi_restore_state
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%r8, %rax
	jb	.L4361
	movq	320(%rsp), %rdi
	movl	$15, %eax
	leaq	(%rsi,%r8), %r9
	cmpq	%rbp, %rdi
	cmovne	336(%rsp), %rax
	cmpq	%r9, %rax
	jb	.L4334
	addq	%rsi, %rdi
	cmpq	$1, %r8
	je	.L4362
	movq	%r8, %rdx
	movq	%rcx, %rsi
	movq	%r9, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %r9
.L4336:
	movq	320(%rsp), %rax
	movq	%r9, 328(%rsp)
	leaq	16(%rbx), %rcx
	movb	$0, (%rax,%r9)
	movq	320(%rsp), %rdx
	movq	%rcx, (%rbx)
	cmpq	%rbp, %rdx
	je	.L4337
	movq	328(%rsp), %rsi
	jmp	.L4349
	.p2align 4,,10
	.p2align 3
.L4337:
	movq	328(%rsp), %rax
.L4348:
	leaq	1(%rax), %rdx
	cmpl	$8, %edx
	jnb	.L4339
	testb	$4, %dl
	jne	.L4363
	testl	%edx, %edx
	je	.L4338
	movzbl	336(%rsp), %esi
	movb	%sil, (%rcx)
	testb	$2, %dl
	je	.L4338
	movl	%edx, %edx
	movzwl	-2(%rbp,%rdx), %esi
	movw	%si, -2(%rcx,%rdx)
	jmp	.L4338
	.p2align 4,,10
	.p2align 3
.L4334:
	leaq	320(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r9, 8(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	8(%rsp), %r9
	jmp	.L4336
	.p2align 4,,10
	.p2align 3
.L4339:
	movq	336(%rsp), %rsi
	movq	%rsi, (%rcx)
	movl	%edx, %esi
	movq	-8(%rbp,%rsi), %rdi
	movq	%rdi, -8(%rcx,%rsi)
	leaq	8(%rcx), %rsi
	andq	$-8, %rsi
	subq	%rsi, %rcx
	addl	%ecx, %edx
	subq	%rcx, %rbp
	andl	$-8, %edx
	cmpl	$8, %edx
	jb	.L4338
	andl	$-8, %edx
	xorl	%ecx, %ecx
.L4343:
	movl	%ecx, %edi
	addl	$8, %ecx
	movq	0(%rbp,%rdi), %r8
	movq	%r8, (%rsi,%rdi)
	cmpl	%edx, %ecx
	jb	.L4343
	jmp	.L4338
	.p2align 4,,10
	.p2align 3
.L4362:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.L4336
.L4363:
	movl	336(%rsp), %esi
	movl	%edx, %edx
	movl	%esi, (%rcx)
	movl	-4(%rbp,%rdx), %esi
	movl	%esi, -4(%rcx,%rdx)
	jmp	.L4338
.L4345:
	movq	320(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L4346
	movq	336(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4346:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4347
.L4357:
	call	__stack_chk_fail@PLT
.L4352:
	endbr64
	movq	%rax, %rbx
	jmp	.L4345
.L4361:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4357
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE72:
.L4347:
	movq	%rbx, %rdi
.LEHB73:
	call	_Unwind_Resume@PLT
.LEHE73:
	.cfi_endproc
.LFE3979:
	.section	.gcc_except_table
.LLSDA3979:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3979-.LLSDACSB3979
.LLSDACSB3979:
	.uleb128 .LEHB72-.LFB3979
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L4352-.LFB3979
	.uleb128 0
	.uleb128 .LEHB73-.LFB3979
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
.LLSDACSE3979:
	.section	.text._ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,"axG",@progbits,_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,comdat
	.size	_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE, .-_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE
	.section	.text._ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,"axG",@progbits,_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,comdat
	.p2align 4
	.weak	_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE
	.type	_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE, @function
_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE:
.LFB4462:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4462
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	leaq	16+_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(%rip), %rbx
	movq	%rbx, %xmm0
	subq	$368, %rsp
	.cfi_def_cfa_offset 400
	movq	%fs:40, %r12
	movq	%r12, 360(%rsp)
	movq	%rdi, %r12
	leaq	64(%rsp), %rax
	movq	%rcx, 16(%rsp)
	leaq	336(%rsp), %rbp
	movq	%rax, %xmm1
	movq	%r8, 24(%rsp)
	leaq	32(%rsp), %rdi
	xorl	%r8d, %r8d
	punpcklqdq	%xmm1, %xmm0
	leaq	16(%rsp), %rcx
	movq	$256, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rbp, 320(%rsp)
	movq	$0, 328(%rsp)
	movb	$0, 336(%rsp)
	movaps	%xmm0, 32(%rsp)
.LEHB74:
	call	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0
	movq	40(%rsp), %rdi
	movq	56(%rsp), %rbx
	movq	328(%rsp), %rsi
	subq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.L4365
	testq	%rbx, %rbx
	jne	.L4389
	movq	320(%rsp), %rdi
	movq	%rsi, %rbx
.L4365:
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	fwrite@PLT
	cmpq	%rbx, %rax
	jne	.L4390
	movq	320(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L4364
	movq	336(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4364:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4388
	addq	$368, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4389:
	.cfi_restore_state
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%rbx, %rax
	jb	.L4391
	movq	320(%rsp), %rdx
	movl	$15, %eax
	leaq	(%rbx,%rsi), %r9
	cmpq	%rbp, %rdx
	cmovne	336(%rsp), %rax
	cmpq	%r9, %rax
	jb	.L4370
	leaq	(%rdx,%rsi), %rax
	cmpq	$1, %rbx
	je	.L4392
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	movq	%r9, 8(%rsp)
	call	memcpy@PLT
	movq	8(%rsp), %r9
	jmp	.L4372
	.p2align 4,,10
	.p2align 3
.L4370:
	movq	%rdi, %rcx
	movq	%rbx, %r8
	xorl	%edx, %edx
	movq	%r9, 8(%rsp)
	leaq	320(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	movq	8(%rsp), %r9
.L4372:
	movq	320(%rsp), %rax
	movq	%r9, 328(%rsp)
	movb	$0, (%rax,%r9)
	movq	40(%rsp), %rax
	movq	320(%rsp), %rdi
	movq	328(%rsp), %rbx
	movq	%rax, 56(%rsp)
	jmp	.L4365
	.p2align 4,,10
	.p2align 3
.L4392:
	movzbl	(%rdi), %edx
	movb	%dl, (%rax)
	jmp	.L4372
.L4390:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4374
.L4388:
	call	__stack_chk_fail@PLT
.L4391:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4388
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L4382:
	endbr64
	movq	%rax, %rbx
	jmp	.L4376
.L4374:
	movl	$5, %edi
	call	_ZSt20__throw_system_errori@PLT
.LEHE74:
.L4376:
	movq	320(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.L4393
.L4377:
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4388
	movq	%rbx, %rdi
.LEHB75:
	call	_Unwind_Resume@PLT
.LEHE75:
.L4393:
	movq	336(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L4377
	.cfi_endproc
.LFE4462:
	.section	.gcc_except_table
.LLSDA4462:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4462-.LLSDACSB4462
.LLSDACSB4462:
	.uleb128 .LEHB74-.LFB4462
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L4382-.LFB4462
	.uleb128 0
	.uleb128 .LEHB75-.LFB4462
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE4462:
	.section	.text._ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,"axG",@progbits,_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE,comdat
	.size	_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE, .-_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE
	.section	.rodata._ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_.str1.1,"aMS",@progbits,1
.LC61:
	.string	"{}\n"
	.section	.text._ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_,"axG",@progbits,_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_,comdat
	.p2align 4
	.weak	_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_
	.type	_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_, @function
_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_:
.LFB5192:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5192
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv(%rip), %rax
	xorl	%r8d, %r8d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	16+_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(%rip), %rbx
	movq	%rbx, %xmm0
	subq	$728, %rsp
	.cfi_def_cfa_offset 784
	movq	%fs:40, %rbp
	movq	%rbp, 712(%rsp)
	movq	%rdi, %rbp
	movq	%rax, 24(%rsp)
	leaq	96(%rsp), %rax
	leaq	64(%rsp), %r15
	movq	%rcx, 16(%rsp)
	movq	%rax, %xmm1
	leaq	16(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rcx, 8(%rsp)
	punpcklqdq	%xmm1, %xmm0
	movq	%rsp, %rcx
	leaq	368(%rsp), %r12
	movq	$256, 80(%rsp)
	movq	%rax, 88(%rsp)
	movq	%r12, 352(%rsp)
	movq	$0, 360(%rsp)
	movb	$0, 368(%rsp)
	movq	$209, (%rsp)
	movaps	%xmm0, 64(%rsp)
.LEHB76:
	call	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0
.LEHE76:
	movq	360(%rsp), %rsi
	movq	72(%rsp), %rcx
	movq	88(%rsp), %r8
	movq	%rsi, %rax
	subq	%rcx, %r8
	jne	.L4459
	movq	352(%rsp), %rdx
	leaq	48(%rsp), %r14
	movq	%r14, 32(%rsp)
	cmpq	%r12, %rdx
	je	.L4433
.L4434:
	movq	368(%rsp), %rax
	movq	%rdx, 32(%rsp)
	movq	%rax, 48(%rsp)
	movq	%rsi, %rax
.L4403:
	movq	%rax, 40(%rsp)
	movq	%rbx, %xmm0
	xorl	%r8d, %r8d
	movq	%rsp, %rcx
	movq	%rax, 64(%rsp)
	leaq	416(%rsp), %rax
	leaq	688(%rsp), %r12
	movl	$3, %esi
	movq	%rax, %xmm2
	movq	%rdx, 72(%rsp)
	leaq	384(%rsp), %rdi
	leaq	.LC61(%rip), %rdx
	punpcklqdq	%xmm2, %xmm0
	movq	%rax, 408(%rsp)
	movq	$256, 400(%rsp)
	movq	%r12, 672(%rsp)
	movq	$0, 680(%rsp)
	movb	$0, 688(%rsp)
	movq	$177, (%rsp)
	movq	%r15, 8(%rsp)
	movaps	%xmm0, 384(%rsp)
.LEHB77:
	call	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0
	movq	392(%rsp), %rdi
	movq	408(%rsp), %rbx
	movq	680(%rsp), %rsi
	subq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.L4414
	testq	%rbx, %rbx
	jne	.L4460
	movq	672(%rsp), %rdi
	movq	%rsi, %rbx
.L4414:
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movl	$1, %esi
	call	fwrite@PLT
.LEHE77:
	cmpq	%rbx, %rax
	jne	.L4461
	movq	672(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L4424
	movq	688(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4424:
	movq	32(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L4394
	movq	48(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4394:
	movq	712(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4458
	addq	$728, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4459:
	.cfi_restore_state
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%r8, %rax
	jb	.L4462
	movq	352(%rsp), %rdi
	movl	$15, %eax
	leaq	(%rsi,%r8), %r14
	cmpq	%r12, %rdi
	cmovne	368(%rsp), %rax
	cmpq	%r14, %rax
	jb	.L4399
	addq	%rsi, %rdi
	cmpq	$1, %r8
	je	.L4463
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
.L4401:
	movq	352(%rsp), %rax
	movq	%r14, 360(%rsp)
	movb	$0, (%rax,%r14)
	movq	352(%rsp), %rdx
	leaq	48(%rsp), %r14
	movq	%r14, 32(%rsp)
	cmpq	%r12, %rdx
	je	.L4402
	movq	360(%rsp), %rsi
	jmp	.L4434
	.p2align 4,,10
	.p2align 3
.L4460:
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%rbx, %rax
	jb	.L4464
	movq	672(%rsp), %rdx
	movl	$15, %eax
	leaq	(%rbx,%rsi), %r13
	cmpq	%r12, %rdx
	cmovne	688(%rsp), %rax
	cmpq	%r13, %rax
	jb	.L4419
	leaq	(%rdx,%rsi), %rax
	cmpq	$1, %rbx
	je	.L4465
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L4421
	.p2align 4,,10
	.p2align 3
.L4402:
	movq	360(%rsp), %rax
.L4433:
	leaq	1(%rax), %rdx
	movq	%r14, %rdi
	movq	%r12, %rcx
	cmpl	$8, %edx
	jnb	.L4466
.L4404:
	xorl	%esi, %esi
	testb	$4, %dl
	je	.L4407
	movl	(%rcx), %esi
	movl	%esi, (%rdi)
	movl	$4, %esi
.L4407:
	testb	$2, %dl
	je	.L4408
	movzwl	(%rcx,%rsi), %r8d
	movw	%r8w, (%rdi,%rsi)
	addq	$2, %rsi
.L4408:
	andl	$1, %edx
	je	.L4409
	movzbl	(%rcx,%rsi), %edx
	movb	%dl, (%rdi,%rsi)
.L4409:
	movq	%r14, %rdx
	jmp	.L4403
	.p2align 4,,10
	.p2align 3
.L4399:
	leaq	352(%rsp), %rdi
	xorl	%edx, %edx
.LEHB78:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.LEHE78:
	jmp	.L4401
	.p2align 4,,10
	.p2align 3
.L4466:
	movl	%edx, %edi
	xorl	%ecx, %ecx
	andl	$-8, %edi
.L4405:
	movl	%ecx, %esi
	addl	$8, %ecx
	movq	(%r12,%rsi), %r8
	movq	%r8, (%r14,%rsi)
	cmpl	%edi, %ecx
	jb	.L4405
	leaq	(%r14,%rcx), %rdi
	addq	%r12, %rcx
	jmp	.L4404
	.p2align 4,,10
	.p2align 3
.L4419:
	movq	%rdi, %rcx
	movq	%rbx, %r8
	leaq	672(%rsp), %rdi
	xorl	%edx, %edx
.LEHB79:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.L4421:
	movq	672(%rsp), %rax
	movq	%r13, 680(%rsp)
	movb	$0, (%rax,%r13)
	movq	392(%rsp), %rax
	movq	672(%rsp), %rdi
	movq	680(%rsp), %rbx
	movq	%rax, 408(%rsp)
	jmp	.L4414
	.p2align 4,,10
	.p2align 3
.L4463:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.L4401
	.p2align 4,,10
	.p2align 3
.L4465:
	movzbl	(%rdi), %edx
	movb	%dl, (%rax)
	jmp	.L4421
.L4411:
	movq	352(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L4429
	movq	368(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4429:
	movq	712(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4431
.L4458:
	call	__stack_chk_fail@PLT
.L4464:
	movq	712(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4458
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L4461:
	movq	712(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4458
	movl	$5, %edi
	call	_ZSt20__throw_system_errori@PLT
.LEHE79:
.L4439:
	endbr64
	movq	%rax, %rbx
	jmp	.L4427
.L4438:
	endbr64
	movq	%rax, %rbx
	jmp	.L4411
.L4462:
	movq	712(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4458
	leaq	.LC0(%rip), %rdi
.LEHB80:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE80:
.L4427:
	movq	672(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L4428
	movq	688(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4428:
	movq	32(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L4429
	movq	48(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L4429
.L4431:
	movq	%rbx, %rdi
.LEHB81:
	call	_Unwind_Resume@PLT
.LEHE81:
	.cfi_endproc
.LFE5192:
	.section	.gcc_except_table
.LLSDA5192:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5192-.LLSDACSB5192
.LLSDACSB5192:
	.uleb128 .LEHB76-.LFB5192
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L4438-.LFB5192
	.uleb128 0
	.uleb128 .LEHB77-.LFB5192
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L4439-.LFB5192
	.uleb128 0
	.uleb128 .LEHB78-.LFB5192
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L4438-.LFB5192
	.uleb128 0
	.uleb128 .LEHB79-.LFB5192
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L4439-.LFB5192
	.uleb128 0
	.uleb128 .LEHB80-.LFB5192
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L4438-.LFB5192
	.uleb128 0
	.uleb128 .LEHB81-.LFB5192
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
.LLSDACSE5192:
	.section	.text._ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_,"axG",@progbits,_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_,comdat
	.size	_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_, .-_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_
	.section	.rodata.str1.1
.LC66:
	.string	"len = {0}, cap = {1}"
.LC67:
	.string	"{}"
	.section	.text.unlikely
.LCOLDB68:
	.section	.text.startup,"ax",@progbits
.LHOTB68:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4472:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4472
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rdi
	movq	%rdi, 88(%rsp)
	movl	$40, %edi
	leaq	48(%rsp), %rbx
	call	malloc@PLT
	movdqa	.LC62(%rip), %xmm0
	leaq	16(%rsp), %rdi
	movq	%rbx, %r8
	movq	.LC64(%rip), %rdx
	movq	%rax, (%rsp)
	movl	$20, %esi
	movups	%xmm0, (%rax)
	movdqa	.LC63(%rip), %xmm0
	movq	stdout(%rip), %rbp
	movq	%rdx, 32(%rax)
	leaq	.LC66(%rip), %rdx
	movups	%xmm0, 16(%rax)
	movq	.LC65(%rip), %rax
	movl	$10, 48(%rsp)
	movq	%rax, 8(%rsp)
	movl	$2114, %eax
	movq	%rax, %rcx
	movl	$10, 64(%rsp)
.LEHB82:
	call	_ZSt7vformatB5cxx11St17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE
.LEHE82:
	movq	24(%rsp), %rax
	movq	%rbx, %r8
	movq	%rbp, %rdi
	movl	$3, %esi
	leaq	.LC61(%rip), %rdx
	movq	%rax, 48(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 56(%rsp)
	movl	$177, %eax
	movq	%rax, %rcx
.LEHB83:
	call	_ZSt17vprint_nonunicodeP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEESt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE
.LEHE83:
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L4468
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4468:
	movq	stdout(%rip), %rdi
	movq	%rsp, %rcx
	movl	$2, %esi
	leaq	.LC67(%rip), %rdx
.LEHB84:
	call	_ZSt7printlnIJR4ListIiEEEvP8_IO_FILESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOS7_
.LEHE84:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4476
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L4476:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L4473:
	endbr64
	movq	%rax, %rbx
	jmp	.L4469
	.section	.gcc_except_table
.LLSDA4472:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4472-.LLSDACSB4472
.LLSDACSB4472:
	.uleb128 .LEHB82-.LFB4472
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB4472
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L4473-.LFB4472
	.uleb128 0
	.uleb128 .LEHB84-.LFB4472
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
.LLSDACSE4472:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4472
	.type	main.cold, @function
main.cold:
.LFSB4472:
.L4469:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.L4477
.L4470:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4478
	movq	%rbx, %rdi
.LEHB85:
	call	_Unwind_Resume@PLT
.LEHE85:
.L4477:
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L4470
.L4478:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4472:
	.section	.gcc_except_table
.LLSDAC4472:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4472-.LLSDACSBC4472
.LLSDACSBC4472:
	.uleb128 .LEHB85-.LCOLDB68
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
.LLSDACSEC4472:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE68:
	.section	.text.startup
.LHOTE68:
	.section	.rodata._ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0.str1.1,"aMS",@progbits,1
.LC69:
	.string	"[]"
	.section	.rodata._ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0.str1.8,"aMS",@progbits,1
	.align 8
.LC70:
	.string	"constexpr T& List<T>::operator[](i32) const [with T = int; i32 = int]"
	.section	.rodata._ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0.str1.1
.LC71:
	.string	"list.hpp"
.LC72:
	.string	"ok()"
.LC73:
	.string	", "
	.section	.text._ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv,comdat
	.align 2
	.p2align 4
	.type	_ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0, @function
_ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0:
.LFB6911:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6911
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$936, %rsp
	.cfi_def_cfa_offset 992
	movq	.LC74(%rip), %xmm1
	movhps	.LC75(%rip), %xmm1
	movq	%rdx, 72(%rsp)
	leaq	656(%rsp), %rbp
	leaq	544(%rsp), %r12
	movq	%rbp, %rdi
	movq	%fs:40, %rax
	movq	%rax, 920(%rsp)
	xorl	%eax, %eax
	movq	%rbp, 56(%rsp)
	movaps	%xmm1, (%rsp)
	call	_ZNSt8ios_baseC2Ev@PLT
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	%rax, 656(%rsp)
	xorl	%eax, %eax
	movw	%ax, 880(%rsp)
	movq	8+_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movups	%xmm0, 888(%rsp)
	movups	%xmm0, 904(%rsp)
	movq	-24(%rax), %rdi
	movq	%rax, 544(%rsp)
	movq	16+_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	$0, 872(%rsp)
	addq	%r12, %rdi
	movq	%rax, (%rdi)
.LEHB86:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE86:
	leaq	64+_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movdqa	(%rsp), %xmm1
	pxor	%xmm0, %xmm0
	leaq	640(%rsp), %r14
	movq	%rax, 656(%rsp)
	leaq	608(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	movaps	%xmm1, 544(%rsp)
	movaps	%xmm0, 560(%rsp)
	movaps	%xmm0, 576(%rsp)
	movaps	%xmm0, 592(%rsp)
	call	_ZNSt6localeC1Ev@PLT
	leaq	16+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	%rbp, %rdi
	movl	$16, 616(%rsp)
	movq	%rax, 552(%rsp)
	leaq	552(%rsp), %rax
	movq	%rax, %rsi
	movq	%r14, 624(%rsp)
	movq	$0, 632(%rsp)
	movb	$0, 640(%rsp)
	movq	%rax, 64(%rsp)
.LEHB87:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE87:
	testl	%r15d, %r15d
	jne	.L4485
	movl	$2, %edx
	leaq	.LC69(%rip), %rsi
	movq	%r12, %rdi
.LEHB88:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE88:
.L4486:
	movq	72(%rsp), %rax
	movq	592(%rsp), %rdx
	movq	624(%rsp), %rbx
	movq	16(%rax), %r13
	testq	%rdx, %rdx
	je	.L4555
	movq	576(%rsp), %rax
	testq	%rax, %rax
	je	.L4605
	cmpq	%rdx, %rax
	jb	.L4605
.L4556:
	subq	584(%rsp), %rax
	leaq	240(%rsp), %rbp
	movq	%rax, 632(%rsp)
	movb	$0, (%rbx,%rax)
	movq	624(%rsp), %rbx
	movq	%rbp, 224(%rsp)
	cmpq	%r14, %rbx
	je	.L4558
.L4585:
	movq	640(%rsp), %rax
	movq	%rbx, 224(%rsp)
	movq	%rax, 240(%rsp)
	movq	632(%rsp), %rax
.L4559:
	movq	64(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%rax, 232(%rsp)
	movq	%rax, (%rsp)
	movq	%r14, 624(%rsp)
	movq	$0, 632(%rsp)
	movb	$0, 640(%rsp)
.LEHB89:
	call	_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm@PLT
.LEHE89:
	movq	(%rsp), %rax
	testq	%rax, %rax
	je	.L4646
	movq	%rbx, %r15
	leaq	(%rbx,%rax), %rcx
	.p2align 6
	.p2align 4
	.p2align 3
.L4571:
	movq	24(%r13), %rax
	movzbl	(%r15), %edx
	leaq	1(%rax), %rsi
	movq	%rsi, 24(%r13)
	movb	%dl, (%rax)
	movq	24(%r13), %rax
	subq	8(%r13), %rax
	cmpq	16(%r13), %rax
	je	.L4570
.L4573:
	addq	$1, %r15
	cmpq	%rcx, %r15
	jne	.L4571
.L4646:
	cmpq	%rbp, %rbx
	je	.L4575
	movq	240(%rsp), %rax
	movq	%rbx, %rdi
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4575:
	leaq	24+_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	624(%rsp), %rdi
	movq	%rax, 544(%rsp)
	addq	$40, %rax
	movq	%rax, 656(%rsp)
	cmpq	%r14, %rdi
	je	.L4577
	movq	640(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4577:
	movq	48(%rsp), %rdi
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 552(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	56(%rsp), %rdi
	movq	16+_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rbx
	movq	%rax, 544(%rsp)
	movq	-24(%rax), %rax
	movq	%rbx, 544(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 656(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	920(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4647
	addq	$936, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4570:
	.cfi_restore_state
	movq	0(%r13), %rax
	movq	%rcx, (%rsp)
	movq	%r13, %rdi
.LEHB90:
	call	*(%rax)
.LEHE90:
	movq	(%rsp), %rcx
	jmp	.L4573
	.p2align 4,,10
	.p2align 3
.L4605:
	movq	%rdx, %rax
	jmp	.L4556
	.p2align 4,,10
	.p2align 3
.L4485:
	movq	544(%rsp), %rax
	movb	$91, 143(%rsp)
	movq	-24(%rax), %rax
	cmpq	$0, 560(%rsp,%rax)
	je	.L4487
	leaq	143(%rsp), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
.LEHB91:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE91:
	movq	%rax, 32(%rsp)
	testq	%rbx, %rbx
	je	.L4657
.L4489:
	movl	(%rbx), %eax
	leaq	224(%rsp), %rdi
	xorl	%r8d, %r8d
	movl	$2, %esi
	leaq	528(%rsp), %rbp
	leaq	.LC67(%rip), %rdx
	movq	.LC76(%rip), %xmm0
	movq	$256, 240(%rsp)
	movl	%eax, 176(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, (%rsp)
	movhps	(%rsp), %xmm0
	movq	%rax, 248(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, %rcx
	movq	%rdi, 24(%rsp)
	movq	%rbp, 512(%rsp)
	movq	$0, 520(%rsp)
	movb	$0, 528(%rsp)
	movq	$49, 144(%rsp)
	movq	%rax, 16(%rsp)
	movaps	%xmm0, 224(%rsp)
.LEHB92:
	call	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0
.LEHE92:
	movq	520(%rsp), %rsi
	movq	232(%rsp), %rcx
	movq	248(%rsp), %r8
	movq	%rsi, %rdx
	subq	%rcx, %r8
	jne	.L4658
	movq	512(%rsp), %rax
	leaq	208(%rsp), %r13
	movq	%r13, 192(%rsp)
	cmpq	%rbp, %rax
	je	.L4589
.L4590:
	movq	528(%rsp), %rdx
	movq	%rax, 192(%rsp)
	movq	%rdx, 208(%rsp)
	movq	%rsi, %rdx
.L4498:
	movq	32(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rdx, 200(%rsp)
.LEHB93:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE93:
	movq	192(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L4509
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4509:
	addq	$4, %rbx
	leal	-1(%r15), %eax
	leaq	(%rbx,%rax,4), %r15
	cmpq	%rbx, %r15
	je	.L4553
	movq	.LC76(%rip), %xmm3
	movhps	(%rsp), %xmm3
	movaps	%xmm3, 32(%rsp)
	jmp	.L4552
	.p2align 4,,10
	.p2align 3
.L4513:
	movq	512(%rsp), %rsi
	movq	%r13, 192(%rsp)
	cmpq	%rbp, %rsi
	je	.L4587
.L4588:
	movq	528(%rsp), %rax
	movq	%rsi, 192(%rsp)
	movq	%rax, 208(%rsp)
	movq	%rdx, %rax
.L4541:
	movq	%rax, %rdx
	movq	%r12, %rdi
	movq	%rax, 200(%rsp)
.LEHB94:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE94:
	movq	192(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L4551
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4551:
	addq	$4, %rbx
	cmpq	%rbx, %r15
	je	.L4553
.L4552:
	movl	$2, %edx
	leaq	.LC73(%rip), %rsi
	movq	%r12, %rdi
.LEHB95:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE95:
	movl	(%rbx), %eax
	movdqa	32(%rsp), %xmm2
	xorl	%r8d, %r8d
	movl	$2, %esi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdi
	leaq	.LC67(%rip), %rdx
	movq	$256, 240(%rsp)
	movl	%eax, 160(%rsp)
	movq	(%rsp), %rax
	movq	%rbp, 512(%rsp)
	movq	%rax, 248(%rsp)
	leaq	160(%rsp), %rax
	movq	$0, 520(%rsp)
	movb	$0, 528(%rsp)
	movq	$49, 144(%rsp)
	movq	%rax, 152(%rsp)
	movaps	%xmm2, 224(%rsp)
.LEHB96:
	call	_ZNSt8__format15__do_vformat_toINS_10_Sink_iterIcEEcSt20basic_format_contextIS2_cEEET_S5_St17basic_string_viewIT0_St11char_traitsIS7_EERKSt17basic_format_argsIT1_EPKSt6locale.isra.0
.LEHE96:
	movq	520(%rsp), %rdx
	movq	232(%rsp), %r8
	movq	248(%rsp), %rcx
	movq	%rdx, %rax
	subq	%r8, %rcx
	je	.L4513
	movabsq	$9223372036854775806, %rax
	subq	%rdx, %rax
	cmpq	%rcx, %rax
	jb	.L4659
	movq	512(%rsp), %r10
	leaq	(%rcx,%rdx), %r9
	cmpq	%rbp, %r10
	je	.L4660
	movq	528(%rsp), %rax
	cmpq	%r9, %rax
	jb	.L4521
.L4517:
	leaq	(%r10,%rdx), %rdi
	cmpq	$1, %rcx
	je	.L4661
	movq	%rcx, %rdx
	movq	%r8, %rsi
	movq	%r9, 80(%rsp)
	call	memcpy@PLT
	movq	512(%rsp), %r11
	movq	80(%rsp), %r9
.L4523:
	movq	%r9, 520(%rsp)
	movb	$0, (%r11,%r9)
	movq	512(%rsp), %rsi
	movq	%r13, 192(%rsp)
	cmpq	%rbp, %rsi
	je	.L4540
	movq	520(%rsp), %rdx
	jmp	.L4588
	.p2align 4,,10
	.p2align 3
.L4540:
	movq	520(%rsp), %rax
.L4587:
	leaq	1(%rax), %rdx
	movq	%r13, %rdi
	movq	%rbp, %rcx
	cmpl	$8, %edx
	jnb	.L4662
.L4542:
	xorl	%esi, %esi
	testb	$4, %dl
	je	.L4545
	movl	(%rcx), %esi
	movl	%esi, (%rdi)
	movl	$4, %esi
.L4545:
	testb	$2, %dl
	je	.L4546
	movzwl	(%rcx,%rsi), %r8d
	movw	%r8w, (%rdi,%rsi)
	addq	$2, %rsi
.L4546:
	andl	$1, %edx
	je	.L4547
	movzbl	(%rcx,%rsi), %edx
	movb	%dl, (%rdi,%rsi)
.L4547:
	movq	%r13, %rsi
	jmp	.L4541
	.p2align 4,,10
	.p2align 3
.L4553:
	movq	544(%rsp), %rax
	movb	$93, 144(%rsp)
	movq	-24(%rax), %rax
	cmpq	$0, 560(%rsp,%rax)
	je	.L4663
	movq	16(%rsp), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
.LEHB97:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE97:
	jmp	.L4486
	.p2align 4,,10
	.p2align 3
.L4521:
	movabsq	$9223372036854775806, %rdi
	cmpq	%r9, %rdi
	jb	.L4518
	addq	%rax, %rax
	movq	%rax, 80(%rsp)
	cmpq	%rax, %r9
	jb	.L4526
.L4520:
	movq	%r9, 80(%rsp)
	leaq	1(%r9), %rdi
.L4527:
	movq	%rdx, 120(%rsp)
	movq	%r10, 112(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%r8, 88(%rsp)
.LEHB98:
	call	_Znwm@PLT
.LEHE98:
	movq	120(%rsp), %rdx
	movq	88(%rsp), %r8
	movq	%rax, %r11
	movq	96(%rsp), %rcx
	movq	104(%rsp), %r9
	testq	%rdx, %rdx
	movq	112(%rsp), %r10
	jne	.L4528
	testq	%r8, %r8
	je	.L4539
	movq	%rax, %rdi
	cmpq	$1, %rcx
	je	.L4664
.L4530:
	movq	%rcx, %rdx
	movq	%r8, %rsi
	movq	%r10, 104(%rsp)
	movq	%r9, 96(%rsp)
	movq	%r11, 88(%rsp)
	call	memcpy@PLT
	movq	104(%rsp), %r10
	movq	96(%rsp), %r9
	movq	88(%rsp), %r11
.L4539:
	cmpq	%rbp, %r10
	je	.L4535
.L4532:
	movq	528(%rsp), %rax
	movq	%r10, %rdi
	movq	%r9, 96(%rsp)
	movq	%r11, 88(%rsp)
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	movq	96(%rsp), %r9
	movq	88(%rsp), %r11
.L4535:
	movq	80(%rsp), %rax
	movq	%r11, 512(%rsp)
	movq	%rax, 528(%rsp)
	jmp	.L4523
	.p2align 4,,10
	.p2align 3
.L4662:
	movl	%edx, %edi
	xorl	%ecx, %ecx
	andl	$-8, %edi
.L4543:
	movl	%ecx, %esi
	addl	$8, %ecx
	movq	0(%rbp,%rsi), %r8
	movq	%r8, 0(%r13,%rsi)
	cmpl	%edi, %ecx
	jb	.L4543
	leaq	0(%r13,%rcx), %rdi
	addq	%rbp, %rcx
	jmp	.L4542
	.p2align 4,,10
	.p2align 3
.L4487:
	movl	$91, %esi
	movq	%r12, %rdi
.LEHB99:
	call	_ZNSo3putEc@PLT
	movq	%r12, 32(%rsp)
	testq	%rbx, %rbx
	jne	.L4489
.L4657:
	movq	%r15, %rax
	shrq	$32, %rax
	je	.L4489
	leaq	.LC70(%rip), %rcx
	movl	$347, %edx
	leaq	.LC71(%rip), %rsi
	leaq	.LC72(%rip), %rdi
	call	__assert_fail@PLT
	.p2align 4,,10
	.p2align 3
.L4663:
	movl	$93, %esi
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
.LEHE99:
	jmp	.L4486
	.p2align 4,,10
	.p2align 3
.L4660:
	cmpq	$15, %r9
	jbe	.L4517
	movabsq	$9223372036854775806, %rax
	cmpq	%r9, %rax
	jb	.L4518
	cmpq	$29, %r9
	ja	.L4520
	movq	$30, 80(%rsp)
	movl	$31, %edi
	jmp	.L4527
	.p2align 4,,10
	.p2align 3
.L4526:
	movabsq	$9223372036854775806, %rdi
	cmpq	%rax, %rdi
	jnb	.L4665
	movabsq	$9223372036854775806, %rax
	movabsq	$9223372036854775807, %rdi
	movq	%rax, 80(%rsp)
	jmp	.L4527
	.p2align 4,,10
	.p2align 3
.L4528:
	cmpq	$1, %rdx
	je	.L4666
	movq	%r10, %rsi
	movq	%rax, %rdi
	movq	%r9, 120(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%r8, 104(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%r10, 88(%rsp)
	call	memcpy@PLT
	movq	104(%rsp), %r8
	movq	88(%rsp), %r10
	movq	96(%rsp), %rdx
	movq	112(%rsp), %rcx
	movq	%rax, %r11
	testq	%r8, %r8
	movq	120(%rsp), %r9
	je	.L4539
	leaq	(%r11,%rdx), %rdi
	cmpq	$1, %rcx
	jne	.L4530
	movzbl	(%r8), %eax
	movb	%al, (%rdi)
	jmp	.L4539
	.p2align 4,,10
	.p2align 3
.L4555:
	leaq	240(%rsp), %rbp
	movq	%rbp, 224(%rsp)
	cmpq	%r14, %rbx
	jne	.L4585
	.p2align 4
	.p2align 3
.L4558:
	movq	632(%rsp), %rax
	movq	%rbp, %rdi
	movq	%r14, %rcx
	leaq	1(%rax), %rdx
	cmpl	$8, %edx
	jnb	.L4667
.L4560:
	xorl	%esi, %esi
	testb	$4, %dl
	je	.L4563
	movl	(%rcx), %esi
	movl	%esi, (%rdi)
	movl	$4, %esi
.L4563:
	testb	$2, %dl
	je	.L4564
	movzwl	(%rcx,%rsi), %r8d
	movw	%r8w, (%rdi,%rsi)
	addq	$2, %rsi
.L4564:
	andl	$1, %edx
	je	.L4565
	movzbl	(%rcx,%rsi), %edx
	movb	%dl, (%rdi,%rsi)
.L4565:
	movq	%rbp, %rbx
	jmp	.L4559
	.p2align 4,,10
	.p2align 3
.L4658:
	movabsq	$9223372036854775806, %rax
	subq	%rsi, %rax
	cmpq	%r8, %rax
	jb	.L4668
	movq	512(%rsp), %rdx
	movl	$15, %eax
	leaq	(%r8,%rsi), %r13
	cmpq	%rbp, %rdx
	cmovne	528(%rsp), %rax
	cmpq	%r13, %rax
	jb	.L4494
	leaq	(%rdx,%rsi), %rdi
	cmpq	$1, %r8
	je	.L4669
	movq	%r8, %rdx
	movq	%rcx, %rsi
	call	memcpy@PLT
	jmp	.L4496
	.p2align 4,,10
	.p2align 3
.L4661:
	movzbl	(%r8), %eax
	movb	%al, (%rdi)
	movq	512(%rsp), %r11
	jmp	.L4523
.L4497:
	movq	520(%rsp), %rdx
.L4589:
	leaq	1(%rdx), %rcx
	movq	%r13, %rdi
	movq	%rbp, %rax
	cmpl	$8, %ecx
	jnb	.L4670
.L4499:
	xorl	%esi, %esi
	testb	$4, %cl
	jne	.L4671
.L4502:
	testb	$2, %cl
	jne	.L4672
.L4503:
	andl	$1, %ecx
	jne	.L4673
.L4504:
	movq	%r13, %rax
	jmp	.L4498
.L4667:
	movl	%edx, %edi
	xorl	%ecx, %ecx
	andl	$-8, %edi
.L4561:
	movl	%ecx, %esi
	addl	$8, %ecx
	movq	(%r14,%rsi), %r8
	movq	%r8, 0(%rbp,%rsi)
	cmpl	%edi, %ecx
	jb	.L4561
	leaq	0(%rbp,%rcx), %rdi
	addq	%r14, %rcx
	jmp	.L4560
.L4666:
	movzbl	(%r10), %eax
	movb	%al, (%r11)
	testq	%r8, %r8
	je	.L4539
	leaq	1(%r11), %rdi
	cmpq	$1, %rcx
	jne	.L4530
	movzbl	(%r8), %eax
	movb	%al, 1(%r11)
	cmpq	%rbp, %r10
	jne	.L4532
	jmp	.L4535
	.p2align 4,,10
	.p2align 3
.L4494:
	leaq	512(%rsp), %rdi
	xorl	%edx, %edx
.LEHB100:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.LEHE100:
.L4496:
	movq	512(%rsp), %rax
	movq	%r13, 520(%rsp)
	movb	$0, (%rax,%r13)
	movq	512(%rsp), %rax
	leaq	208(%rsp), %r13
	movq	%r13, 192(%rsp)
	cmpq	%rbp, %rax
	je	.L4497
	movq	520(%rsp), %rsi
	jmp	.L4590
.L4672:
	movzwl	(%rax,%rsi), %r8d
	movw	%r8w, (%rdi,%rsi)
	addq	$2, %rsi
	jmp	.L4503
.L4671:
	movl	(%rax), %esi
	movl	%esi, (%rdi)
	movl	$4, %esi
	jmp	.L4502
.L4673:
	movzbl	(%rax,%rsi), %eax
	movb	%al, (%rdi,%rsi)
	jmp	.L4504
.L4669:
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.L4496
.L4665:
	leaq	1(%rax), %rdi
	jmp	.L4527
.L4670:
	movl	%ecx, %edi
	xorl	%eax, %eax
	andl	$-8, %edi
.L4500:
	movl	%eax, %esi
	addl	$8, %eax
	movq	0(%rbp,%rsi), %r8
	movq	%r8, 0(%r13,%rsi)
	cmpl	%edi, %eax
	jb	.L4500
	leaq	0(%r13,%rax), %rdi
	addq	%rbp, %rax
	jmp	.L4499
.L4664:
	movzbl	(%r8), %eax
	movb	%al, (%r11)
	cmpq	%rbp, %r10
	jne	.L4532
	jmp	.L4535
.L4668:
	movq	920(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4492
.L4647:
	call	__stack_chk_fail@PLT
.L4597:
	endbr64
.L4656:
	movq	%rax, %r13
	jmp	.L4582
.L4604:
	endbr64
	jmp	.L4656
.L4600:
	endbr64
	movq	%rax, %rbx
	jmp	.L4483
.L4481:
	movq	624(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.L4482
	movq	640(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4482:
	movq	48(%rsp), %rdi
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 552(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	16+_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movq	%rax, 544(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 544(%rsp,%rax)
.L4483:
	movq	56(%rsp), %rdi
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 656(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	920(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4647
.L4584:
	movq	%rbx, %rdi
.LEHB101:
	call	_Unwind_Resume@PLT
.LEHE101:
.L4492:
	leaq	.LC0(%rip), %rdi
.LEHB102:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE102:
.L4582:
	cmpq	%rbp, %rbx
	je	.L4583
	movq	240(%rsp), %rax
	movq	%rbx, %rdi
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4583:
	movq	%r13, %rbx
.L4508:
	movq	%r12, %rdi
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	920(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4584
	jmp	.L4647
.L4598:
	endbr64
.L4654:
	movq	%rax, %rbx
	jmp	.L4580
.L4596:
	endbr64
	movq	%rax, %rbx
	jmp	.L4508
.L4599:
	endbr64
	jmp	.L4654
.L4603:
	endbr64
.L4653:
	movq	%rax, %rbx
	jmp	.L4549
.L4659:
	movq	920(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4647
	leaq	.LC0(%rip), %rdi
.LEHB103:
	call	_ZSt20__throw_length_errorPKc@PLT
.L4549:
	movq	512(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.L4508
	movq	528(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L4508
.L4602:
	endbr64
	jmp	.L4653
.L4601:
	endbr64
	movq	%rax, %rbx
	jmp	.L4481
.L4580:
	movq	192(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.L4508
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L4508
.L4518:
	movq	920(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4647
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE103:
	.cfi_endproc
.LFE6911:
	.section	.gcc_except_table
.LLSDA6911:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6911-.LLSDACSB6911
.LLSDACSB6911:
	.uleb128 .LEHB86-.LFB6911
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L4600-.LFB6911
	.uleb128 0
	.uleb128 .LEHB87-.LFB6911
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L4601-.LFB6911
	.uleb128 0
	.uleb128 .LEHB88-.LFB6911
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L4596-.LFB6911
	.uleb128 0
	.uleb128 .LEHB89-.LFB6911
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L4604-.LFB6911
	.uleb128 0
	.uleb128 .LEHB90-.LFB6911
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L4597-.LFB6911
	.uleb128 0
	.uleb128 .LEHB91-.LFB6911
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L4596-.LFB6911
	.uleb128 0
	.uleb128 .LEHB92-.LFB6911
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L4602-.LFB6911
	.uleb128 0
	.uleb128 .LEHB93-.LFB6911
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L4599-.LFB6911
	.uleb128 0
	.uleb128 .LEHB94-.LFB6911
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L4598-.LFB6911
	.uleb128 0
	.uleb128 .LEHB95-.LFB6911
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L4596-.LFB6911
	.uleb128 0
	.uleb128 .LEHB96-.LFB6911
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L4603-.LFB6911
	.uleb128 0
	.uleb128 .LEHB97-.LFB6911
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L4596-.LFB6911
	.uleb128 0
	.uleb128 .LEHB98-.LFB6911
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L4603-.LFB6911
	.uleb128 0
	.uleb128 .LEHB99-.LFB6911
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L4596-.LFB6911
	.uleb128 0
	.uleb128 .LEHB100-.LFB6911
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L4602-.LFB6911
	.uleb128 0
	.uleb128 .LEHB101-.LFB6911
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB102-.LFB6911
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L4602-.LFB6911
	.uleb128 0
	.uleb128 .LEHB103-.LFB6911
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L4603-.LFB6911
	.uleb128 0
.LLSDACSE6911:
	.section	.text._ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv,comdat
	.size	_ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0, .-_ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0
	.section	.text._ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv,"axG",@progbits,_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv,comdat
	.p2align 4
	.weak	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv
	.type	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv, @function
_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv:
.LFB5776:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	8(%rdi), %rax
	movq	%rsi, %rbx
	movq	8(%rdx), %rsi
	movq	%rax, (%rdi)
	movq	(%rdx), %rdi
	movq	%rbx, %rdx
	call	_ZNKSt9formatterI4ListIiEcE6formatISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEEENT_8iteratorES1_RS9_.isra.0
	movq	%rax, 16(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE5776:
	.size	_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv, .-_ZNSt16basic_format_argISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE6handle9_S_formatIK4ListIiEEEvRSt26basic_format_parse_contextIcERS4_PKv
	.section	.text._ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,"axG",@progbits,_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm
	.type	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm, @function
_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm:
.LFB6005:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6005
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$320, %rsp
	.cfi_def_cfa_offset 368
	movq	56(%rdi), %r10
	movq	%fs:40, %rbx
	movq	%rbx, 312(%rsp)
	movq	%rdi, %rbx
	movzbl	(%r10), %eax
	movq	%rax, %rdx
	andl	$15, %edx
	cmpq	%rdx, %rsi
	jnb	.L4677
	movq	(%r10), %rax
	leaq	(%rsi,%rsi,4), %rcx
	salq	$4, %rsi
	addq	8(%r10), %rsi
	movdqa	(%rsi), %xmm0
	shrq	$4, %rax
	shrq	%cl, %rax
	movaps	%xmm0, 96(%rsp)
	andl	$31, %eax
.L4678:
	movb	%al, 112(%rsp)
	movdqa	96(%rsp), %xmm0
	movzbl	%al, %eax
	leaq	.L4682(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	movaps	%xmm0, 128(%rsp)
	movdqa	112(%rsp), %xmm0
	addq	%rdx, %rax
	movaps	%xmm0, 144(%rsp)
	notrack jmp	*%rax
	.section	.rodata._ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,"aG",@progbits,_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,comdat
	.align 4
	.align 4
.L4682:
	.long	.L4679-.L4682
	.long	.L4697-.L4682
	.long	.L4696-.L4682
	.long	.L4695-.L4682
	.long	.L4694-.L4682
	.long	.L4693-.L4682
	.long	.L4692-.L4682
	.long	.L4691-.L4682
	.long	.L4690-.L4682
	.long	.L4689-.L4682
	.long	.L4688-.L4682
	.long	.L4687-.L4682
	.long	.L4686-.L4682
	.long	.L4685-.L4682
	.long	.L4684-.L4682
	.long	.L4683-.L4682
	.long	.L4681-.L4682
	.long	.L4681-.L4682
	.long	.L4681-.L4682
	.long	.L4681-.L4682
	.long	.L4681-.L4682
	.section	.text._ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,"axG",@progbits,_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,comdat
	.p2align 4,,10
	.p2align 3
.L4677:
	testb	$15, %al
	jne	.L4679
	movq	(%r10), %rax
	shrq	$4, %rax
	cmpq	%rax, %rsi
	jnb	.L4679
	salq	$5, %rsi
	addq	8(%r10), %rsi
	movdqu	(%rsi), %xmm0
	movzbl	16(%rsi), %eax
	movaps	%xmm0, 96(%rsp)
	jmp	.L4678
	.p2align 4,,10
	.p2align 3
.L4681:
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
.LEHB104:
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	(%rsp), %rdi
	movdqa	128(%rsp), %xmm0
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	%rbx, %rsi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIDF128_NS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbx)
	.p2align 4
	.p2align 3
.L4676:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
	addq	$320, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4697:
	.cfi_restore_state
	xorl	%edx, %edx
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movq	$0, 160(%rsp)
	movl	$32, 168(%rsp)
	leaq	160(%rsp), %r15
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
.LEHE104:
	movq	%rax, %rdx
	movzbl	161(%rsp), %eax
	andl	$120, %eax
	jne	.L4699
	movzbl	160(%rsp), %eax
	testb	$92, %al
	jne	.L4946
	leaq	208(%rsp), %rcx
	movq	%rdx, 8(%rbx)
	movq	56(%rbx), %rbp
	movq	%rcx, 192(%rsp)
	movzbl	128(%rsp), %ebx
	movq	%rcx, %r12
	movq	$0, 200(%rsp)
	movb	$0, 208(%rsp)
	testb	$32, %al
	jne	.L4947
	testb	%bl, %bl
	je	.L4860
	movl	$4, %r8d
	leaq	.LC30(%rip), %rcx
.L4721:
	leaq	192(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
.LEHB105:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.isra.0
.L4940:
	movq	200(%rsp), %rdx
	movl	$1, %r9d
	movq	%r15, %r8
	movq	%rbp, %rcx
	movq	192(%rsp), %rbx
	movq	%rdx, %rdi
	movq	%rbx, %rsi
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
.LEHE105:
	movq	192(%rsp), %rdi
	movq	%rax, %rbx
	cmpq	%r12, %rdi
	je	.L4722
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4722:
	movq	%rbx, %rax
	jmp	.L4705
	.p2align 4,,10
	.p2align 3
.L4696:
	movl	$7, %edx
	leaq	8(%rbx), %rsi
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movl	$32, 88(%rsp)
	leaq	80(%rsp), %r15
.LEHB106:
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	%rax, %rcx
	movzbl	81(%rsp), %eax
	movl	%eax, %edx
	notl	%eax
	andl	$120, %edx
	testb	$56, %al
	jne	.L4728
	movzwl	84(%rsp), %edi
	testb	$92, 80(%rsp)
	jne	.L4948
	movq	%rcx, 8(%rbx)
	movzbl	128(%rsp), %esi
	movq	56(%rbx), %rbx
	cmpb	$56, %dl
	je	.L4731
	leaq	79(%rsp), %rax
	movb	%sil, 79(%rsp)
	movl	$1, %r8d
	movq	%rax, %r9
	movzwl	80(%rsp), %eax
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L4736
	cmpw	$256, %ax
	je	.L4737
.L4739:
	movq	16(%rbx), %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	movl	$15, %ecx
	call	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	jmp	.L4941
	.p2align 4,,10
	.p2align 3
.L4695:
	leaq	8(%rbx), %rsi
	movl	$1, %edx
	leaq	80(%rsp), %rdi
	movq	$0, 80(%rsp)
	movl	$32, 88(%rsp)
	leaq	80(%rsp), %r15
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movl	128(%rsp), %r8d
	movq	56(%rbx), %r14
	movq	%rax, 8(%rbx)
	movzbl	81(%rsp), %eax
	movl	%r8d, %esi
	movl	%eax, %ecx
	andl	$120, %ecx
	cmpb	$56, %cl
	je	.L4949
	shrb	$3, %al
	andl	$15, %eax
	testl	%r8d, %r8d
	js	.L4950
	cmpb	$4, %al
	je	.L4753
	ja	.L4754
	cmpb	$1, %al
	jbe	.L4755
	leaq	.LC35(%rip), %r10
	cmpb	$16, %cl
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %r10
	testl	%r8d, %r8d
	jne	.L4858
	movl	$48, %eax
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
.L4760:
	movb	%al, 275(%rsp)
	testb	$16, 80(%rsp)
	je	.L4937
.L4871:
	movq	$-2, %rsi
	movl	$2, %eax
.L4764:
	addq	%rbx, %rsi
	movl	%eax, %edi
	testl	%eax, %eax
	je	.L4765
	xorl	%eax, %eax
.L4779:
	movl	%eax, %ecx
	addl	$1, %eax
	movzbl	(%r10,%rcx), %r9d
	movb	%r9b, (%rsi,%rcx)
	cmpl	%edi, %eax
	jb	.L4779
	.p2align 4
	.p2align 3
.L4765:
	movzbl	80(%rsp), %eax
	leaq	-1(%rsi), %rcx
	testl	%r8d, %r8d
	jns	.L4781
	movb	$45, -1(%rsi)
	movq	%rcx, %rsi
	jmp	.L4820
	.p2align 4,,10
	.p2align 3
.L4694:
	leaq	8(%rbx), %rsi
	movl	$1, %edx
	leaq	160(%rsp), %rdi
	movq	$0, 160(%rsp)
	movl	$32, 168(%rsp)
	leaq	160(%rsp), %r15
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	56(%rbx), %r14
	movl	128(%rsp), %esi
	movq	%rax, 8(%rbx)
	movzbl	161(%rsp), %eax
	movl	%eax, %ecx
	andl	$120, %ecx
	cmpb	$56, %cl
	je	.L4951
	shrb	$3, %al
	andl	$15, %eax
	cmpb	$4, %al
	je	.L4788
	ja	.L4789
	cmpb	$1, %al
	jbe	.L4790
	leaq	.LC35(%rip), %r9
	cmpb	$16, %cl
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %r9
	testl	%esi, %esi
	jne	.L4952
	movl	$48, %eax
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
.L4795:
	movb	%al, 275(%rsp)
	movzbl	160(%rsp), %eax
	testb	$16, %al
	je	.L4939
.L4881:
	movq	$-2, %rsi
	movl	$2, %ecx
.L4799:
	addq	%rbx, %rsi
	movl	%ecx, %r8d
	testl	%ecx, %ecx
	je	.L4800
	xorl	%ecx, %ecx
.L4817:
	movl	%ecx, %edi
	addl	$1, %ecx
	movzbl	(%r9,%rdi), %r10d
	movb	%r10b, (%rsi,%rdi)
	cmpl	%r8d, %ecx
	jb	.L4817
	.p2align 4
	.p2align 3
.L4800:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L4883
	cmpl	$3, %eax
	je	.L4953
.L4820:
	movq	%rdx, %rax
	movq	%rbx, %rcx
	movq	%rsi, %rdx
	movq	%r14, %r8
	subq	%rsi, %rax
	subq	%rsi, %rcx
	movq	%r15, %rdi
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_
	jmp	.L4942
	.p2align 4,,10
	.p2align 3
.L4693:
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	128(%rsp), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	%rbx, %rdx
	call	_ZNKSt8__format15__formatter_intIcE6formatIxNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbx)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4692:
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	128(%rsp), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	%rbx, %rdx
	call	_ZNKSt8__format15__formatter_intIcE6formatIyNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbx)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4691:
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	(%rsp), %rdi
	movss	128(%rsp), %xmm0
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	%rbx, %rsi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIfNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbx)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4690:
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	(%rsp), %rdi
	movsd	128(%rsp), %xmm0
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	%rbx, %rsi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbx)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4689:
	leaq	160(%rsp), %rdi
	leaq	8(%rbx), %rsi
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format14__formatter_fpIcE5parseERSt26basic_format_parse_contextIcE
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	pushq	136(%rsp)
	.cfi_def_cfa_offset 376
	pushq	136(%rsp)
	.cfi_def_cfa_offset 384
	movq	%rbx, %rsi
	movq	16(%rsp), %rdi
	call	_ZNKSt8__format14__formatter_fpIcE6formatIeNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbx)
	popq	%rcx
	.cfi_def_cfa_offset 376
	popq	%rsi
	.cfi_def_cfa_offset 368
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4688:
	leaq	160(%rsp), %r8
	leaq	8(%rbx), %rsi
	movq	$0, 160(%rsp)
	movq	%r8, %rdi
	movq	%r8, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	movq	128(%rsp), %rdi
	movq	56(%rbx), %r14
	movq	%rax, 8(%rbx)
	call	strlen@PLT
	movq	128(%rsp), %rdx
	movq	(%rsp), %rdi
	movq	%r14, %rcx
	movq	%rax, %rsi
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
.L4942:
	movq	%rax, 16(%r14)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4687:
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format15__formatter_strIcE5parseERSt26basic_format_parse_contextIcE
	movq	128(%rsp), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	136(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNKSt8__format15__formatter_strIcE6formatINS_10_Sink_iterIcEEEET_St17basic_string_viewIcSt11char_traitsIcEERSt20basic_format_contextIS5_cE
	movq	%rax, 16(%rbx)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4686:
	movq	16(%rbx), %rdx
	movq	8(%rbx), %rsi
	movq	$0, 160(%rsp)
	cmpq	%rsi, %rdx
	je	.L4821
	cmpb	$125, (%rsi)
	je	.L4821
	movl	$1, %ecx
	leaq	.LC56(%rip), %r8
	movq	%r10, 16(%rsp)
	leaq	160(%rsp), %rdi
	movq	%rdx, (%rsp)
	movq	%rdi, %r15
	movl	$32, 168(%rsp)
	call	_ZNSt8__format5_SpecIcE23_M_parse_fill_and_alignEPKcS3_St17basic_string_viewIcSt11char_traitsIcEE
	movq	(%rsp), %rdx
	movq	16(%rsp), %r10
	movq	%rax, %rsi
	cmpq	%rax, %rdx
	je	.L4822
	movzbl	(%rax), %eax
	cmpb	$125, %al
	je	.L4822
	cmpb	$48, %al
	je	.L4825
	xorl	%eax, %eax
.L4826:
	sall	$6, %eax
	movq	%r15, %rdi
	movq	%rdx, (%rsp)
	movl	%eax, %ecx
	movzbl	160(%rsp), %eax
	andl	$-65, %eax
	orl	%ecx, %eax
	leaq	8(%rbx), %rcx
	movb	%al, 160(%rsp)
	call	_ZNSt8__format5_SpecIcE14_M_parse_widthEPKcS3_RSt26basic_format_parse_contextIcE
	movq	(%rsp), %rdx
	movq	%rax, %rsi
	cmpq	%rax, %rdx
	je	.L4885
	movzbl	(%rax), %ecx
	cmpb	$112, %cl
	je	.L4829
	xorl	%eax, %eax
	cmpb	$80, %cl
	je	.L4954
.L4831:
	cmpb	$125, %cl
	jne	.L4955
.L4828:
	leal	0(,%rax,8), %edx
	movzbl	161(%rsp), %eax
	movzwl	164(%rsp), %ebp
	movq	56(%rbx), %r10
	andl	$-121, %eax
	orl	%edx, %eax
	movb	%al, 161(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 80(%rsp)
	movl	168(%rsp), %eax
	movl	%eax, 88(%rsp)
.L4824:
	movq	128(%rsp), %rax
	movq	%rsi, 8(%rbx)
	testq	%rax, %rax
	jne	.L4835
	movzbl	81(%rsp), %eax
	movl	$30768, %edx
	movb	$48, 274(%rsp)
	movl	$3, %r14d
	movw	%dx, 272(%rsp)
	andl	$120, %eax
	cmpb	$8, %al
	je	.L4887
.L4837:
	leaq	272(%rsp), %rdx
	movq	%r14, %rcx
	movq	%rdx, %rbx
	testb	$64, 80(%rsp)
	je	.L4843
	movzwl	80(%rsp), %eax
	movzwl	%bp, %r8d
	andw	$384, %ax
	cmpw	$128, %ax
	je	.L4845
	cmpw	$256, %ax
	je	.L4846
.L4849:
	movq	16(%r10), %rbx
	testq	%r14, %r14
	jne	.L4956
.L4851:
	movq	%rbx, 16(%r10)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4685:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
	movq	128(%rsp), %rdx
	movq	136(%rsp), %rax
	addq	$320, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%r10, %rsi
	leaq	8(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	*%rax
	.p2align 4,,10
	.p2align 3
.L4684:
	.cfi_restore_state
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	128(%rsp), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	136(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNKSt8__format15__formatter_intIcE6formatInNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	movq	%rax, 16(%rbx)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4683:
	leaq	8(%rbx), %rsi
	leaq	160(%rsp), %rdi
	movl	$1, %edx
	movq	$0, 160(%rsp)
	movq	%rdi, (%rsp)
	movl	$32, 168(%rsp)
	call	_ZNSt8__format15__formatter_intIcE11_M_do_parseERSt26basic_format_parse_contextIcENS_10_Pres_typeE
	movq	128(%rsp), %rsi
	movq	(%rsp), %rdi
	movq	%rax, 8(%rbx)
	movq	56(%rbx), %rbx
	movq	136(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZNKSt8__format15__formatter_intIcE6formatIoNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
.L4941:
	movq	%rax, 16(%rbx)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4728:
	movq	%rcx, 8(%rbx)
	movzbl	128(%rsp), %esi
	movq	56(%rbx), %rbx
	testb	%dl, %dl
	je	.L4731
	movq	%rbx, %rdx
	movq	%r15, %rdi
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
	jmp	.L4941
	.p2align 4,,10
	.p2align 3
.L4699:
	movq	%rdx, 8(%rbx)
	movq	56(%rbx), %rbx
	movzbl	128(%rsp), %esi
	movq	%rbx, %rbp
	cmpb	$56, %al
	je	.L4957
	movq	%rbx, %rdx
	movq	%r15, %rdi
	call	_ZNKSt8__format15__formatter_intIcE6formatIhNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_
.L4705:
	movq	%rax, 16(%rbp)
	jmp	.L4676
	.p2align 4,,10
	.p2align 3
.L4951:
	cmpl	$127, %esi
	ja	.L4742
	movb	%sil, 80(%rsp)
	movl	$1, %eax
	leaq	80(%rsp), %rcx
.L4945:
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r15, %rcx
	movq	%r14, %rdx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L4942
	.p2align 4,,10
	.p2align 3
.L4949:
	leal	128(%r8), %eax
	cmpl	$255, %eax
	ja	.L4742
	movb	%r8b, 160(%rsp)
	movl	$1, %eax
	leaq	160(%rsp), %rcx
	jmp	.L4945
	.p2align 4,,10
	.p2align 3
.L4821:
	movq	160(%rsp), %rax
	movl	$32, 88(%rsp)
	xorl	%ebp, %ebp
	movl	$32, 168(%rsp)
	movq	%rax, 80(%rsp)
	jmp	.L4824
	.p2align 4,,10
	.p2align 3
.L4835:
	movdqa	.LC6(%rip), %xmm0
	bsrq	%rax, %rdx
	leal	4(%rdx), %edi
	shrl	$2, %edi
	movaps	%xmm0, 256(%rsp)
	cmpq	$255, %rax
	jbe	.L4838
	leal	-1(%rdi), %edx
	.p2align 4
	.p2align 3
.L4839:
	movq	%rax, %rsi
	movl	%edx, %ecx
	andl	$15, %esi
	movzbl	256(%rsp,%rsi), %esi
	movb	%sil, 274(%rsp,%rcx)
	movq	%rax, %rcx
	leal	-1(%rdx), %esi
	shrq	$8, %rax
	shrq	$4, %rcx
	subl	$2, %edx
	andl	$15, %ecx
	movzbl	256(%rsp,%rcx), %ecx
	movb	%cl, 274(%rsp,%rsi)
	cmpq	$255, %rax
	ja	.L4839
.L4838:
	cmpq	$15, %rax
	jbe	.L4840
	movq	%rax, %rdx
	shrq	$4, %rax
	andl	$15, %edx
	movzbl	256(%rsp,%rdx), %edx
	movb	%dl, 275(%rsp)
	movzbl	256(%rsp,%rax), %eax
.L4841:
	movb	%al, 274(%rsp)
	leal	2(%rdi), %eax
	leaq	274(%rsp), %rbx
	movslq	%eax, %r14
	movl	$30768, %eax
	leaq	(%rbx,%rdi), %r15
	movw	%ax, 272(%rsp)
	movzbl	81(%rsp), %eax
	andl	$120, %eax
	cmpb	$8, %al
	jne	.L4837
.L4836:
	movb	$88, 273(%rsp)
	.p2align 4
	.p2align 3
.L4842:
	movsbl	(%rbx), %edi
	movq	%r10, (%rsp)
	addq	$1, %rbx
	call	toupper@PLT
	movq	(%rsp), %r10
	movb	%al, -1(%rbx)
	cmpq	%r15, %rbx
	jne	.L4842
	jmp	.L4837
.L4755:
	testl	%r8d, %r8d
	jne	.L4750
.L4938:
	movb	$48, 275(%rsp)
	movzbl	80(%rsp), %eax
.L4766:
	leaq	275(%rsp), %rbx
	leaq	276(%rsp), %rdx
	leaq	274(%rsp), %rcx
	movq	%rbx, %rsi
.L4781:
	shrb	$2, %al
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L4958
	cmpl	$3, %eax
	jne	.L4820
	movb	$32, -1(%rsi)
.L4785:
	movq	%rcx, %rsi
	jmp	.L4820
	.p2align 4,,10
	.p2align 3
.L4731:
	leaq	160(%rsp), %rcx
	movl	$1, %eax
	movb	%sil, 160(%rsp)
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r15, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L4941
	.p2align 4,,10
	.p2align 3
.L4843:
	movq	%rdx, %rsi
	movq	%r10, %rcx
	movq	%r14, %rdi
	movl	$2, %r9d
	leaq	80(%rsp), %r8
	movq	%r14, %rdx
	movq	%r10, (%rsp)
	movw	%bp, 84(%rsp)
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
	movq	(%rsp), %r10
	movq	%rax, %rbx
	jmp	.L4851
.L4846:
	movq	%r10, %rsi
	movl	%ebp, %edi
	movq	%rdx, 40(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%r10, (%rsp)
	movq	%r14, 16(%rsp)
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movq	40(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rbx
	movq	(%rsp), %r10
	movq	%rax, %r8
.L4845:
	cmpq	%r8, %r14
	jnb	.L4849
	movq	16(%r10), %rdi
	testq	%r14, %r14
	jne	.L4959
.L4852:
	leaq	274(%rsp), %rax
	movl	$48, %r9d
	subq	%r14, %r8
	movq	%r10, (%rsp)
	movq	%rax, %rbx
	leaq	-2(%r14), %rax
	movl	$2, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	_ZNSt8__format14__write_paddedINS_10_Sink_iterIcEEcEET_S3_St17basic_string_viewIT0_St11char_traitsIS5_EENS_6_AlignEmDi
	movq	(%rsp), %r10
	movq	%rax, %rbx
	jmp	.L4851
	.p2align 4,,10
	.p2align 3
.L4950:
	negl	%esi
	cmpb	$3, %al
	jbe	.L4746
	cmpb	$4, %al
	je	.L4747
	cmpb	$40, %cl
	je	.L4960
.L4752:
	leaq	275(%rsp), %rbx
	movl	%esi, %edx
	leaq	307(%rsp), %rsi
	movl	%r8d, (%rsp)
	movq	%rbx, %rdi
	movb	%cl, 16(%rsp)
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	cmpb	$48, 16(%rsp)
	movl	(%rsp), %r8d
	movq	%rax, %rdx
	jne	.L4869
	cmpq	%rbx, %rax
	je	.L4870
.L4776:
	movq	%rbx, %rcx
	.p2align 4
	.p2align 3
.L4778:
	movsbl	(%rcx), %edi
	movq	%rdx, 40(%rsp)
	movl	%r8d, 16(%rsp)
	movq	%rcx, (%rsp)
	call	toupper@PLT
	movq	(%rsp), %rcx
	movq	40(%rsp), %rdx
	movl	16(%rsp), %r8d
	movb	%al, (%rcx)
	addq	$1, %rcx
	cmpq	%rdx, %rcx
	jne	.L4778
.L4870:
	leaq	.LC37(%rip), %r10
	movl	$2, %eax
.L4774:
	movq	%rbx, %rsi
	testb	$16, 80(%rsp)
	je	.L4765
	movq	%rax, %rsi
	negq	%rsi
	jmp	.L4764
	.p2align 4,,10
	.p2align 3
.L4860:
	movl	$5, %r8d
	leaq	.LC29(%rip), %rcx
	jmp	.L4721
	.p2align 4,,10
	.p2align 3
.L4822:
	movq	160(%rsp), %rax
	xorl	%ebp, %ebp
	movq	%rax, 80(%rsp)
	movl	168(%rsp), %eax
	movl	%eax, 88(%rsp)
	jmp	.L4824
	.p2align 4,,10
	.p2align 3
.L4840:
	movzbl	256(%rsp,%rax), %eax
	jmp	.L4841
	.p2align 4,,10
	.p2align 3
.L4883:
	movl	$43, %eax
.L4819:
	movb	%al, -1(%rsi)
	subq	$1, %rsi
	jmp	.L4820
.L4750:
	cmpl	$9, %esi
	jbe	.L4864
	movl	%esi, %ecx
	movl	$1, %edi
	movabsq	$3777893186295716171, %r9
	jmp	.L4772
	.p2align 4,,10
	.p2align 3
.L4768:
	cmpl	$999, %ecx
	jbe	.L4961
	cmpl	$9999, %ecx
	jbe	.L4962
	movl	%ecx, %eax
	addl	$4, %edi
	mulq	%r9
	shrq	$11, %rdx
	cmpl	$99999, %ecx
	jbe	.L4769
	movl	%edx, %ecx
.L4772:
	cmpl	$99, %ecx
	ja	.L4768
	addl	$1, %edi
.L4769:
	movl	%edi, %eax
	cmpl	$32, %edi
	ja	.L4963
.L4767:
	leaq	275(%rsp), %rbx
	movl	%esi, %edx
	movl	%edi, %esi
	movq	%rax, 16(%rsp)
	movq	%rbx, %rdi
	movl	%r8d, (%rsp)
	call	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movq	16(%rsp), %rax
	movl	(%rsp), %r8d
	leaq	(%rbx,%rax), %rdx
.L4937:
	movq	%rbx, %rsi
	jmp	.L4765
	.p2align 4,,10
	.p2align 3
.L4957:
	leaq	80(%rsp), %rcx
	movl	$1, %eax
	movb	%sil, 80(%rsp)
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%r15, %rcx
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE.constprop.0
	jmp	.L4705
	.p2align 4,,10
	.p2align 3
.L4956:
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%r10, (%rsp)
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
	movq	(%rsp), %r10
	jmp	.L4851
	.p2align 4,,10
	.p2align 3
.L4887:
	leaq	275(%rsp), %r15
	leaq	274(%rsp), %rbx
	jmp	.L4836
	.p2align 4,,10
	.p2align 3
.L4790:
	testl	%esi, %esi
	jne	.L4801
	movb	$48, 275(%rsp)
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
.L4802:
	movzbl	160(%rsp), %eax
	movq	%rbx, %rsi
	jmp	.L4800
	.p2align 4,,10
	.p2align 3
.L4789:
	cmpb	$40, %cl
	je	.L4964
	testl	%esi, %esi
	jne	.L4814
	movb	$48, 275(%rsp)
	cmpb	$48, %cl
	je	.L4878
	leaq	.LC37(%rip), %r9
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
.L4813:
	movzbl	160(%rsp), %eax
	testb	$16, %al
	jne	.L4881
.L4939:
	movq	%rbx, %rsi
	jmp	.L4800
	.p2align 4,,10
	.p2align 3
.L4788:
	testl	%esi, %esi
	je	.L4810
	leaq	275(%rsp), %rbx
	movl	%esi, %edx
	leaq	307(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	leaq	.LC39(%rip), %r9
	movl	$1, %ecx
	movq	%rax, %rdx
.L4811:
	movzbl	160(%rsp), %eax
	movq	%rbx, %rsi
	testb	$16, %al
	je	.L4800
	movq	%rcx, %rsi
	negq	%rsi
	jmp	.L4799
	.p2align 4,,10
	.p2align 3
.L4953:
	movl	$32, %eax
	jmp	.L4819
.L4825:
	leaq	1(%rsi), %rax
	cmpq	%rax, %rdx
	jne	.L4965
.L4827:
	orb	$64, 160(%rsp)
	movq	%rax, %rsi
	xorl	%ebp, %ebp
	movq	160(%rsp), %rdx
	movq	%rdx, 80(%rsp)
	movl	168(%rsp), %edx
	movl	%edx, 88(%rsp)
	jmp	.L4824
.L4746:
	cmpb	$1, %al
	jbe	.L4750
	leaq	.LC35(%rip), %r10
	cmpb	$16, %cl
	leaq	.LC36(%rip), %rax
	cmovne	%rax, %r10
.L4858:
	bsrl	%esi, %ecx
	movl	$32, %eax
	xorl	$31, %ecx
	subl	%ecx, %eax
	cltq
	cmpl	$1, %esi
	je	.L4966
	movl	$31, %edx
	leaq	275(%rsp), %rbx
	subl	%ecx, %edx
	leaq	274(%rsp,%rdx), %rdi
	leaq	(%rbx,%rdx), %r9
	movl	$30, %edx
	subl	%ecx, %edx
	subq	%rdx, %rdi
	.p2align 5
	.p2align 4
	.p2align 3
.L4762:
	movl	%esi, %ecx
	subq	$1, %r9
	shrl	%esi
	andl	$1, %ecx
	addl	$48, %ecx
	movb	%cl, 1(%r9)
	cmpq	%r9, %rdi
	jne	.L4762
.L4763:
	leaq	(%rbx,%rax), %rdx
	movl	$49, %eax
	jmp	.L4760
.L4958:
	movb	$43, -1(%rsi)
	jmp	.L4785
.L4753:
	testl	%r8d, %r8d
	je	.L4938
.L4747:
	leaq	275(%rsp), %rbx
	movl	%esi, %edx
	movl	%r8d, (%rsp)
	leaq	307(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail12__to_chars_8IjEESt15to_chars_resultPcS2_T_
	movl	(%rsp), %r8d
	leaq	.LC39(%rip), %r10
	movq	%rax, %rdx
	movl	$1, %eax
	jmp	.L4774
.L4737:
	movq	%rbx, %rsi
	movq	%r8, (%rsp)
	movq	%r9, 8(%rsp)
	call	_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.part.0.isra.0
	movq	(%rsp), %r8
	movq	8(%rsp), %r9
	movq	%rax, %rdi
.L4736:
	cmpq	$3, %rdi
	jbe	.L4739
	leaq	272(%rsp), %rax
	leaq	16+_ZTVNSt8__format14_Fixedbuf_sinkIcEE(%rip), %rcx
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%rax, %xmm1
	movq	%rcx, %xmm0
	leaq	160(%rsp), %rdi
	movl	$15, %ecx
	punpcklqdq	%xmm1, %xmm0
	movq	%rax, 184(%rsp)
	movq	$12, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	call	_ZNSt8__format15__write_escapedIcNS_10_Sink_iterIcEEEET0_S3_St17basic_string_viewIT_St11char_traitsIS5_EENS_10_Term_charE
	movq	168(%rsp), %rax
	movq	%r15, %r8
	movq	%rbx, %rcx
	movq	184(%rsp), %rdx
	movl	$1, %r9d
	movq	%rax, %rdi
	subq	%rax, %rdx
	cmpb	$92, 1(%rax)
	movl	$3, %eax
	movq	%rdx, %rsi
	cmovne	%rax, %rdx
	movq	%rsi, %rax
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__format22__write_padded_as_specIcNS_10_Sink_iterIcEEEET0_St17basic_string_viewINSt13type_identityIT_E4typeESt11char_traitsIS8_EEmRSt20basic_format_contextIS3_S6_ERKNS_5_SpecIS6_EENS_6_AlignE
.LEHE106:
	jmp	.L4941
.L4754:
	cmpb	$40, %cl
	je	.L4967
	testl	%r8d, %r8d
	jne	.L4752
	movb	$48, 275(%rsp)
	cmpb	$48, %cl
	je	.L4868
	leaq	.LC37(%rip), %r10
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
.L4777:
	testb	$16, 80(%rsp)
	jne	.L4871
	jmp	.L4937
.L4801:
	cmpl	$9, %esi
	jbe	.L4875
	movl	%esi, %ecx
	movl	$1, %edi
	movabsq	$3777893186295716171, %r8
	jmp	.L4808
	.p2align 4,,10
	.p2align 3
.L4804:
	cmpl	$999, %ecx
	jbe	.L4968
	cmpl	$9999, %ecx
	jbe	.L4969
	movl	%ecx, %eax
	addl	$4, %edi
	mulq	%r8
	shrq	$11, %rdx
	cmpl	$99999, %ecx
	jbe	.L4805
	movl	%edx, %ecx
.L4808:
	cmpl	$99, %ecx
	ja	.L4804
	addl	$1, %edi
.L4805:
	movl	%edi, %eax
	cmpl	$32, %edi
	ja	.L4970
.L4803:
	leaq	275(%rsp), %rbx
	movl	%esi, %edx
	movl	%edi, %esi
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	call	_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_
	movq	(%rsp), %rax
	leaq	(%rbx,%rax), %rdx
	jmp	.L4802
.L4952:
	bsrl	%esi, %edi
	movl	$32, %eax
	xorl	$31, %edi
	subl	%edi, %eax
	cltq
	cmpl	$1, %esi
	je	.L4971
	movl	$31, %edx
	leaq	275(%rsp), %rbx
	subl	%edi, %edx
	leaq	274(%rsp,%rdx), %r8
	leaq	(%rbx,%rdx), %rcx
	movl	$30, %edx
	subl	%edi, %edx
	subq	%rdx, %r8
	.p2align 5
	.p2align 4
	.p2align 3
.L4797:
	movl	%esi, %edi
	subq	$1, %rcx
	shrl	%esi
	andl	$1, %edi
	addl	$48, %edi
	movb	%dil, 1(%rcx)
	cmpq	%rcx, %r8
	jne	.L4797
.L4798:
	leaq	(%rbx,%rax), %rdx
	movl	$49, %eax
	jmp	.L4795
.L4810:
	leaq	275(%rsp), %rbx
	movb	$48, 275(%rsp)
	movzbl	160(%rsp), %eax
	leaq	276(%rsp), %rdx
	movq	%rbx, %rsi
	jmp	.L4800
.L4885:
	xorl	%eax, %eax
	jmp	.L4828
.L4965:
	cmpb	$125, 1(%rsi)
	je	.L4827
	movq	%rax, %rsi
	movl	$1, %eax
	jmp	.L4826
	.p2align 4,,10
	.p2align 3
.L4829:
	leaq	1(%rax), %rdi
	xorl	%eax, %eax
.L4832:
	cmpq	%rdi, %rdx
	je	.L4886
	movzbl	1(%rsi), %ecx
	movq	%rdi, %rsi
	jmp	.L4831
.L4964:
	testl	%esi, %esi
	jne	.L4812
	movb	$48, 275(%rsp)
	leaq	.LC38(%rip), %r9
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
	jmp	.L4813
.L4814:
	leaq	275(%rsp), %rbx
	movl	%esi, %edx
	movb	%cl, (%rsp)
	leaq	307(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	movq	%rax, %rdx
	cmpb	$48, (%rsp)
	jne	.L4879
	cmpq	%rbx, %rax
	je	.L4880
.L4815:
	movq	%rbx, %rcx
	.p2align 4
	.p2align 3
.L4816:
	movsbl	(%rcx), %edi
	movq	%rdx, 16(%rsp)
	movq	%rcx, (%rsp)
	call	toupper@PLT
	movq	(%rsp), %rcx
	movq	16(%rsp), %rdx
	movb	%al, (%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.L4816
.L4880:
	leaq	.LC37(%rip), %r9
	movl	$2, %ecx
	jmp	.L4811
.L4947:
	leaq	24(%rbp), %rsi
	cmpb	$0, 32(%rbp)
	je	.L4972
.L4706:
	leaq	80(%rsp), %r14
	movq	%r14, %rdi
	call	_ZNSt6localeC1ERKS_@PLT
	leaq	_ZNSt7__cxx118numpunctIcE2idE(%rip), %rdi
	call	_ZNKSt6locale2id5_M_idEv@PLT
	movq	%rax, %rdx
	movq	80(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rdx,8), %rsi
	testq	%rsi, %rsi
	je	.L4707
	movq	%r14, %rdi
	movq	%rsi, (%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	(%rsp), %rsi
	movq	(%rsi), %rax
	testb	%bl, %bl
	je	.L4973
	leaq	224(%rsp), %rdi
.LEHB107:
	call	*40(%rax)
.LEHE107:
.L4711:
	movq	192(%rsp), %rax
	movq	%rax, %r8
	cmpq	%r12, %rax
	je	.L4974
	movq	224(%rsp), %rcx
	leaq	240(%rsp), %rdx
	cmpq	%rdx, %rcx
	je	.L4855
	movq	208(%rsp), %rsi
	movq	%rcx, 192(%rsp)
	movq	232(%rsp), %xmm0
	movhps	240(%rsp), %xmm0
	movups	%xmm0, 200(%rsp)
	testq	%rax, %rax
	je	.L4718
	movq	%rax, 224(%rsp)
	movq	%rsi, 240(%rsp)
.L4717:
	movb	$0, (%rax)
	movq	224(%rsp), %rdi
	cmpq	%rdx, %rdi
	je	.L4940
	movq	240(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L4940
.L4954:
	leaq	1(%rsi), %rdi
	movl	$1, %eax
	jmp	.L4832
.L4959:
	movl	$2, %eax
	movq	%r8, 40(%rsp)
	cmpq	%rax, %r14
	movq	%r10, 16(%rsp)
	cmovbe	%r14, %rax
	movq	%rdi, (%rsp)
	movq	%rcx, 48(%rsp)
	movq	%rax, %rsi
	movq	%rbx, 56(%rsp)
.LEHB108:
	call	_ZNSt8__format5_SinkIcE8_M_writeESt17basic_string_viewIcSt11char_traitsIcEE
.LEHE108:
	movq	40(%rsp), %r8
	movq	16(%rsp), %r10
	movq	(%rsp), %rdi
	jmp	.L4852
.L4967:
	testl	%r8d, %r8d
	jne	.L4775
	movzbl	80(%rsp), %eax
	movb	$48, 275(%rsp)
	testb	$16, %al
	je	.L4766
	movq	$-2, %rsi
	leaq	276(%rsp), %rdx
	leaq	.LC38(%rip), %r10
	movl	$2, %eax
	leaq	275(%rsp), %rbx
	jmp	.L4764
.L4812:
	leaq	275(%rsp), %rbx
	movl	%esi, %edx
	leaq	307(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	leaq	.LC38(%rip), %r9
	movq	%rax, %rdx
	jmp	.L4813
.L4973:
	leaq	224(%rsp), %rdi
.LEHB109:
	call	*48(%rax)
.LEHE109:
	jmp	.L4711
.L4868:
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
	jmp	.L4776
.L4878:
	leaq	276(%rsp), %rdx
	leaq	275(%rsp), %rbx
	jmp	.L4815
.L4960:
	movl	%r8d, (%rsp)
	movl	%esi, %edx
	leaq	275(%rsp), %rbx
	leaq	307(%rsp), %rsi
.L4936:
	movq	%rbx, %rdi
	call	_ZNSt8__detail13__to_chars_16IjEESt15to_chars_resultPcS2_T_
	movl	(%rsp), %r8d
	leaq	.LC38(%rip), %r10
	movq	%rax, %rdx
	jmp	.L4777
.L4968:
	addl	$2, %edi
	jmp	.L4805
.L4961:
	addl	$2, %edi
	jmp	.L4769
.L4879:
	leaq	.LC37(%rip), %r9
	jmp	.L4813
.L4869:
	leaq	.LC37(%rip), %r10
	jmp	.L4777
.L4969:
	addl	$3, %edi
	jmp	.L4805
.L4962:
	addl	$3, %edi
	jmp	.L4769
.L4972:
	movq	%rsi, %rdi
	movq	%rsi, (%rsp)
	call	_ZNSt6localeC1Ev@PLT
	movb	$1, 32(%rbp)
	movq	(%rsp), %rsi
	jmp	.L4706
.L4974:
	movq	224(%rsp), %rax
	leaq	240(%rsp), %rdx
	cmpq	%rdx, %rax
	je	.L4855
	movq	%rax, 192(%rsp)
	movq	232(%rsp), %xmm0
	movhps	240(%rsp), %xmm0
	movups	%xmm0, 200(%rsp)
.L4718:
	movq	%rdx, 224(%rsp)
	leaq	240(%rsp), %rdx
	movq	%rdx, %rax
	jmp	.L4717
.L4855:
	movq	232(%rsp), %rax
	testq	%rax, %rax
	je	.L4714
	cmpq	$1, %rax
	je	.L4975
	movl	%eax, %ecx
	movq	%r8, %rdi
	movq	%rdx, %rsi
	rep movsb
.L4716:
	movq	232(%rsp), %rax
	movq	192(%rsp), %r8
.L4714:
	movq	%rax, 200(%rsp)
	movb	$0, (%r8,%rax)
	movq	224(%rsp), %rax
	jmp	.L4717
.L4966:
	leaq	275(%rsp), %rbx
	jmp	.L4763
.L4971:
	leaq	275(%rsp), %rbx
	jmp	.L4798
.L4963:
	leaq	307(%rsp), %rdx
	leaq	275(%rsp), %rbx
	jmp	.L4937
.L4970:
	leaq	307(%rsp), %rdx
	leaq	275(%rsp), %rbx
	jmp	.L4802
.L4886:
	movq	%rdx, %rsi
	jmp	.L4828
.L4724:
	movq	%r14, %rdi
	call	_ZNSt6localeD1Ev@PLT
.L4725:
	movq	192(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L4726
	movq	208(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4726:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	je	.L4727
.L4944:
	call	__stack_chk_fail@PLT
.L4775:
	movl	%r8d, (%rsp)
	leaq	307(%rsp), %rsi
	leaq	275(%rsp), %rbx
	movl	%r8d, %edx
	jmp	.L4936
.L4975:
	movzbl	240(%rsp), %eax
	movb	%al, (%r8)
	jmp	.L4716
.L4864:
	movl	$1, %eax
	movl	$1, %edi
	jmp	.L4767
.L4875:
	movl	$1, %eax
	movl	$1, %edi
	jmp	.L4803
.L4946:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
	leaq	.LC54(%rip), %rdi
.LEHB110:
	call	_ZSt20__throw_format_errorPKc
.L4955:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
	call	_ZNSt8__format29__failed_to_parse_format_specEv
.L4948:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
	leaq	.LC55(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.LEHE110:
.L4707:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
.LEHB111:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE111:
.L4679:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
.LEHB112:
	call	_ZNSt8__format33__invalid_arg_id_in_format_stringEv
.L4890:
	endbr64
	movq	%rax, %rbx
	jmp	.L4724
.L4889:
	endbr64
	movq	%rax, %rbx
	jmp	.L4725
.L4742:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L4944
	leaq	.LC40(%rip), %rdi
	call	_ZSt20__throw_format_errorPKc
.L4727:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE112:
	.cfi_endproc
.LFE6005:
	.section	.gcc_except_table
.LLSDA6005:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6005-.LLSDACSB6005
.LLSDACSB6005:
	.uleb128 .LEHB104-.LFB6005
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB6005
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L4889-.LFB6005
	.uleb128 0
	.uleb128 .LEHB106-.LFB6005
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB6005
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L4889-.LFB6005
	.uleb128 0
	.uleb128 .LEHB108-.LFB6005
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB6005
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L4889-.LFB6005
	.uleb128 0
	.uleb128 .LEHB110-.LFB6005
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB111-.LFB6005
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L4890-.LFB6005
	.uleb128 0
	.uleb128 .LEHB112-.LFB6005
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
.LLSDACSE6005:
	.section	.text._ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,"axG",@progbits,_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm,comdat
	.size	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm, .-_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm
	.section	.rodata
	.align 32
	.type	CSWTCH.759, @object
	.size	CSWTCH.759, 56
CSWTCH.759:
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	2
	.weak	_ZTSNSt8__format14_Fixedbuf_sinkIcEE
	.section	.rodata._ZTSNSt8__format14_Fixedbuf_sinkIcEE,"aG",@progbits,_ZTSNSt8__format14_Fixedbuf_sinkIcEE,comdat
	.align 32
	.type	_ZTSNSt8__format14_Fixedbuf_sinkIcEE, @object
	.size	_ZTSNSt8__format14_Fixedbuf_sinkIcEE, 33
_ZTSNSt8__format14_Fixedbuf_sinkIcEE:
	.string	"NSt8__format14_Fixedbuf_sinkIcEE"
	.weak	_ZTINSt8__format14_Fixedbuf_sinkIcEE
	.section	.data.rel.ro._ZTINSt8__format14_Fixedbuf_sinkIcEE,"awG",@progbits,_ZTINSt8__format14_Fixedbuf_sinkIcEE,comdat
	.align 8
	.type	_ZTINSt8__format14_Fixedbuf_sinkIcEE, @object
	.size	_ZTINSt8__format14_Fixedbuf_sinkIcEE, 24
_ZTINSt8__format14_Fixedbuf_sinkIcEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format14_Fixedbuf_sinkIcEE
	.quad	_ZTINSt8__format5_SinkIcEE
	.weak	_ZTVNSt8__format14_Fixedbuf_sinkIcEE
	.section	.data.rel.ro.local._ZTVNSt8__format14_Fixedbuf_sinkIcEE,"awG",@progbits,_ZTVNSt8__format14_Fixedbuf_sinkIcEE,comdat
	.align 8
	.type	_ZTVNSt8__format14_Fixedbuf_sinkIcEE, @object
	.size	_ZTVNSt8__format14_Fixedbuf_sinkIcEE, 40
_ZTVNSt8__format14_Fixedbuf_sinkIcEE:
	.quad	0
	.quad	_ZTINSt8__format14_Fixedbuf_sinkIcEE
	.quad	_ZNSt8__format14_Fixedbuf_sinkIcE11_M_overflowEv
	.quad	_ZNSt8__format5_SinkIcE10_M_reserveEm
	.quad	_ZNSt8__format5_SinkIcE7_M_bumpEm
	.weak	_ZTSSt12format_error
	.section	.rodata._ZTSSt12format_error,"aG",@progbits,_ZTSSt12format_error,comdat
	.align 16
	.type	_ZTSSt12format_error, @object
	.size	_ZTSSt12format_error, 17
_ZTSSt12format_error:
	.string	"St12format_error"
	.weak	_ZTISt12format_error
	.section	.data.rel.ro._ZTISt12format_error,"awG",@progbits,_ZTISt12format_error,comdat
	.align 8
	.type	_ZTISt12format_error, @object
	.size	_ZTISt12format_error, 24
_ZTISt12format_error:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSSt12format_error
	.quad	_ZTISt13runtime_error
	.weak	_ZTSNSt8__format5_SinkIcEE
	.section	.rodata._ZTSNSt8__format5_SinkIcEE,"aG",@progbits,_ZTSNSt8__format5_SinkIcEE,comdat
	.align 16
	.type	_ZTSNSt8__format5_SinkIcEE, @object
	.size	_ZTSNSt8__format5_SinkIcEE, 23
_ZTSNSt8__format5_SinkIcEE:
	.string	"NSt8__format5_SinkIcEE"
	.weak	_ZTINSt8__format5_SinkIcEE
	.section	.data.rel.ro._ZTINSt8__format5_SinkIcEE,"awG",@progbits,_ZTINSt8__format5_SinkIcEE,comdat
	.align 8
	.type	_ZTINSt8__format5_SinkIcEE, @object
	.size	_ZTINSt8__format5_SinkIcEE, 16
_ZTINSt8__format5_SinkIcEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt8__format5_SinkIcEE
	.weak	_ZTSNSt8__format9_Buf_sinkIcEE
	.section	.rodata._ZTSNSt8__format9_Buf_sinkIcEE,"aG",@progbits,_ZTSNSt8__format9_Buf_sinkIcEE,comdat
	.align 16
	.type	_ZTSNSt8__format9_Buf_sinkIcEE, @object
	.size	_ZTSNSt8__format9_Buf_sinkIcEE, 27
_ZTSNSt8__format9_Buf_sinkIcEE:
	.string	"NSt8__format9_Buf_sinkIcEE"
	.weak	_ZTINSt8__format9_Buf_sinkIcEE
	.section	.data.rel.ro._ZTINSt8__format9_Buf_sinkIcEE,"awG",@progbits,_ZTINSt8__format9_Buf_sinkIcEE,comdat
	.align 8
	.type	_ZTINSt8__format9_Buf_sinkIcEE, @object
	.size	_ZTINSt8__format9_Buf_sinkIcEE, 24
_ZTINSt8__format9_Buf_sinkIcEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format9_Buf_sinkIcEE
	.quad	_ZTINSt8__format5_SinkIcEE
	.weak	_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.section	.rodata._ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,"aG",@progbits,_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,comdat
	.align 32
	.type	_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, @object
	.size	_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, 78
_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:
	.string	"NSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE"
	.weak	_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.section	.data.rel.ro._ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,"awG",@progbits,_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,comdat
	.align 8
	.type	_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, @object
	.size	_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, 24
_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.quad	_ZTINSt8__format9_Buf_sinkIcEE
	.weak	_ZTSNSt8__format8_ScannerIcEE
	.section	.rodata._ZTSNSt8__format8_ScannerIcEE,"aG",@progbits,_ZTSNSt8__format8_ScannerIcEE,comdat
	.align 16
	.type	_ZTSNSt8__format8_ScannerIcEE, @object
	.size	_ZTSNSt8__format8_ScannerIcEE, 26
_ZTSNSt8__format8_ScannerIcEE:
	.string	"NSt8__format8_ScannerIcEE"
	.weak	_ZTINSt8__format8_ScannerIcEE
	.section	.data.rel.ro._ZTINSt8__format8_ScannerIcEE,"awG",@progbits,_ZTINSt8__format8_ScannerIcEE,comdat
	.align 8
	.type	_ZTINSt8__format8_ScannerIcEE, @object
	.size	_ZTINSt8__format8_ScannerIcEE, 16
_ZTINSt8__format8_ScannerIcEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt8__format8_ScannerIcEE
	.weak	_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.section	.rodata._ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,"aG",@progbits,_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,comdat
	.align 32
	.type	_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, @object
	.size	_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, 57
_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE:
	.string	"NSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE"
	.weak	_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.section	.data.rel.ro._ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,"awG",@progbits,_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,comdat
	.align 8
	.type	_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, @object
	.size	_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, 24
_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.quad	_ZTINSt8__format8_ScannerIcEE
	.weak	_ZTVSt12format_error
	.section	.data.rel.ro._ZTVSt12format_error,"awG",@progbits,_ZTVSt12format_error,comdat
	.align 8
	.type	_ZTVSt12format_error, @object
	.size	_ZTVSt12format_error, 40
_ZTVSt12format_error:
	.quad	0
	.quad	_ZTISt12format_error
	.quad	_ZNSt12format_errorD1Ev
	.quad	_ZNSt12format_errorD0Ev
	.quad	_ZNKSt13runtime_error4whatEv
	.weak	_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.section	.data.rel.ro.local._ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,"awG",@progbits,_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE,comdat
	.align 8
	.type	_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, @object
	.size	_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, 40
_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:
	.quad	0
	.quad	_ZTINSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE
	.quad	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_overflowEv
	.quad	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10_M_reserveEm
	.quad	_ZNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_bumpEm
	.weak	_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.section	.data.rel.ro.local._ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,"awG",@progbits,_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE,comdat
	.align 8
	.type	_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, @object
	.size	_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE, 32
_ZTVNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE:
	.quad	0
	.quad	_ZTINSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE
	.quad	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE11_M_on_charsEPKc
	.quad	_ZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEm
	.weak	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE
	.section	.rodata._ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE,"aG",@progbits,_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE,comdat
	.align 32
	.type	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE, @gnu_unique_object
	.size	_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE, 256
_ZNSt8__detail31__from_chars_alnum_to_val_tableILb0EE5valueE:
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.weak	_ZNSt9__unicode9__v16_0_014__xpicto_edgesE
	.section	.rodata._ZNSt9__unicode9__v16_0_014__xpicto_edgesE,"aG",@progbits,_ZNSt9__unicode9__v16_0_014__xpicto_edgesE,comdat
	.align 32
	.type	_ZNSt9__unicode9__v16_0_014__xpicto_edgesE, @gnu_unique_object
	.size	_ZNSt9__unicode9__v16_0_014__xpicto_edgesE, 624
_ZNSt9__unicode9__v16_0_014__xpicto_edgesE:
	.long	169
	.long	170
	.long	174
	.long	175
	.long	8252
	.long	8253
	.long	8265
	.long	8266
	.long	8482
	.long	8483
	.long	8505
	.long	8506
	.long	8596
	.long	8602
	.long	8617
	.long	8619
	.long	8986
	.long	8988
	.long	9000
	.long	9001
	.long	9096
	.long	9097
	.long	9167
	.long	9168
	.long	9193
	.long	9204
	.long	9208
	.long	9211
	.long	9410
	.long	9411
	.long	9642
	.long	9644
	.long	9654
	.long	9655
	.long	9664
	.long	9665
	.long	9723
	.long	9727
	.long	9728
	.long	9734
	.long	9735
	.long	9747
	.long	9748
	.long	9862
	.long	9872
	.long	9990
	.long	9992
	.long	10003
	.long	10004
	.long	10005
	.long	10006
	.long	10007
	.long	10013
	.long	10014
	.long	10017
	.long	10018
	.long	10024
	.long	10025
	.long	10035
	.long	10037
	.long	10052
	.long	10053
	.long	10055
	.long	10056
	.long	10060
	.long	10061
	.long	10062
	.long	10063
	.long	10067
	.long	10070
	.long	10071
	.long	10072
	.long	10083
	.long	10088
	.long	10133
	.long	10136
	.long	10145
	.long	10146
	.long	10160
	.long	10161
	.long	10175
	.long	10176
	.long	10548
	.long	10550
	.long	11013
	.long	11016
	.long	11035
	.long	11037
	.long	11088
	.long	11089
	.long	11093
	.long	11094
	.long	12336
	.long	12337
	.long	12349
	.long	12350
	.long	12951
	.long	12952
	.long	12953
	.long	12954
	.long	126976
	.long	127232
	.long	127245
	.long	127248
	.long	127279
	.long	127280
	.long	127340
	.long	127346
	.long	127358
	.long	127360
	.long	127374
	.long	127375
	.long	127377
	.long	127387
	.long	127405
	.long	127462
	.long	127489
	.long	127504
	.long	127514
	.long	127515
	.long	127535
	.long	127536
	.long	127538
	.long	127547
	.long	127548
	.long	127552
	.long	127561
	.long	127995
	.long	128000
	.long	128318
	.long	128326
	.long	128592
	.long	128640
	.long	128768
	.long	128884
	.long	128896
	.long	128981
	.long	129024
	.long	129036
	.long	129040
	.long	129096
	.long	129104
	.long	129114
	.long	129120
	.long	129160
	.long	129168
	.long	129198
	.long	129280
	.long	129292
	.long	129339
	.long	129340
	.long	129350
	.long	129351
	.long	129792
	.long	130048
	.long	131070
	.weak	_ZNSt9__unicode9__v16_0_012__incb_edgesE
	.section	.rodata._ZNSt9__unicode9__v16_0_012__incb_edgesE,"aG",@progbits,_ZNSt9__unicode9__v16_0_012__incb_edgesE,comdat
	.align 32
	.type	_ZNSt9__unicode9__v16_0_012__incb_edgesE, @gnu_unique_object
	.size	_ZNSt9__unicode9__v16_0_012__incb_edgesE, 3160
_ZNSt9__unicode9__v16_0_012__incb_edgesE:
	.long	3074
	.long	3520
	.long	4622
	.long	4648
	.long	5702
	.long	5880
	.long	5886
	.long	5888
	.long	5894
	.long	5900
	.long	5906
	.long	5912
	.long	5918
	.long	5920
	.long	6210
	.long	6252
	.long	6446
	.long	6528
	.long	6594
	.long	6596
	.long	7002
	.long	7028
	.long	7038
	.long	7060
	.long	7070
	.long	7076
	.long	7082
	.long	7096
	.long	7238
	.long	7240
	.long	7362
	.long	7468
	.long	7834
	.long	7876
	.long	8110
	.long	8144
	.long	8182
	.long	8184
	.long	8282
	.long	8296
	.long	8302
	.long	8336
	.long	8342
	.long	8352
	.long	8358
	.long	8376
	.long	8550
	.long	8560
	.long	8798
	.long	8832
	.long	9002
	.long	9096
	.long	9102
	.long	9228
	.long	9301
	.long	9450
	.long	9452
	.long	9458
	.long	9460
	.long	9478
	.long	9508
	.long	9542
	.long	9569
	.long	9600
	.long	9610
	.long	9616
	.long	9697
	.long	9728
	.long	9734
	.long	9736
	.long	9813
	.long	9892
	.long	9897
	.long	9924
	.long	9929
	.long	9932
	.long	9945
	.long	9960
	.long	9970
	.long	9972
	.long	9978
	.long	9980
	.long	9990
	.long	10004
	.long	10078
	.long	10080
	.long	10097
	.long	10104
	.long	10109
	.long	10112
	.long	10122
	.long	10128
	.long	10177
	.long	10184
	.long	10234
	.long	10236
	.long	10246
	.long	10252
	.long	10482
	.long	10484
	.long	10502
	.long	10508
	.long	10526
	.long	10532
	.long	10542
	.long	10552
	.long	10566
	.long	10568
	.long	10690
	.long	10696
	.long	10710
	.long	10712
	.long	10758
	.long	10764
	.long	10837
	.long	10916
	.long	10921
	.long	10948
	.long	10953
	.long	10960
	.long	10965
	.long	10984
	.long	10994
	.long	10996
	.long	11014
	.long	11032
	.long	11038
	.long	11044
	.long	11146
	.long	11152
	.long	11237
	.long	11242
	.long	11264
	.long	11270
	.long	11272
	.long	11349
	.long	11428
	.long	11433
	.long	11460
	.long	11465
	.long	11472
	.long	11477
	.long	11496
	.long	11506
	.long	11508
	.long	11514
	.long	11520
	.long	11526
	.long	11540
	.long	11606
	.long	11616
	.long	11633
	.long	11640
	.long	11645
	.long	11648
	.long	11658
	.long	11664
	.long	11717
	.long	11720
	.long	11786
	.long	11788
	.long	12026
	.long	12028
	.long	12034
	.long	12036
	.long	12086
	.long	12088
	.long	12126
	.long	12128
	.long	12290
	.long	12292
	.long	12306
	.long	12308
	.long	12373
	.long	12452
	.long	12457
	.long	12520
	.long	12530
	.long	12532
	.long	12538
	.long	12548
	.long	12570
	.long	12580
	.long	12586
	.long	12596
	.long	12630
	.long	12636
	.long	12641
	.long	12652
	.long	12682
	.long	12688
	.long	12806
	.long	12808
	.long	13042
	.long	13044
	.long	13054
	.long	13060
	.long	13066
	.long	13068
	.long	13082
	.long	13092
	.long	13098
	.long	13112
	.long	13142
	.long	13148
	.long	13194
	.long	13200
	.long	13314
	.long	13320
	.long	13397
	.long	13550
	.long	13556
	.long	13562
	.long	13564
	.long	13574
	.long	13588
	.long	13662
	.long	13664
	.long	13706
	.long	13712
	.long	13830
	.long	13832
	.long	14122
	.long	14124
	.long	14142
	.long	14144
	.long	14154
	.long	14164
	.long	14170
	.long	14172
	.long	14206
	.long	14208
	.long	14534
	.long	14536
	.long	14546
	.long	14572
	.long	14622
	.long	14652
	.long	15046
	.long	15048
	.long	15058
	.long	15092
	.long	15138
	.long	15164
	.long	15458
	.long	15464
	.long	15574
	.long	15576
	.long	15582
	.long	15584
	.long	15590
	.long	15592
	.long	15814
	.long	15868
	.long	15874
	.long	15892
	.long	15898
	.long	15904
	.long	15926
	.long	15968
	.long	15974
	.long	16116
	.long	16154
	.long	16156
	.long	16566
	.long	16580
	.long	16586
	.long	16608
	.long	16614
	.long	16620
	.long	16630
	.long	16636
	.long	16738
	.long	16744
	.long	16762
	.long	16772
	.long	16838
	.long	16852
	.long	16906
	.long	16908
	.long	16918
	.long	16924
	.long	16950
	.long	16952
	.long	17014
	.long	17016
	.long	19830
	.long	19840
	.long	23626
	.long	23640
	.long	23754
	.long	23764
	.long	23882
	.long	23888
	.long	24010
	.long	24016
	.long	24274
	.long	24280
	.long	24286
	.long	24312
	.long	24346
	.long	24348
	.long	24358
	.long	24400
	.long	24438
	.long	24440
	.long	24622
	.long	24632
	.long	24638
	.long	24640
	.long	25110
	.long	25116
	.long	25254
	.long	25256
	.long	25730
	.long	25740
	.long	25758
	.long	25764
	.long	25802
	.long	25804
	.long	25830
	.long	25840
	.long	26718
	.long	26724
	.long	26734
	.long	26736
	.long	26970
	.long	26972
	.long	26978
	.long	27004
	.long	27010
	.long	27012
	.long	27018
	.long	27020
	.long	27030
	.long	27060
	.long	27086
	.long	27124
	.long	27134
	.long	27136
	.long	27330
	.long	27452
	.long	27650
	.long	27664
	.long	27858
	.long	27896
	.long	27914
	.long	27924
	.long	28078
	.long	28112
	.long	28162
	.long	28168
	.long	28298
	.long	28312
	.long	28322
	.long	28344
	.long	28570
	.long	28572
	.long	28578
	.long	28584
	.long	28598
	.long	28600
	.long	28606
	.long	28624
	.long	28850
	.long	28880
	.long	28890
	.long	28896
	.long	29506
	.long	29516
	.long	29522
	.long	29572
	.long	29578
	.long	29604
	.long	29622
	.long	29624
	.long	29650
	.long	29652
	.long	29666
	.long	29672
	.long	30466
	.long	30720
	.long	32822
	.long	32824
	.long	33602
	.long	33732
	.long	46014
	.long	46024
	.long	46590
	.long	46592
	.long	46978
	.long	47104
	.long	49322
	.long	49344
	.long	49766
	.long	49772
	.long	170430
	.long	170444
	.long	170450
	.long	170488
	.long	170618
	.long	170624
	.long	170946
	.long	170952
	.long	172042
	.long	172044
	.long	172058
	.long	172060
	.long	172078
	.long	172080
	.long	172182
	.long	172188
	.long	172210
	.long	172212
	.long	172818
	.long	172824
	.long	172930
	.long	173000
	.long	173054
	.long	173056
	.long	173210
	.long	173240
	.long	173342
	.long	173384
	.long	173390
	.long	173392
	.long	173570
	.long	173580
	.long	173774
	.long	173776
	.long	173786
	.long	173800
	.long	173810
	.long	173816
	.long	173826
	.long	173828
	.long	173974
	.long	173976
	.long	174246
	.long	174268
	.long	174278
	.long	174284
	.long	174294
	.long	174300
	.long	174350
	.long	174352
	.long	174386
	.long	174388
	.long	174578
	.long	174580
	.long	174786
	.long	174788
	.long	174794
	.long	174804
	.long	174814
	.long	174820
	.long	174842
	.long	174848
	.long	174854
	.long	174856
	.long	175026
	.long	175032
	.long	175066
	.long	175068
	.long	176022
	.long	176024
	.long	176034
	.long	176036
	.long	176054
	.long	176056
	.long	257146
	.long	257148
	.long	260098
	.long	260160
	.long	260226
	.long	260288
	.long	261754
	.long	261760
	.long	264182
	.long	264184
	.long	265090
	.long	265092
	.long	265690
	.long	265708
	.long	272390
	.long	272400
	.long	272406
	.long	272412
	.long	272434
	.long	272448
	.long	272610
	.long	272620
	.long	272638
	.long	272640
	.long	273302
	.long	273308
	.long	275602
	.long	275616
	.long	275878
	.long	275896
	.long	277166
	.long	277172
	.long	277490
	.long	277504
	.long	277786
	.long	277828
	.long	278026
	.long	278040
	.long	278534
	.long	278536
	.long	278754
	.long	278812
	.long	278978
	.long	278980
	.long	278990
	.long	278996
	.long	279038
	.long	279048
	.long	279246
	.long	279260
	.long	279270
	.long	279276
	.long	279306
	.long	279308
	.long	279554
	.long	279564
	.long	279710
	.long	279728
	.long	279734
	.long	279764
	.long	280014
	.long	280016
	.long	280066
	.long	280072
	.long	280282
	.long	280316
	.long	280322
	.long	280324
	.long	280358
	.long	280372
	.long	280382
	.long	280384
	.long	280766
	.long	280776
	.long	280786
	.long	280800
	.long	280826
	.long	280828
	.long	280838
	.long	280840
	.long	281470
	.long	281472
	.long	281486
	.long	281516
	.long	281602
	.long	281608
	.long	281838
	.long	281844
	.long	281850
	.long	281852
	.long	281858
	.long	281860
	.long	281910
	.long	281912
	.long	281950
	.long	281952
	.long	282010
	.long	282036
	.long	282050
	.long	282068
	.long	282338
	.long	282340
	.long	282350
	.long	282372
	.long	282378
	.long	282380
	.long	282390
	.long	282392
	.long	282398
	.long	282408
	.long	282426
	.long	282436
	.long	282442
	.long	282444
	.long	282502
	.long	282508
	.long	282850
	.long	282880
	.long	282890
	.long	282900
	.long	282906
	.long	282908
	.long	283002
	.long	283004
	.long	283330
	.long	283332
	.long	283342
	.long	283364
	.long	283370
	.long	283372
	.long	283382
	.long	283384
	.long	283390
	.long	283396
	.long	283402
	.long	283408
	.long	284350
	.long	284352
	.long	284362
	.long	284376
	.long	284402
	.long	284408
	.long	284414
	.long	284420
	.long	284530
	.long	284536
	.long	284878
	.long	284908
	.long	284918
	.long	284920
	.long	284926
	.long	284932
	.long	285358
	.long	285360
	.long	285366
	.long	285368
	.long	285378
	.long	285408
	.long	285814
	.long	285816
	.long	285822
	.long	285824
	.long	285834
	.long	285848
	.long	285854
	.long	285872
	.long	286910
	.long	286944
	.long	286950
	.long	286956
	.long	287938
	.long	287940
	.long	287982
	.long	287996
	.long	288014
	.long	288016
	.long	288594
	.long	288608
	.long	288618
	.long	288624
	.long	288642
	.long	288644
	.long	288774
	.long	288812
	.long	288974
	.long	288996
	.long	289006
	.long	289020
	.long	289054
	.long	289056
	.long	289094
	.long	289116
	.long	289126
	.long	289136
	.long	289322
	.long	289372
	.long	289378
	.long	289384
	.long	291010
	.long	291036
	.long	291042
	.long	291064
	.long	291070
	.long	291072
	.long	291402
	.long	291488
	.long	291498
	.long	291524
	.long	291530
	.long	291536
	.long	291542
	.long	291548
	.long	292038
	.long	292060
	.long	292074
	.long	292076
	.long	292082
	.long	292088
	.long	292094
	.long	292120
	.long	292126
	.long	292128
	.long	292418
	.long	292424
	.long	292438
	.long	292440
	.long	292446
	.long	292448
	.long	293838
	.long	293844
	.long	293890
	.long	293896
	.long	294106
	.long	294124
	.long	294146
	.long	294156
	.long	294250
	.long	294252
	.long	315650
	.long	315652
	.long	315678
	.long	315736
	.long	361594
	.long	361640
	.long	361654
	.long	361664
	.long	371650
	.long	371668
	.long	371906
	.long	371932
	.long	376126
	.long	376128
	.long	376382
	.long	376396
	.long	376722
	.long	376724
	.long	376770
	.long	376776
	.long	455286
	.long	455292
	.long	474114
	.long	474296
	.long	474306
	.long	474396
	.long	476566
	.long	476584
	.long	476598
	.long	476620
	.long	476654
	.long	476684
	.long	476694
	.long	476720
	.long	476842
	.long	476856
	.long	477450
	.long	477460
	.long	485378
	.long	485596
	.long	485614
	.long	485812
	.long	485846
	.long	485848
	.long	485906
	.long	485908
	.long	485998
	.long	486016
	.long	486022
	.long	486080
	.long	491522
	.long	491548
	.long	491554
	.long	491620
	.long	491630
	.long	491656
	.long	491662
	.long	491668
	.long	491674
	.long	491692
	.long	492094
	.long	492096
	.long	492738
	.long	492764
	.long	494266
	.long	494268
	.long	494514
	.long	494528
	.long	496562
	.long	496576
	.long	497594
	.long	497600
	.long	500546
	.long	500572
	.long	501010
	.long	501036
	.long	511982
	.long	512000
	.long	3670146
	.long	3670528
	.long	3671042
	.long	3672000
	.weak	_ZNSt9__unicode9__v16_0_014__incb_linkersE
	.section	.rodata._ZNSt9__unicode9__v16_0_014__incb_linkersE,"aG",@progbits,_ZNSt9__unicode9__v16_0_014__incb_linkersE,comdat
	.align 16
	.type	_ZNSt9__unicode9__v16_0_014__incb_linkersE, @gnu_unique_object
	.size	_ZNSt9__unicode9__v16_0_014__incb_linkersE, 24
_ZNSt9__unicode9__v16_0_014__incb_linkersE:
	.long	2381
	.long	2509
	.long	2765
	.long	2893
	.long	3149
	.long	3405
	.weak	_ZNSt9__unicode9__v16_0_011__gcb_edgesE
	.section	.rodata._ZNSt9__unicode9__v16_0_011__gcb_edgesE,"aG",@progbits,_ZNSt9__unicode9__v16_0_011__gcb_edgesE,comdat
	.align 32
	.type	_ZNSt9__unicode9__v16_0_011__gcb_edgesE, @gnu_unique_object
	.size	_ZNSt9__unicode9__v16_0_011__gcb_edgesE, 6868
_ZNSt9__unicode9__v16_0_011__gcb_edgesE:
	.long	1
	.long	162
	.long	177
	.long	211
	.long	225
	.long	512
	.long	2033
	.long	2560
	.long	2769
	.long	2784
	.long	12292
	.long	14080
	.long	18484
	.long	18592
	.long	22804
	.long	23520
	.long	23540
	.long	23552
	.long	23572
	.long	23600
	.long	23620
	.long	23648
	.long	23668
	.long	23680
	.long	24581
	.long	24672
	.long	24836
	.long	25008
	.long	25025
	.long	25040
	.long	25780
	.long	26112
	.long	26372
	.long	26384
	.long	28004
	.long	28117
	.long	28128
	.long	28148
	.long	28240
	.long	28276
	.long	28304
	.long	28324
	.long	28384
	.long	28917
	.long	28928
	.long	28948
	.long	28960
	.long	29444
	.long	29872
	.long	31332
	.long	31504
	.long	32436
	.long	32576
	.long	32724
	.long	32736
	.long	33124
	.long	33184
	.long	33204
	.long	33344
	.long	33364
	.long	33408
	.long	33428
	.long	33504
	.long	34196
	.long	34240
	.long	35077
	.long	35104
	.long	35188
	.long	35328
	.long	36004
	.long	36389
	.long	36404
	.long	36918
	.long	36928
	.long	37796
	.long	37814
	.long	37828
	.long	37840
	.long	37862
	.long	37908
	.long	38038
	.long	38100
	.long	38118
	.long	38144
	.long	38164
	.long	38272
	.long	38436
	.long	38464
	.long	38932
	.long	38950
	.long	38976
	.long	39876
	.long	39888
	.long	39908
	.long	39926
	.long	39956
	.long	40016
	.long	40054
	.long	40080
	.long	40118
	.long	40148
	.long	40160
	.long	40308
	.long	40320
	.long	40484
	.long	40512
	.long	40932
	.long	40944
	.long	40980
	.long	41014
	.long	41024
	.long	41924
	.long	41936
	.long	41958
	.long	42004
	.long	42032
	.long	42100
	.long	42128
	.long	42164
	.long	42208
	.long	42260
	.long	42272
	.long	42756
	.long	42784
	.long	42836
	.long	42848
	.long	43028
	.long	43062
	.long	43072
	.long	43972
	.long	43984
	.long	44006
	.long	44052
	.long	44128
	.long	44148
	.long	44182
	.long	44192
	.long	44214
	.long	44244
	.long	44256
	.long	44580
	.long	44608
	.long	44964
	.long	45056
	.long	45076
	.long	45094
	.long	45120
	.long	46020
	.long	46032
	.long	46052
	.long	46086
	.long	46100
	.long	46160
	.long	46198
	.long	46224
	.long	46262
	.long	46292
	.long	46304
	.long	46420
	.long	46464
	.long	46628
	.long	46656
	.long	47140
	.long	47152
	.long	48100
	.long	48118
	.long	48132
	.long	48150
	.long	48176
	.long	48230
	.long	48272
	.long	48294
	.long	48340
	.long	48352
	.long	48500
	.long	48512
	.long	49156
	.long	49174
	.long	49220
	.long	49232
	.long	50116
	.long	50128
	.long	50148
	.long	50198
	.long	50256
	.long	50276
	.long	50320
	.long	50340
	.long	50400
	.long	50516
	.long	50544
	.long	50724
	.long	50752
	.long	51220
	.long	51238
	.long	51264
	.long	52164
	.long	52176
	.long	52198
	.long	52212
	.long	52246
	.long	52260
	.long	52278
	.long	52304
	.long	52324
	.long	52368
	.long	52388
	.long	52448
	.long	52564
	.long	52592
	.long	52772
	.long	52800
	.long	53046
	.long	53056
	.long	53252
	.long	53286
	.long	53312
	.long	54196
	.long	54224
	.long	54244
	.long	54262
	.long	54292
	.long	54352
	.long	54374
	.long	54416
	.long	54438
	.long	54484
	.long	54501
	.long	54512
	.long	54644
	.long	54656
	.long	54820
	.long	54848
	.long	55316
	.long	55334
	.long	55360
	.long	56484
	.long	56496
	.long	56564
	.long	56582
	.long	56612
	.long	56656
	.long	56676
	.long	56688
	.long	56710
	.long	56820
	.long	56832
	.long	57126
	.long	57152
	.long	58132
	.long	58144
	.long	58166
	.long	58180
	.long	58288
	.long	58484
	.long	58608
	.long	60180
	.long	60192
	.long	60214
	.long	60228
	.long	60368
	.long	60548
	.long	60656
	.long	61828
	.long	61856
	.long	62292
	.long	62304
	.long	62324
	.long	62336
	.long	62356
	.long	62368
	.long	62438
	.long	62464
	.long	63252
	.long	63478
	.long	63492
	.long	63568
	.long	63588
	.long	63616
	.long	63700
	.long	63872
	.long	63892
	.long	64464
	.long	64612
	.long	64624
	.long	66260
	.long	66326
	.long	66340
	.long	66432
	.long	66452
	.long	66486
	.long	66516
	.long	66544
	.long	66918
	.long	66948
	.long	66976
	.long	67044
	.long	67088
	.long	67348
	.long	67408
	.long	67620
	.long	67632
	.long	67654
	.long	67668
	.long	67696
	.long	67796
	.long	67808
	.long	68052
	.long	68064
	.long	69639
	.long	71176
	.long	72329
	.long	73728
	.long	79316
	.long	79360
	.long	94500
	.long	94560
	.long	95012
	.long	95056
	.long	95524
	.long	95552
	.long	96036
	.long	96064
	.long	97092
	.long	97126
	.long	97140
	.long	97254
	.long	97380
	.long	97398
	.long	97428
	.long	97600
	.long	97748
	.long	97760
	.long	98484
	.long	98529
	.long	98548
	.long	98560
	.long	100436
	.long	100464
	.long	101012
	.long	101024
	.long	102916
	.long	102966
	.long	103028
	.long	103062
	.long	103104
	.long	103174
	.long	103204
	.long	103222
	.long	103316
	.long	103360
	.long	106868
	.long	106902
	.long	106932
	.long	106944
	.long	107862
	.long	107876
	.long	107894
	.long	107908
	.long	108016
	.long	108036
	.long	108048
	.long	108068
	.long	108080
	.long	108116
	.long	108246
	.long	108340
	.long	108496
	.long	108532
	.long	108544
	.long	109316
	.long	109808
	.long	110596
	.long	110662
	.long	110672
	.long	111428
	.long	111590
	.long	111652
	.long	111696
	.long	112308
	.long	112448
	.long	112644
	.long	112678
	.long	112688
	.long	113174
	.long	113188
	.long	113254
	.long	113284
	.long	113376
	.long	114276
	.long	114294
	.long	114308
	.long	114342
	.long	114388
	.long	114406
	.long	114420
	.long	114496
	.long	115270
	.long	115396
	.long	115526
	.long	115556
	.long	115584
	.long	118020
	.long	118064
	.long	118084
	.long	118294
	.long	118308
	.long	118416
	.long	118484
	.long	118496
	.long	118596
	.long	118608
	.long	118646
	.long	118660
	.long	118688
	.long	121860
	.long	122880
	.long	131249
	.long	131268
	.long	131290
	.long	131297
	.long	131328
	.long	131713
	.long	131824
	.long	132609
	.long	132864
	.long	134404
	.long	134928
	.long	184052
	.long	184096
	.long	186356
	.long	186368
	.long	187908
	.long	188416
	.long	197284
	.long	197376
	.long	199060
	.long	199088
	.long	681716
	.long	681776
	.long	681796
	.long	681952
	.long	682468
	.long	682496
	.long	683780
	.long	683808
	.long	688164
	.long	688176
	.long	688228
	.long	688240
	.long	688308
	.long	688320
	.long	688694
	.long	688724
	.long	688758
	.long	688768
	.long	688836
	.long	688848
	.long	690182
	.long	690208
	.long	691014
	.long	691268
	.long	691296
	.long	691716
	.long	692000
	.long	692212
	.long	692224
	.long	692836
	.long	692960
	.long	693364
	.long	693542
	.long	693556
	.long	693568
	.long	693767
	.long	694224
	.long	694276
	.long	694326
	.long	694336
	.long	695092
	.long	695110
	.long	695140
	.long	695206
	.long	695236
	.long	695270
	.long	695300
	.long	695312
	.long	695892
	.long	695904
	.long	696980
	.long	697078
	.long	697108
	.long	697142
	.long	697172
	.long	697200
	.long	697396
	.long	697408
	.long	697540
	.long	697558
	.long	697568
	.long	698308
	.long	698320
	.long	699140
	.long	699152
	.long	699172
	.long	699216
	.long	699252
	.long	699280
	.long	699364
	.long	699392
	.long	699412
	.long	699424
	.long	700086
	.long	700100
	.long	700134
	.long	700160
	.long	700246
	.long	700260
	.long	700272
	.long	704054
	.long	704084
	.long	704102
	.long	704132
	.long	704150
	.long	704176
	.long	704198
	.long	704212
	.long	704224
	.long	704523
	.long	704540
	.long	704971
	.long	704988
	.long	705419
	.long	705436
	.long	705867
	.long	705884
	.long	706315
	.long	706332
	.long	706763
	.long	706780
	.long	707211
	.long	707228
	.long	707659
	.long	707676
	.long	708107
	.long	708124
	.long	708555
	.long	708572
	.long	709003
	.long	709020
	.long	709451
	.long	709468
	.long	709899
	.long	709916
	.long	710347
	.long	710364
	.long	710795
	.long	710812
	.long	711243
	.long	711260
	.long	711691
	.long	711708
	.long	712139
	.long	712156
	.long	712587
	.long	712604
	.long	713035
	.long	713052
	.long	713483
	.long	713500
	.long	713931
	.long	713948
	.long	714379
	.long	714396
	.long	714827
	.long	714844
	.long	715275
	.long	715292
	.long	715723
	.long	715740
	.long	716171
	.long	716188
	.long	716619
	.long	716636
	.long	717067
	.long	717084
	.long	717515
	.long	717532
	.long	717963
	.long	717980
	.long	718411
	.long	718428
	.long	718859
	.long	718876
	.long	719307
	.long	719324
	.long	719755
	.long	719772
	.long	720203
	.long	720220
	.long	720651
	.long	720668
	.long	721099
	.long	721116
	.long	721547
	.long	721564
	.long	721995
	.long	722012
	.long	722443
	.long	722460
	.long	722891
	.long	722908
	.long	723339
	.long	723356
	.long	723787
	.long	723804
	.long	724235
	.long	724252
	.long	724683
	.long	724700
	.long	725131
	.long	725148
	.long	725579
	.long	725596
	.long	726027
	.long	726044
	.long	726475
	.long	726492
	.long	726923
	.long	726940
	.long	727371
	.long	727388
	.long	727819
	.long	727836
	.long	728267
	.long	728284
	.long	728715
	.long	728732
	.long	729163
	.long	729180
	.long	729611
	.long	729628
	.long	730059
	.long	730076
	.long	730507
	.long	730524
	.long	730955
	.long	730972
	.long	731403
	.long	731420
	.long	731851
	.long	731868
	.long	732299
	.long	732316
	.long	732747
	.long	732764
	.long	733195
	.long	733212
	.long	733643
	.long	733660
	.long	734091
	.long	734108
	.long	734539
	.long	734556
	.long	734987
	.long	735004
	.long	735435
	.long	735452
	.long	735883
	.long	735900
	.long	736331
	.long	736348
	.long	736779
	.long	736796
	.long	737227
	.long	737244
	.long	737675
	.long	737692
	.long	738123
	.long	738140
	.long	738571
	.long	738588
	.long	739019
	.long	739036
	.long	739467
	.long	739484
	.long	739915
	.long	739932
	.long	740363
	.long	740380
	.long	740811
	.long	740828
	.long	741259
	.long	741276
	.long	741707
	.long	741724
	.long	742155
	.long	742172
	.long	742603
	.long	742620
	.long	743051
	.long	743068
	.long	743499
	.long	743516
	.long	743947
	.long	743964
	.long	744395
	.long	744412
	.long	744843
	.long	744860
	.long	745291
	.long	745308
	.long	745739
	.long	745756
	.long	746187
	.long	746204
	.long	746635
	.long	746652
	.long	747083
	.long	747100
	.long	747531
	.long	747548
	.long	747979
	.long	747996
	.long	748427
	.long	748444
	.long	748875
	.long	748892
	.long	749323
	.long	749340
	.long	749771
	.long	749788
	.long	750219
	.long	750236
	.long	750667
	.long	750684
	.long	751115
	.long	751132
	.long	751563
	.long	751580
	.long	752011
	.long	752028
	.long	752459
	.long	752476
	.long	752907
	.long	752924
	.long	753355
	.long	753372
	.long	753803
	.long	753820
	.long	754251
	.long	754268
	.long	754699
	.long	754716
	.long	755147
	.long	755164
	.long	755595
	.long	755612
	.long	756043
	.long	756060
	.long	756491
	.long	756508
	.long	756939
	.long	756956
	.long	757387
	.long	757404
	.long	757835
	.long	757852
	.long	758283
	.long	758300
	.long	758731
	.long	758748
	.long	759179
	.long	759196
	.long	759627
	.long	759644
	.long	760075
	.long	760092
	.long	760523
	.long	760540
	.long	760971
	.long	760988
	.long	761419
	.long	761436
	.long	761867
	.long	761884
	.long	762315
	.long	762332
	.long	762763
	.long	762780
	.long	763211
	.long	763228
	.long	763659
	.long	763676
	.long	764107
	.long	764124
	.long	764555
	.long	764572
	.long	765003
	.long	765020
	.long	765451
	.long	765468
	.long	765899
	.long	765916
	.long	766347
	.long	766364
	.long	766795
	.long	766812
	.long	767243
	.long	767260
	.long	767691
	.long	767708
	.long	768139
	.long	768156
	.long	768587
	.long	768604
	.long	769035
	.long	769052
	.long	769483
	.long	769500
	.long	769931
	.long	769948
	.long	770379
	.long	770396
	.long	770827
	.long	770844
	.long	771275
	.long	771292
	.long	771723
	.long	771740
	.long	772171
	.long	772188
	.long	772619
	.long	772636
	.long	773067
	.long	773084
	.long	773515
	.long	773532
	.long	773963
	.long	773980
	.long	774411
	.long	774428
	.long	774859
	.long	774876
	.long	775307
	.long	775324
	.long	775755
	.long	775772
	.long	776203
	.long	776220
	.long	776651
	.long	776668
	.long	777099
	.long	777116
	.long	777547
	.long	777564
	.long	777995
	.long	778012
	.long	778443
	.long	778460
	.long	778891
	.long	778908
	.long	779339
	.long	779356
	.long	779787
	.long	779804
	.long	780235
	.long	780252
	.long	780683
	.long	780700
	.long	781131
	.long	781148
	.long	781579
	.long	781596
	.long	782027
	.long	782044
	.long	782475
	.long	782492
	.long	782923
	.long	782940
	.long	783371
	.long	783388
	.long	783819
	.long	783836
	.long	784267
	.long	784284
	.long	784715
	.long	784732
	.long	785163
	.long	785180
	.long	785611
	.long	785628
	.long	786059
	.long	786076
	.long	786507
	.long	786524
	.long	786955
	.long	786972
	.long	787403
	.long	787420
	.long	787851
	.long	787868
	.long	788299
	.long	788316
	.long	788747
	.long	788764
	.long	789195
	.long	789212
	.long	789643
	.long	789660
	.long	790091
	.long	790108
	.long	790539
	.long	790556
	.long	790987
	.long	791004
	.long	791435
	.long	791452
	.long	791883
	.long	791900
	.long	792331
	.long	792348
	.long	792779
	.long	792796
	.long	793227
	.long	793244
	.long	793675
	.long	793692
	.long	794123
	.long	794140
	.long	794571
	.long	794588
	.long	795019
	.long	795036
	.long	795467
	.long	795484
	.long	795915
	.long	795932
	.long	796363
	.long	796380
	.long	796811
	.long	796828
	.long	797259
	.long	797276
	.long	797707
	.long	797724
	.long	798155
	.long	798172
	.long	798603
	.long	798620
	.long	799051
	.long	799068
	.long	799499
	.long	799516
	.long	799947
	.long	799964
	.long	800395
	.long	800412
	.long	800843
	.long	800860
	.long	801291
	.long	801308
	.long	801739
	.long	801756
	.long	802187
	.long	802204
	.long	802635
	.long	802652
	.long	803083
	.long	803100
	.long	803531
	.long	803548
	.long	803979
	.long	803996
	.long	804427
	.long	804444
	.long	804875
	.long	804892
	.long	805323
	.long	805340
	.long	805771
	.long	805788
	.long	806219
	.long	806236
	.long	806667
	.long	806684
	.long	807115
	.long	807132
	.long	807563
	.long	807580
	.long	808011
	.long	808028
	.long	808459
	.long	808476
	.long	808907
	.long	808924
	.long	809355
	.long	809372
	.long	809803
	.long	809820
	.long	810251
	.long	810268
	.long	810699
	.long	810716
	.long	811147
	.long	811164
	.long	811595
	.long	811612
	.long	812043
	.long	812060
	.long	812491
	.long	812508
	.long	812939
	.long	812956
	.long	813387
	.long	813404
	.long	813835
	.long	813852
	.long	814283
	.long	814300
	.long	814731
	.long	814748
	.long	815179
	.long	815196
	.long	815627
	.long	815644
	.long	816075
	.long	816092
	.long	816523
	.long	816540
	.long	816971
	.long	816988
	.long	817419
	.long	817436
	.long	817867
	.long	817884
	.long	818315
	.long	818332
	.long	818763
	.long	818780
	.long	819211
	.long	819228
	.long	819659
	.long	819676
	.long	820107
	.long	820124
	.long	820555
	.long	820572
	.long	821003
	.long	821020
	.long	821451
	.long	821468
	.long	821899
	.long	821916
	.long	822347
	.long	822364
	.long	822795
	.long	822812
	.long	823243
	.long	823260
	.long	823691
	.long	823708
	.long	824139
	.long	824156
	.long	824587
	.long	824604
	.long	825035
	.long	825052
	.long	825483
	.long	825500
	.long	825931
	.long	825948
	.long	826379
	.long	826396
	.long	826827
	.long	826844
	.long	827275
	.long	827292
	.long	827723
	.long	827740
	.long	828171
	.long	828188
	.long	828619
	.long	828636
	.long	829067
	.long	829084
	.long	829515
	.long	829532
	.long	829963
	.long	829980
	.long	830411
	.long	830428
	.long	830859
	.long	830876
	.long	831307
	.long	831324
	.long	831755
	.long	831772
	.long	832203
	.long	832220
	.long	832651
	.long	832668
	.long	833099
	.long	833116
	.long	833547
	.long	833564
	.long	833995
	.long	834012
	.long	834443
	.long	834460
	.long	834891
	.long	834908
	.long	835339
	.long	835356
	.long	835787
	.long	835804
	.long	836235
	.long	836252
	.long	836683
	.long	836700
	.long	837131
	.long	837148
	.long	837579
	.long	837596
	.long	838027
	.long	838044
	.long	838475
	.long	838492
	.long	838923
	.long	838940
	.long	839371
	.long	839388
	.long	839819
	.long	839836
	.long	840267
	.long	840284
	.long	840715
	.long	840732
	.long	841163
	.long	841180
	.long	841611
	.long	841628
	.long	842059
	.long	842076
	.long	842507
	.long	842524
	.long	842955
	.long	842972
	.long	843403
	.long	843420
	.long	843851
	.long	843868
	.long	844299
	.long	844316
	.long	844747
	.long	844764
	.long	845195
	.long	845212
	.long	845643
	.long	845660
	.long	846091
	.long	846108
	.long	846539
	.long	846556
	.long	846987
	.long	847004
	.long	847435
	.long	847452
	.long	847883
	.long	847900
	.long	848331
	.long	848348
	.long	848779
	.long	848796
	.long	849227
	.long	849244
	.long	849675
	.long	849692
	.long	850123
	.long	850140
	.long	850571
	.long	850588
	.long	851019
	.long	851036
	.long	851467
	.long	851484
	.long	851915
	.long	851932
	.long	852363
	.long	852380
	.long	852811
	.long	852828
	.long	853259
	.long	853276
	.long	853707
	.long	853724
	.long	854155
	.long	854172
	.long	854603
	.long	854620
	.long	855051
	.long	855068
	.long	855499
	.long	855516
	.long	855947
	.long	855964
	.long	856395
	.long	856412
	.long	856843
	.long	856860
	.long	857291
	.long	857308
	.long	857739
	.long	857756
	.long	858187
	.long	858204
	.long	858635
	.long	858652
	.long	859083
	.long	859100
	.long	859531
	.long	859548
	.long	859979
	.long	859996
	.long	860427
	.long	860444
	.long	860875
	.long	860892
	.long	861323
	.long	861340
	.long	861771
	.long	861788
	.long	862219
	.long	862236
	.long	862667
	.long	862684
	.long	863115
	.long	863132
	.long	863563
	.long	863580
	.long	864011
	.long	864028
	.long	864459
	.long	864476
	.long	864907
	.long	864924
	.long	865355
	.long	865372
	.long	865803
	.long	865820
	.long	866251
	.long	866268
	.long	866699
	.long	866716
	.long	867147
	.long	867164
	.long	867595
	.long	867612
	.long	868043
	.long	868060
	.long	868491
	.long	868508
	.long	868939
	.long	868956
	.long	869387
	.long	869404
	.long	869835
	.long	869852
	.long	870283
	.long	870300
	.long	870731
	.long	870748
	.long	871179
	.long	871196
	.long	871627
	.long	871644
	.long	872075
	.long	872092
	.long	872523
	.long	872540
	.long	872971
	.long	872988
	.long	873419
	.long	873436
	.long	873867
	.long	873884
	.long	874315
	.long	874332
	.long	874763
	.long	874780
	.long	875211
	.long	875228
	.long	875659
	.long	875676
	.long	876107
	.long	876124
	.long	876555
	.long	876572
	.long	877003
	.long	877020
	.long	877451
	.long	877468
	.long	877899
	.long	877916
	.long	878347
	.long	878364
	.long	878795
	.long	878812
	.long	879243
	.long	879260
	.long	879691
	.long	879708
	.long	880139
	.long	880156
	.long	880587
	.long	880604
	.long	881035
	.long	881052
	.long	881483
	.long	881500
	.long	881931
	.long	881948
	.long	882379
	.long	882396
	.long	882827
	.long	882844
	.long	883264
	.long	883464
	.long	883824
	.long	883897
	.long	884672
	.long	1028580
	.long	1028592
	.long	1040388
	.long	1040640
	.long	1040900
	.long	1041152
	.long	1044465
	.long	1044480
	.long	1047012
	.long	1047040
	.long	1048321
	.long	1048512
	.long	1056724
	.long	1056736
	.long	1060356
	.long	1060368
	.long	1062756
	.long	1062832
	.long	1089556
	.long	1089600
	.long	1089620
	.long	1089648
	.long	1089732
	.long	1089792
	.long	1090436
	.long	1090480
	.long	1090548
	.long	1090560
	.long	1093204
	.long	1093232
	.long	1102404
	.long	1102464
	.long	1103508
	.long	1103584
	.long	1108660
	.long	1108688
	.long	1109956
	.long	1110016
	.long	1111140
	.long	1111312
	.long	1112100
	.long	1112160
	.long	1114118
	.long	1114132
	.long	1114150
	.long	1114160
	.long	1115012
	.long	1115248
	.long	1115908
	.long	1115920
	.long	1115956
	.long	1115984
	.long	1116148
	.long	1116198
	.long	1116208
	.long	1116934
	.long	1116980
	.long	1117046
	.long	1117076
	.long	1117104
	.long	1117141
	.long	1117152
	.long	1117220
	.long	1117232
	.long	1117397
	.long	1117408
	.long	1118212
	.long	1118256
	.long	1118836
	.long	1118918
	.long	1118932
	.long	1119056
	.long	1119318
	.long	1119344
	.long	1120052
	.long	1120064
	.long	1120260
	.long	1120294
	.long	1120304
	.long	1121078
	.long	1121124
	.long	1121270
	.long	1121284
	.long	1121296
	.long	1121317
	.long	1121344
	.long	1121428
	.long	1121488
	.long	1121510
	.long	1121524
	.long	1121536
	.long	1123014
	.long	1123060
	.long	1123110
	.long	1123140
	.long	1123200
	.long	1123300
	.long	1123312
	.long	1123348
	.long	1123360
	.long	1125876
	.long	1125894
	.long	1125940
	.long	1126064
	.long	1126404
	.long	1126438
	.long	1126464
	.long	1127348
	.long	1127376
	.long	1127396
	.long	1127414
	.long	1127428
	.long	1127446
	.long	1127504
	.long	1127542
	.long	1127568
	.long	1127606
	.long	1127636
	.long	1127648
	.long	1127796
	.long	1127808
	.long	1127974
	.long	1128000
	.long	1128036
	.long	1128144
	.long	1128196
	.long	1128272
	.long	1129348
	.long	1129366
	.long	1129396
	.long	1129488
	.long	1129508
	.long	1129520
	.long	1129556
	.long	1129568
	.long	1129588
	.long	1129638
	.long	1129648
	.long	1129670
	.long	1129700
	.long	1129749
	.long	1129764
	.long	1129776
	.long	1130004
	.long	1130032
	.long	1131350
	.long	1131396
	.long	1131526
	.long	1131556
	.long	1131606
	.long	1131620
	.long	1131632
	.long	1132004
	.long	1132016
	.long	1133316
	.long	1133334
	.long	1133364
	.long	1133462
	.long	1133476
	.long	1133494
	.long	1133524
	.long	1133542
	.long	1133556
	.long	1133590
	.long	1133604
	.long	1133632
	.long	1137396
	.long	1137414
	.long	1137444
	.long	1137504
	.long	1137542
	.long	1137604
	.long	1137638
	.long	1137652
	.long	1137680
	.long	1138116
	.long	1138144
	.long	1139462
	.long	1139508
	.long	1139638
	.long	1139668
	.long	1139686
	.long	1139700
	.long	1139728
	.long	1141428
	.long	1141446
	.long	1141460
	.long	1141478
	.long	1141508
	.long	1141632
	.long	1143252
	.long	1143270
	.long	1143284
	.long	1143296
	.long	1143332
	.long	1143398
	.long	1143412
	.long	1143488
	.long	1147590
	.long	1147636
	.long	1147782
	.long	1147796
	.long	1147824
	.long	1151748
	.long	1151766
	.long	1151840
	.long	1151862
	.long	1151888
	.long	1151924
	.long	1151989
	.long	1152006
	.long	1152021
	.long	1152038
	.long	1152052
	.long	1152064
	.long	1154326
	.long	1154372
	.long	1154432
	.long	1154468
	.long	1154502
	.long	1154564
	.long	1154576
	.long	1154630
	.long	1154640
	.long	1155092
	.long	1155248
	.long	1155892
	.long	1155990
	.long	1156005
	.long	1156020
	.long	1156080
	.long	1156212
	.long	1156224
	.long	1156372
	.long	1156470
	.long	1156500
	.long	1156544
	.long	1157189
	.long	1157284
	.long	1157494
	.long	1157508
	.long	1157536
	.long	1164022
	.long	1164036
	.long	1164144
	.long	1164164
	.long	1164262
	.long	1164276
	.long	1164288
	.long	1165604
	.long	1165952
	.long	1165974
	.long	1165988
	.long	1166102
	.long	1166116
	.long	1166150
	.long	1166164
	.long	1166192
	.long	1168148
	.long	1168240
	.long	1168292
	.long	1168304
	.long	1168324
	.long	1168352
	.long	1168372
	.long	1168485
	.long	1168500
	.long	1168512
	.long	1169574
	.long	1169648
	.long	1169668
	.long	1169696
	.long	1169718
	.long	1169748
	.long	1169766
	.long	1169780
	.long	1169792
	.long	1175348
	.long	1175382
	.long	1175408
	.long	1175556
	.long	1175589
	.long	1175606
	.long	1175616
	.long	1176390
	.long	1176420
	.long	1176496
	.long	1176550
	.long	1176580
	.long	1176624
	.long	1176996
	.long	1177008
	.long	1262337
	.long	1262596
	.long	1262608
	.long	1262708
	.long	1262944
	.long	1446372
	.long	1446566
	.long	1446612
	.long	1446656
	.long	1486596
	.long	1486672
	.long	1487620
	.long	1487728
	.long	1496632
	.long	1496640
	.long	1496696
	.long	1496752
	.long	1504500
	.long	1504512
	.long	1504534
	.long	1505408
	.long	1505524
	.long	1505584
	.long	1506884
	.long	1506896
	.long	1507076
	.long	1507104
	.long	1821140
	.long	1821168
	.long	1821185
	.long	1821248
	.long	1896452
	.long	1897184
	.long	1897220
	.long	1897584
	.long	1906260
	.long	1906336
	.long	1906388
	.long	1906481
	.long	1906612
	.long	1906736
	.long	1906772
	.long	1906880
	.long	1907364
	.long	1907424
	.long	1909796
	.long	1909840
	.long	1941508
	.long	1942384
	.long	1942452
	.long	1943248
	.long	1943380
	.long	1943392
	.long	1943620
	.long	1943632
	.long	1943988
	.long	1944064
	.long	1944084
	.long	1944320
	.long	1966084
	.long	1966192
	.long	1966212
	.long	1966480
	.long	1966516
	.long	1966624
	.long	1966644
	.long	1966672
	.long	1966692
	.long	1966768
	.long	1968372
	.long	1968384
	.long	1970948
	.long	1971056
	.long	1977060
	.long	1977072
	.long	1978052
	.long	1978112
	.long	1986244
	.long	1986304
	.long	1990372
	.long	1990400
	.long	2002180
	.long	2002288
	.long	2004036
	.long	2004144
	.long	2039405
	.long	2039808
	.long	2047924
	.long	2048000
	.long	14680065
	.long	14680580
	.long	14682113
	.long	14684164
	.long	14688001
	.long	14745600
	.weak	_ZNSt9__unicode9__v16_0_014__escape_edgesE
	.section	.rodata._ZNSt9__unicode9__v16_0_014__escape_edgesE,"aG",@progbits,_ZNSt9__unicode9__v16_0_014__escape_edgesE,comdat
	.align 32
	.type	_ZNSt9__unicode9__v16_0_014__escape_edgesE, @gnu_unique_object
	.size	_ZNSt9__unicode9__v16_0_014__escape_edgesE, 5892
_ZNSt9__unicode9__v16_0_014__escape_edgesE:
	.long	1
	.long	66
	.long	255
	.long	322
	.long	347
	.long	348
	.long	1777
	.long	1780
	.long	1793
	.long	1800
	.long	1815
	.long	1816
	.long	1819
	.long	1820
	.long	1861
	.long	1862
	.long	2657
	.long	2658
	.long	2735
	.long	2738
	.long	2839
	.long	2842
	.long	2849
	.long	2850
	.long	2961
	.long	2976
	.long	3031
	.long	3038
	.long	3051
	.long	3084
	.long	3129
	.long	3130
	.long	3515
	.long	3516
	.long	3613
	.long	3616
	.long	3735
	.long	3738
	.long	3941
	.long	3968
	.long	4087
	.long	4090
	.long	4189
	.long	4192
	.long	4223
	.long	4224
	.long	4281
	.long	4284
	.long	4287
	.long	4288
	.long	4311
	.long	4320
	.long	4383
	.long	4398
	.long	4549
	.long	4550
	.long	4873
	.long	4874
	.long	4891
	.long	4894
	.long	4899
	.long	4902
	.long	4947
	.long	4948
	.long	4963
	.long	4964
	.long	4967
	.long	4972
	.long	4981
	.long	4984
	.long	5003
	.long	5006
	.long	5011
	.long	5014
	.long	5023
	.long	5038
	.long	5041
	.long	5048
	.long	5053
	.long	5054
	.long	5065
	.long	5068
	.long	5119
	.long	5122
	.long	5129
	.long	5130
	.long	5143
	.long	5150
	.long	5155
	.long	5158
	.long	5203
	.long	5204
	.long	5219
	.long	5220
	.long	5225
	.long	5226
	.long	5231
	.long	5232
	.long	5237
	.long	5240
	.long	5243
	.long	5244
	.long	5255
	.long	5262
	.long	5267
	.long	5270
	.long	5277
	.long	5282
	.long	5285
	.long	5298
	.long	5307
	.long	5308
	.long	5311
	.long	5324
	.long	5359
	.long	5378
	.long	5385
	.long	5386
	.long	5405
	.long	5406
	.long	5413
	.long	5414
	.long	5459
	.long	5460
	.long	5475
	.long	5476
	.long	5481
	.long	5482
	.long	5493
	.long	5496
	.long	5517
	.long	5518
	.long	5525
	.long	5526
	.long	5533
	.long	5536
	.long	5539
	.long	5568
	.long	5577
	.long	5580
	.long	5605
	.long	5618
	.long	5633
	.long	5634
	.long	5641
	.long	5642
	.long	5659
	.long	5662
	.long	5667
	.long	5670
	.long	5715
	.long	5716
	.long	5731
	.long	5732
	.long	5737
	.long	5738
	.long	5749
	.long	5752
	.long	5771
	.long	5774
	.long	5779
	.long	5782
	.long	5789
	.long	5802
	.long	5809
	.long	5816
	.long	5821
	.long	5822
	.long	5833
	.long	5836
	.long	5873
	.long	5892
	.long	5897
	.long	5898
	.long	5911
	.long	5916
	.long	5923
	.long	5924
	.long	5933
	.long	5938
	.long	5943
	.long	5944
	.long	5947
	.long	5948
	.long	5953
	.long	5958
	.long	5963
	.long	5968
	.long	5975
	.long	5980
	.long	6005
	.long	6012
	.long	6023
	.long	6028
	.long	6035
	.long	6036
	.long	6045
	.long	6048
	.long	6051
	.long	6062
	.long	6065
	.long	6092
	.long	6135
	.long	6144
	.long	6171
	.long	6172
	.long	6179
	.long	6180
	.long	6227
	.long	6228
	.long	6261
	.long	6264
	.long	6283
	.long	6284
	.long	6291
	.long	6292
	.long	6301
	.long	6314
	.long	6319
	.long	6320
	.long	6327
	.long	6330
	.long	6333
	.long	6336
	.long	6345
	.long	6348
	.long	6369
	.long	6382
	.long	6427
	.long	6428
	.long	6435
	.long	6436
	.long	6483
	.long	6484
	.long	6505
	.long	6506
	.long	6517
	.long	6520
	.long	6539
	.long	6540
	.long	6547
	.long	6548
	.long	6557
	.long	6570
	.long	6575
	.long	6586
	.long	6591
	.long	6592
	.long	6601
	.long	6604
	.long	6625
	.long	6626
	.long	6633
	.long	6656
	.long	6683
	.long	6684
	.long	6691
	.long	6692
	.long	6795
	.long	6796
	.long	6803
	.long	6804
	.long	6817
	.long	6824
	.long	6857
	.long	6860
	.long	6913
	.long	6914
	.long	6921
	.long	6922
	.long	6959
	.long	6964
	.long	7013
	.long	7014
	.long	7033
	.long	7034
	.long	7037
	.long	7040
	.long	7055
	.long	7060
	.long	7063
	.long	7070
	.long	7083
	.long	7084
	.long	7087
	.long	7088
	.long	7105
	.long	7116
	.long	7137
	.long	7140
	.long	7147
	.long	7170
	.long	7287
	.long	7294
	.long	7353
	.long	7426
	.long	7431
	.long	7432
	.long	7435
	.long	7436
	.long	7447
	.long	7448
	.long	7497
	.long	7498
	.long	7501
	.long	7502
	.long	7549
	.long	7552
	.long	7563
	.long	7564
	.long	7567
	.long	7568
	.long	7583
	.long	7584
	.long	7605
	.long	7608
	.long	7617
	.long	7680
	.long	7825
	.long	7826
	.long	7899
	.long	7906
	.long	7985
	.long	7986
	.long	8059
	.long	8060
	.long	8091
	.long	8092
	.long	8119
	.long	8192
	.long	8589
	.long	8590
	.long	8593
	.long	8602
	.long	8605
	.long	8608
	.long	9363
	.long	9364
	.long	9373
	.long	9376
	.long	9391
	.long	9392
	.long	9395
	.long	9396
	.long	9405
	.long	9408
	.long	9491
	.long	9492
	.long	9501
	.long	9504
	.long	9571
	.long	9572
	.long	9581
	.long	9584
	.long	9599
	.long	9600
	.long	9603
	.long	9604
	.long	9613
	.long	9616
	.long	9647
	.long	9648
	.long	9763
	.long	9764
	.long	9773
	.long	9776
	.long	9911
	.long	9914
	.long	9979
	.long	9984
	.long	10037
	.long	10048
	.long	10221
	.long	10224
	.long	10237
	.long	10240
	.long	11521
	.long	11522
	.long	11579
	.long	11584
	.long	11763
	.long	11776
	.long	11821
	.long	11838
	.long	11887
	.long	11904
	.long	11945
	.long	11968
	.long	11995
	.long	11996
	.long	12003
	.long	12004
	.long	12009
	.long	12032
	.long	12221
	.long	12224
	.long	12245
	.long	12256
	.long	12277
	.long	12288
	.long	12317
	.long	12318
	.long	12341
	.long	12352
	.long	12531
	.long	12544
	.long	12631
	.long	12640
	.long	12781
	.long	12800
	.long	12863
	.long	12864
	.long	12889
	.long	12896
	.long	12921
	.long	12928
	.long	12931
	.long	12936
	.long	13021
	.long	13024
	.long	13035
	.long	13056
	.long	13145
	.long	13152
	.long	13205
	.long	13216
	.long	13239
	.long	13244
	.long	13369
	.long	13372
	.long	13503
	.long	13504
	.long	13563
	.long	13566
	.long	13589
	.long	13600
	.long	13621
	.long	13632
	.long	13661
	.long	13664
	.long	13727
	.long	13824
	.long	13979
	.long	13980
	.long	14313
	.long	14328
	.long	14449
	.long	14454
	.long	14485
	.long	14490
	.long	14615
	.long	14624
	.long	14711
	.long	14714
	.long	14737
	.long	14752
	.long	14839
	.long	14848
	.long	15917
	.long	15920
	.long	15933
	.long	15936
	.long	16013
	.long	16016
	.long	16029
	.long	16032
	.long	16049
	.long	16050
	.long	16053
	.long	16054
	.long	16057
	.long	16058
	.long	16061
	.long	16062
	.long	16125
	.long	16128
	.long	16235
	.long	16236
	.long	16267
	.long	16268
	.long	16297
	.long	16300
	.long	16313
	.long	16314
	.long	16353
	.long	16356
	.long	16363
	.long	16364
	.long	16383
	.long	16416
	.long	16465
	.long	16480
	.long	16575
	.long	16608
	.long	16613
	.long	16616
	.long	16671
	.long	16672
	.long	16699
	.long	16704
	.long	16771
	.long	16800
	.long	16867
	.long	16896
	.long	17177
	.long	17184
	.long	18517
	.long	18560
	.long	18583
	.long	18624
	.long	22249
	.long	22252
	.long	22317
	.long	22318
	.long	23017
	.long	23026
	.long	23117
	.long	23118
	.long	23121
	.long	23130
	.long	23133
	.long	23136
	.long	23249
	.long	23262
	.long	23267
	.long	23294
	.long	23343
	.long	23360
	.long	23375
	.long	23376
	.long	23391
	.long	23392
	.long	23407
	.long	23408
	.long	23423
	.long	23424
	.long	23439
	.long	23440
	.long	23455
	.long	23456
	.long	23471
	.long	23472
	.long	23487
	.long	23488
	.long	23741
	.long	23808
	.long	23861
	.long	23862
	.long	24041
	.long	24064
	.long	24493
	.long	24544
	.long	24577
	.long	24578
	.long	24705
	.long	24706
	.long	24879
	.long	24882
	.long	25089
	.long	25098
	.long	25185
	.long	25186
	.long	25375
	.long	25376
	.long	25549
	.long	25566
	.long	25663
	.long	25664
	.long	84251
	.long	84256
	.long	84367
	.long	84384
	.long	85081
	.long	85120
	.long	85489
	.long	85504
	.long	85917
	.long	85920
	.long	85925
	.long	85926
	.long	85929
	.long	85930
	.long	85947
	.long	85988
	.long	86107
	.long	86112
	.long	86133
	.long	86144
	.long	86257
	.long	86272
	.long	86413
	.long	86428
	.long	86453
	.long	86464
	.long	86697
	.long	86718
	.long	86779
	.long	86784
	.long	86941
	.long	86942
	.long	86965
	.long	86972
	.long	87039
	.long	87040
	.long	87151
	.long	87168
	.long	87197
	.long	87200
	.long	87221
	.long	87224
	.long	87431
	.long	87478
	.long	87535
	.long	87554
	.long	87567
	.long	87570
	.long	87583
	.long	87586
	.long	87599
	.long	87616
	.long	87631
	.long	87632
	.long	87647
	.long	87648
	.long	87769
	.long	87776
	.long	88029
	.long	88032
	.long	88053
	.long	88064
	.long	110409
	.long	110432
	.long	110479
	.long	110486
	.long	110585
	.long	127488
	.long	128221
	.long	128224
	.long	128437
	.long	128512
	.long	128527
	.long	128550
	.long	128561
	.long	128570
	.long	128623
	.long	128624
	.long	128635
	.long	128636
	.long	128639
	.long	128640
	.long	128645
	.long	128646
	.long	128651
	.long	128652
	.long	128903
	.long	128934
	.long	129825
	.long	129828
	.long	129937
	.long	129950
	.long	129953
	.long	130016
	.long	130101
	.long	130112
	.long	130215
	.long	130216
	.long	130255
	.long	130256
	.long	130265
	.long	130272
	.long	130283
	.long	130284
	.long	130555
	.long	130562
	.long	130943
	.long	130948
	.long	130961
	.long	130964
	.long	130977
	.long	130980
	.long	130993
	.long	130996
	.long	131003
	.long	131008
	.long	131023
	.long	131024
	.long	131039
	.long	131064
	.long	131069
	.long	131072
	.long	131097
	.long	131098
	.long	131151
	.long	131152
	.long	131191
	.long	131192
	.long	131197
	.long	131198
	.long	131229
	.long	131232
	.long	131261
	.long	131328
	.long	131575
	.long	131584
	.long	131591
	.long	131598
	.long	131689
	.long	131694
	.long	131871
	.long	131872
	.long	131899
	.long	131904
	.long	131907
	.long	132000
	.long	132093
	.long	132352
	.long	132411
	.long	132416
	.long	132515
	.long	132544
	.long	132601
	.long	132608
	.long	132681
	.long	132698
	.long	132759
	.long	132768
	.long	132855
	.long	132864
	.long	132925
	.long	132926
	.long	133001
	.long	133008
	.long	133037
	.long	133120
	.long	133437
	.long	133440
	.long	133461
	.long	133472
	.long	133545
	.long	133552
	.long	133625
	.long	133632
	.long	133713
	.long	133728
	.long	133833
	.long	133854
	.long	133879
	.long	133880
	.long	133911
	.long	133912
	.long	133927
	.long	133928
	.long	133933
	.long	133934
	.long	133957
	.long	133958
	.long	133989
	.long	133990
	.long	134005
	.long	134006
	.long	134011
	.long	134016
	.long	134121
	.long	134144
	.long	134767
	.long	134784
	.long	134829
	.long	134848
	.long	134865
	.long	134912
	.long	134925
	.long	134926
	.long	135011
	.long	135012
	.long	135031
	.long	135168
	.long	135181
	.long	135184
	.long	135187
	.long	135188
	.long	135277
	.long	135278
	.long	135283
	.long	135288
	.long	135291
	.long	135294
	.long	135341
	.long	135342
	.long	135487
	.long	135502
	.long	135521
	.long	135616
	.long	135655
	.long	135656
	.long	135661
	.long	135670
	.long	135737
	.long	135742
	.long	135797
	.long	135806
	.long	135809
	.long	135936
	.long	136049
	.long	136056
	.long	136097
	.long	136100
	.long	136201
	.long	136202
	.long	136207
	.long	136216
	.long	136233
	.long	136234
	.long	136241
	.long	136242
	.long	136301
	.long	136304
	.long	136311
	.long	136318
	.long	136339
	.long	136352
	.long	136371
	.long	136384
	.long	136513
	.long	136576
	.long	136655
	.long	136662
	.long	136687
	.long	136704
	.long	136813
	.long	136818
	.long	136877
	.long	136880
	.long	136935
	.long	136944
	.long	136997
	.long	137010
	.long	137019
	.long	137042
	.long	137057
	.long	137216
	.long	137363
	.long	137472
	.long	137575
	.long	137600
	.long	137703
	.long	137716
	.long	137809
	.long	137824
	.long	137845
	.long	137856
	.long	137933
	.long	137938
	.long	137997
	.long	138012
	.long	138017
	.long	138432
	.long	138495
	.long	138496
	.long	138581
	.long	138582
	.long	138589
	.long	138592
	.long	138597
	.long	138628
	.long	138635
	.long	138744
	.long	138833
	.long	138848
	.long	138933
	.long	138976
	.long	139029
	.long	139104
	.long	139161
	.long	139200
	.long	139247
	.long	139264
	.long	139421
	.long	139428
	.long	139501
	.long	139518
	.long	139643
	.long	139644
	.long	139655
	.long	139680
	.long	139731
	.long	139744
	.long	139765
	.long	139776
	.long	139883
	.long	139884
	.long	139921
	.long	139936
	.long	140015
	.long	140032
	.long	140225
	.long	140226
	.long	140267
	.long	140288
	.long	140325
	.long	140326
	.long	140421
	.long	140544
	.long	140559
	.long	140560
	.long	140563
	.long	140564
	.long	140573
	.long	140574
	.long	140605
	.long	140606
	.long	140629
	.long	140640
	.long	140759
	.long	140768
	.long	140789
	.long	140800
	.long	140809
	.long	140810
	.long	140827
	.long	140830
	.long	140835
	.long	140838
	.long	140883
	.long	140884
	.long	140899
	.long	140900
	.long	140905
	.long	140906
	.long	140917
	.long	140918
	.long	140939
	.long	140942
	.long	140947
	.long	140950
	.long	140957
	.long	140960
	.long	140963
	.long	140974
	.long	140977
	.long	140986
	.long	141001
	.long	141004
	.long	141019
	.long	141024
	.long	141035
	.long	141056
	.long	141077
	.long	141078
	.long	141081
	.long	141084
	.long	141087
	.long	141088
	.long	141165
	.long	141166
	.long	141187
	.long	141188
	.long	141191
	.long	141194
	.long	141197
	.long	141198
	.long	141207
	.long	141208
	.long	141229
	.long	141230
	.long	141235
	.long	141250
	.long	141255
	.long	141312
	.long	141497
	.long	141498
	.long	141509
	.long	141568
	.long	141713
	.long	141728
	.long	141749
	.long	142080
	.long	142189
	.long	142192
	.long	142269
	.long	142336
	.long	142475
	.long	142496
	.long	142517
	.long	142528
	.long	142555
	.long	142592
	.long	142709
	.long	142720
	.long	142741
	.long	142752
	.long	142793
	.long	142848
	.long	142903
	.long	142906
	.long	142937
	.long	142944
	.long	142991
	.long	143360
	.long	143481
	.long	143680
	.long	143847
	.long	143870
	.long	143887
	.long	143890
	.long	143893
	.long	143896
	.long	143913
	.long	143914
	.long	143919
	.long	143920
	.long	143981
	.long	143982
	.long	143987
	.long	143990
	.long	144015
	.long	144032
	.long	144053
	.long	144192
	.long	144209
	.long	144212
	.long	144305
	.long	144308
	.long	144331
	.long	144384
	.long	144529
	.long	144544
	.long	144711
	.long	144736
	.long	144883
	.long	144896
	.long	144917
	.long	145280
	.long	145349
	.long	145376
	.long	145397
	.long	145408
	.long	145427
	.long	145428
	.long	145519
	.long	145520
	.long	145549
	.long	145568
	.long	145627
	.long	145632
	.long	145697
	.long	145700
	.long	145745
	.long	145746
	.long	145775
	.long	145920
	.long	145935
	.long	145936
	.long	145941
	.long	145942
	.long	146031
	.long	146036
	.long	146039
	.long	146040
	.long	146045
	.long	146046
	.long	146065
	.long	146080
	.long	146101
	.long	146112
	.long	146125
	.long	146126
	.long	146131
	.long	146132
	.long	146207
	.long	146208
	.long	146213
	.long	146214
	.long	146227
	.long	146240
	.long	146261
	.long	146880
	.long	146931
	.long	146944
	.long	146979
	.long	146980
	.long	147063
	.long	147068
	.long	147127
	.long	147296
	.long	147299
	.long	147328
	.long	147429
	.long	147454
	.long	149301
	.long	149504
	.long	149727
	.long	149728
	.long	149739
	.long	149760
	.long	150153
	.long	155424
	.long	155623
	.long	155648
	.long	157793
	.long	157824
	.long	157869
	.long	157888
	.long	165879
	.long	165888
	.long	167055
	.long	180736
	.long	180853
	.long	184320
	.long	185459
	.long	185472
	.long	185535
	.long	185536
	.long	185557
	.long	185564
	.long	185727
	.long	185728
	.long	185749
	.long	185760
	.long	185821
	.long	185824
	.long	185837
	.long	185856
	.long	185997
	.long	186016
	.long	186037
	.long	186038
	.long	186053
	.long	186054
	.long	186097
	.long	186106
	.long	186145
	.long	187008
	.long	187125
	.long	187520
	.long	187703
	.long	187904
	.long	188055
	.long	188062
	.long	188177
	.long	188190
	.long	188225
	.long	188352
	.long	188363
	.long	188384
	.long	188389
	.long	188416
	.long	200689
	.long	200704
	.long	203181
	.long	203262
	.long	203283
	.long	221152
	.long	221161
	.long	221162
	.long	221177
	.long	221178
	.long	221183
	.long	221184
	.long	221767
	.long	221796
	.long	221799
	.long	221856
	.long	221863
	.long	221866
	.long	221869
	.long	221896
	.long	221905
	.long	221920
	.long	222713
	.long	227328
	.long	227543
	.long	227552
	.long	227579
	.long	227584
	.long	227603
	.long	227616
	.long	227637
	.long	227640
	.long	227649
	.long	235520
	.long	236021
	.long	236032
	.long	236905
	.long	237056
	.long	237149
	.long	237152
	.long	237199
	.long	237216
	.long	237449
	.long	237568
	.long	238061
	.long	238080
	.long	238159
	.long	238162
	.long	238311
	.long	238326
	.long	238551
	.long	238592
	.long	238733
	.long	238976
	.long	239017
	.long	239040
	.long	239081
	.long	239104
	.long	239279
	.long	239296
	.long	239347
	.long	239616
	.long	239787
	.long	239788
	.long	239931
	.long	239932
	.long	239937
	.long	239940
	.long	239943
	.long	239946
	.long	239951
	.long	239954
	.long	239963
	.long	239964
	.long	239989
	.long	239990
	.long	239993
	.long	239994
	.long	240009
	.long	240010
	.long	240141
	.long	240142
	.long	240151
	.long	240154
	.long	240171
	.long	240172
	.long	240187
	.long	240188
	.long	240245
	.long	240246
	.long	240255
	.long	240256
	.long	240267
	.long	240268
	.long	240271
	.long	240276
	.long	240291
	.long	240292
	.long	240973
	.long	240976
	.long	241561
	.long	241564
	.long	242969
	.long	242998
	.long	243009
	.long	243010
	.long	243041
	.long	245248
	.long	245311
	.long	245322
	.long	245335
	.long	245760
	.long	245775
	.long	245776
	.long	245811
	.long	245814
	.long	245829
	.long	245830
	.long	245835
	.long	245836
	.long	245847
	.long	245856
	.long	245981
	.long	246046
	.long	246049
	.long	246272
	.long	246363
	.long	246368
	.long	246397
	.long	246400
	.long	246421
	.long	246428
	.long	246433
	.long	247072
	.long	247135
	.long	247168
	.long	247285
	.long	247294
	.long	247297
	.long	248224
	.long	248309
	.long	248736
	.long	248823
	.long	248830
	.long	248833
	.long	249792
	.long	249807
	.long	249808
	.long	249817
	.long	249818
	.long	249823
	.long	249824
	.long	249855
	.long	249856
	.long	250251
	.long	250254
	.long	250287
	.long	250368
	.long	250521
	.long	250528
	.long	250549
	.long	250556
	.long	250561
	.long	252130
	.long	252267
	.long	252418
	.long	252541
	.long	252928
	.long	252937
	.long	252938
	.long	252993
	.long	252994
	.long	252999
	.long	253000
	.long	253003
	.long	253006
	.long	253009
	.long	253010
	.long	253031
	.long	253032
	.long	253041
	.long	253042
	.long	253045
	.long	253046
	.long	253049
	.long	253060
	.long	253063
	.long	253070
	.long	253073
	.long	253074
	.long	253077
	.long	253078
	.long	253081
	.long	253082
	.long	253089
	.long	253090
	.long	253095
	.long	253096
	.long	253099
	.long	253102
	.long	253105
	.long	253106
	.long	253109
	.long	253110
	.long	253113
	.long	253114
	.long	253117
	.long	253118
	.long	253121
	.long	253122
	.long	253127
	.long	253128
	.long	253131
	.long	253134
	.long	253143
	.long	253144
	.long	253159
	.long	253160
	.long	253169
	.long	253170
	.long	253179
	.long	253180
	.long	253183
	.long	253184
	.long	253205
	.long	253206
	.long	253241
	.long	253250
	.long	253257
	.long	253258
	.long	253269
	.long	253270
	.long	253305
	.long	253408
	.long	253413
	.long	253952
	.long	254041
	.long	254048
	.long	254249
	.long	254272
	.long	254303
	.long	254306
	.long	254337
	.long	254338
	.long	254369
	.long	254370
	.long	254445
	.long	254464
	.long	254813
	.long	254924
	.long	254983
	.long	255008
	.long	255097
	.long	255104
	.long	255123
	.long	255136
	.long	255141
	.long	255168
	.long	255181
	.long	255488
	.long	257457
	.long	257464
	.long	257499
	.long	257504
	.long	257531
	.long	257536
	.long	257775
	.long	257782
	.long	257973
	.long	257984
	.long	258009
	.long	258016
	.long	258019
	.long	258048
	.long	258073
	.long	258080
	.long	258193
	.long	258208
	.long	258229
	.long	258240
	.long	258321
	.long	258336
	.long	258397
	.long	258400
	.long	258425
	.long	258432
	.long	258437
	.long	258560
	.long	259241
	.long	259264
	.long	259293
	.long	259296
	.long	259323
	.long	259328
	.long	259349
	.long	259358
	.long	259471
	.long	259484
	.long	259515
	.long	259518
	.long	259541
	.long	259552
	.long	259571
	.long	259584
	.long	259879
	.long	259880
	.long	260085
	.long	262144
	.long	347585
	.long	347648
	.long	355957
	.long	355968
	.long	356413
	.long	356416
	.long	367941
	.long	367968
	.long	382915
	.long	382944
	.long	384189
	.long	389120
	.long	390205
	.long	393216
	.long	403095
	.long	403104
	.long	411489
	.long	1835520
	.long	1836001
	.weak	_ZNSt9__unicode9__v16_0_013__width_edgesE
	.section	.rodata._ZNSt9__unicode9__v16_0_013__width_edgesE,"aG",@progbits,_ZNSt9__unicode9__v16_0_013__width_edgesE,comdat
	.align 32
	.type	_ZNSt9__unicode9__v16_0_013__width_edgesE, @gnu_unique_object
	.size	_ZNSt9__unicode9__v16_0_013__width_edgesE, 824
_ZNSt9__unicode9__v16_0_013__width_edgesE:
	.long	4352
	.long	4448
	.long	8986
	.long	8988
	.long	9001
	.long	9003
	.long	9193
	.long	9197
	.long	9200
	.long	9201
	.long	9203
	.long	9204
	.long	9725
	.long	9727
	.long	9748
	.long	9750
	.long	9776
	.long	9784
	.long	9800
	.long	9812
	.long	9855
	.long	9856
	.long	9866
	.long	9872
	.long	9875
	.long	9876
	.long	9889
	.long	9890
	.long	9898
	.long	9900
	.long	9917
	.long	9919
	.long	9924
	.long	9926
	.long	9934
	.long	9935
	.long	9940
	.long	9941
	.long	9962
	.long	9963
	.long	9970
	.long	9972
	.long	9973
	.long	9974
	.long	9978
	.long	9979
	.long	9981
	.long	9982
	.long	9989
	.long	9990
	.long	9994
	.long	9996
	.long	10024
	.long	10025
	.long	10060
	.long	10061
	.long	10062
	.long	10063
	.long	10067
	.long	10070
	.long	10071
	.long	10072
	.long	10133
	.long	10136
	.long	10160
	.long	10161
	.long	10175
	.long	10176
	.long	11035
	.long	11037
	.long	11088
	.long	11089
	.long	11093
	.long	11094
	.long	11904
	.long	11930
	.long	11931
	.long	12020
	.long	12032
	.long	12246
	.long	12272
	.long	12351
	.long	12353
	.long	12439
	.long	12441
	.long	12544
	.long	12549
	.long	12592
	.long	12593
	.long	12687
	.long	12688
	.long	12774
	.long	12783
	.long	12831
	.long	12832
	.long	12872
	.long	12880
	.long	42125
	.long	42128
	.long	42183
	.long	43360
	.long	43389
	.long	44032
	.long	55204
	.long	63744
	.long	64256
	.long	65040
	.long	65050
	.long	65072
	.long	65107
	.long	65108
	.long	65127
	.long	65128
	.long	65132
	.long	65281
	.long	65377
	.long	65504
	.long	65511
	.long	94176
	.long	94181
	.long	94192
	.long	94194
	.long	94208
	.long	100344
	.long	100352
	.long	101590
	.long	101631
	.long	101641
	.long	110576
	.long	110580
	.long	110581
	.long	110588
	.long	110589
	.long	110591
	.long	110592
	.long	110883
	.long	110898
	.long	110899
	.long	110928
	.long	110931
	.long	110933
	.long	110934
	.long	110948
	.long	110952
	.long	110960
	.long	111356
	.long	119552
	.long	119639
	.long	119648
	.long	119671
	.long	126980
	.long	126981
	.long	127183
	.long	127184
	.long	127374
	.long	127375
	.long	127377
	.long	127387
	.long	127488
	.long	127491
	.long	127504
	.long	127548
	.long	127552
	.long	127561
	.long	127568
	.long	127570
	.long	127584
	.long	127590
	.long	127744
	.long	128592
	.long	128640
	.long	128710
	.long	128716
	.long	128717
	.long	128720
	.long	128723
	.long	128725
	.long	128728
	.long	128732
	.long	128736
	.long	128747
	.long	128749
	.long	128756
	.long	128765
	.long	128992
	.long	129004
	.long	129008
	.long	129009
	.long	129280
	.long	129536
	.long	129648
	.long	129661
	.long	129664
	.long	129674
	.long	129679
	.long	129735
	.long	129742
	.long	129757
	.long	129759
	.long	129770
	.long	129776
	.long	129785
	.long	131072
	.long	196606
	.long	196608
	.long	262142
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC6:
	.quad	3978425819141910832
	.quad	7378413942531504440
	.align 16
.LC14:
	.quad	3688503277381496880
	.quad	3976738051646829616
	.align 16
.LC15:
	.quad	3544667369688283184
	.quad	3832902143785906737
	.align 16
.LC16:
	.quad	4121136918051239473
	.quad	3689066235924983858
	.align 16
.LC17:
	.quad	3977301010190316594
	.quad	3545230328231770162
	.align 16
.LC18:
	.quad	3833465102329393715
	.quad	4121699876594726451
	.align 16
.LC19:
	.quad	3689629194468470836
	.quad	3977863968733803572
	.align 16
.LC20:
	.quad	3545793286775257140
	.quad	3834028060872880693
	.align 16
.LC21:
	.quad	4122262835138213429
	.quad	3690192153011957814
	.align 16
.LC22:
	.quad	3978426927277290550
	.quad	3546356245318744118
	.align 16
.LC23:
	.quad	3834591019416367671
	.quad	4122825793681700407
	.align 16
.LC24:
	.quad	3690755111555444792
	.quad	3978989885820777528
	.align 16
.LC25:
	.quad	3546919203862231096
	.quad	3835153977959854649
	.align 16
.LC26:
	.quad	4122263930388298034
	.quad	16106987313379638
	.section	.rodata.cst2,"aM",@progbits,2
	.align 2
.LC31:
	.byte	0
	.byte	1
	.section	.rodata.cst16
	.align 16
.LC42:
	.long	-1
	.long	-1
	.long	-1
	.long	2147483647
	.align 16
.LC43:
	.long	-1
	.long	-1
	.long	-1
	.long	2147418111
	.align 16
.LC48:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.align 16
.LC50:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC51:
	.long	-1
	.long	2146435071
	.section	.rodata.cst16
	.align 16
.LC52:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC53:
	.long	2139095039
	.section	.rodata.cst16
	.align 16
.LC58:
	.quad	0
	.quad	-1
	.align 16
.LC62:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC63:
	.long	4
	.long	5
	.long	6
	.long	7
	.section	.rodata.cst8
	.align 8
.LC64:
	.long	8
	.long	9
	.align 8
.LC65:
	.long	10
	.long	10
	.section	.data.rel.ro,"aw"
	.align 8
.LC74:
	.quad	_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE+24
	.align 8
.LC75:
	.quad	_ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	.section	.data.rel.ro.local,"aw"
	.align 8
.LC76:
	.quad	_ZTVNSt8__format9_Seq_sinkINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE+16
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gttf2
	.globl	__unordtf2
	.globl	__udivti3
	.globl	__gxx_personality_v0
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
