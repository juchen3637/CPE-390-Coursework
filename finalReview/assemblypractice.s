#(a+b) * (a-b)
.globl f
_f:
  xorq %rax, %rax
  leaq (%rcx, %rdx), %rax
  subq %rdx, %rcx # a - b, store it in %rcx
  imulq %rcx, %rax
  ret

.globl mask
_mask:
  andq %rdx, %rcx # a & b, stores in %rcx
  cmp %rcx, %rdx # compares (a&b) with b
  je L1 # jump to L1 if it equals
  movq $0, %ax 
  ret
L1:
  movq $1, %ax
  ret # returning in ax because it is a boolean, 16 bit register 

  .globl toggle
  _toggle:
    xorq %rdx, %rcx
    movq %rcx, %rax
    ret

  .globl toggle2
  toggle2:
    xorq %rax, %rax
    movq %rcx, %rax
    cmp %rcx, %rdx
    je L3
  L2:
    inc %rcx
    leaq (%rcx, %rax), %rax
    cmp %rcx, %rdx
    jne L2
    ret
  L3:
    ret

  .globl test
  test:
  rol %rdx
  ror 


  # write a function that counts from 0 to n-1 (which is in %rdi)
  .globl countUp
  countUp:
  xorq %rax, %rax
  subq $1, %rdi
  movq $0, %rcx
L4:
  inc %rcx
  cmp %rcx, %rdi
  jne L4
  movq %rcx, %rax
  ret

	# write a function that counts from n down to 1
  .globl countDown 
  countDown:
  xorq %rax, %rax
L5:
  dec %rdi
  cmp %rdi, $1
  jne L5
  movq %rdi, %rax
  ret