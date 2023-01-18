#%rdi is the input register
	.globl _Z3f1ay
_Z3f1ay:	
	# write a function that counts from 0 to n-1 (which is in %rdi)
   xor %rcx, %rcx
   sub $1, %rdi # makes rdi n-1
L1:inc %rcx
   cmp %rcx, %rdi
   jne L1
   mov %rcx, %rax
	 ret

	.globl _Z3f1by
_Z3f1by:
	# write a function that counts from n down to 1
L2:sub $1, %rdi
  cmp $1, %rdi 
  jne L2
  mov %rdi, %rax
	ret

	.globl _Z3f1cy
_Z3f1cy:
	# Write a function that counts from n down to 1 without using the compare (sub will do!)
L3:sub $1, %rdi
   jnz L3
   inc %rdi
   mov %rdi, %rax
	ret


	.globl _Z3f2ay
_Z3f2ay:
	# write a function that sums the numbers from 1 to n (which is in %rdi)
	# answers should be returned in %rax
  xor %rdx, %rdx # will hold the sum value
  mov $1, %rcx # will keep count of the increments
L4:add %rcx, %rdx
  inc %rcx
  cmp %rcx, %rdi
  jne L4
  mov %rdx, %rax
	ret

	.globl _Z3f2by
_Z3f2by:
	# write a function that computes n factorial (products 1 to n)
  xor %rcx, %rcx
  xor %rax, %rax
  mov $1, %rax
L5:add $1, %rcx
  mul %rcx
  cmp %rcx, %rdi
  jne L5
	ret
