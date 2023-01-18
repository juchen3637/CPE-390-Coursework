	.file	"C:\\Users\\jchen\\CPE390\\hw\\assignment2.cpp"
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1334:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB2232:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	(%rcx), %rax
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %r13
	movq	%rcx, %r12
	testq	%r13, %r13
	je	.L8
	cmpb	$0, 56(%r13)
	je	.L5
	movsbl	67(%r13), %edx
.L6:
	movq	%r12, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	addq	$32, %rsp
	popq	%r12
	popq	%r13
	popq	%rbp
	jmp	_ZNSo5flushEv
.L5:
	movq	%r13, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L6
	movl	$10, %edx
	movq	%r13, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L6
.L8:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4
	.globl	_Z8exponentj
	.def	_Z8exponentj;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8exponentj
_Z8exponentj:
.LFB1794:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	pxor	%xmm1, %xmm1
	movsd	.LC0(%rip), %xmm0
	movl	%ecx, %ecx
	cvtsi2sdq	%rcx, %xmm1
	call	pow
	cvttsd2siq	%xmm0, %rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z10sumSquaresii
	.def	_Z10sumSquaresii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10sumSquaresii
_Z10sumSquaresii:
.LFB1796:
	.seh_endprologue
	cmpl	%edx, %ecx
	jg	.L15
	addl	$1, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L14:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm0
	addl	$1, %ecx
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	cmpl	%edx, %ecx
	jne	.L14
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z9factoriali
	.def	_Z9factoriali;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9factoriali
_Z9factoriali:
.LFB1797:
	.seh_endprologue
	testl	%ecx, %ecx
	jle	.L20
	addl	$1, %ecx
	movl	$1, %eax
	movl	$1, %r8d
	.p2align 4,,10
	.p2align 3
.L19:
	imull	%eax, %r8d
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L19
	movl	%r8d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	movl	$1, %r8d
	movl	%r8d, %eax
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "///////////////////////////////////////\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB1798:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	movaps	%xmm6, -96(%rbp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	xorl	%ebx, %ebx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdi
	call	__main
	movsd	.LC0(%rip), %xmm6
	movq	.refptr._ZSt4cout(%rip), %rsi
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L41:
	movsbl	67(%r13), %edx
.L25:
	movq	%r12, %rcx
	addl	$1, %ebx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	cmpl	$33, %ebx
	je	.L40
.L26:
	pxor	%xmm1, %xmm1
	movapd	%xmm6, %xmm0
	cvtsi2sdl	%ebx, %xmm1
	call	pow
	movq	%rsi, %rcx
	cvttsd2siq	%xmm0, %rdx
	movl	%edx, %edx
	call	_ZNSo9_M_insertImEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.L28
	cmpb	$0, 56(%r13)
	jne	.L41
	movq	%r13, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rdi, %rax
	je	.L25
	movq	%r13, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L25
.L40:
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	movl	$2, %ebx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movl	$42, %edx
	movl	$3, %ecx
	call	_Z10sumSquaresii
	movq	.refptr._ZSt4cout(%rip), %rcx
	movl	%eax, %edx
	call	_ZNSolsEi
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	.refptr._ZSt4cout(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	.refptr._ZSt4cout(%rip), %rsi
	.p2align 4,,10
	.p2align 3
.L31:
	movl	$1, %edx
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L27:
	imull	%eax, %edx
	addl	$1, %eax
	cmpl	%eax, %ebx
	jne	.L27
	movq	%rsi, %rcx
	call	_ZNSolsEi
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.L28
	cmpb	$0, 56(%r13)
	je	.L29
	movsbl	67(%r13), %edx
.L30:
	movq	%r12, %rcx
	addl	$1, %ebx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	cmpl	$27, %ebx
	jne	.L31
	movaps	-96(%rbp), %xmm6
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%r13, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %edx
	movq	48(%rax), %rax
	cmpq	%rdi, %rax
	je	.L30
	movq	%r13, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L30
.L28:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4
	.def	_GLOBAL__sub_I__Z8exponentj;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z8exponentj
_GLOBAL__sub_I__Z8exponentj:
.LFB2229:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	movq	.refptr.__dso_handle(%rip), %r8
	leaq	_ZStL8__ioinit(%rip), %rdx
	leaq	_ZNSt8ios_base4InitD1Ev(%rip), %rcx
	addq	$32, %rsp
	popq	%rbp
	jmp	__cxa_atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z8exponentj
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 10.2.0"
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertImEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__cxa_atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZNSt8ios_base4InitD1Ev, "dr"
	.globl	.refptr._ZNSt8ios_base4InitD1Ev
	.linkonce	discard
.refptr._ZNSt8ios_base4InitD1Ev:
	.quad	_ZNSt8ios_base4InitD1Ev
	.section	.rdata$.refptr.__dso_handle, "dr"
	.globl	.refptr.__dso_handle
	.linkonce	discard
.refptr.__dso_handle:
	.quad	__dso_handle
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
