	.globl main
main:
	mov	$6, %rcx
	mov	$7, %rdx
	call	f
	ret

  .globl f
f: 
  lea (%rcx, %rdx), %rax
  shr $1, %rax
  ret
