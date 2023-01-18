 .globl func1
_func1:
  leaq (%rcx, %rdx), %rax # a + b and stores the value in %rax
  subq %rdx, %rcx # a - b and stores the value in %rcx
  imulq %rcx, %rax # %rcx * %rax and stores in %rax
  ret

  .globl func2
_func2:
  movq %rcx, %rax # move a into %rax
  and %rdx, %rax # and the value a with b
  cmp %rax, %rdx # compare %rax with b
  ret 

  .globl func3
_func3:
  movq %rcx, %rax # move value of a into %rax
  xorq %rdx, %rax # xor a with b and store in %rax
  ret

  .global func4
_func4:
xor %rax, %rax
movq %rcx, %rax # move the first value of %rcx into %rax
cmp %rcx, %rdx # sees if a is already equal to b
je L2 # if equal then just return %rax
L1: 
inc %rcx # increments %rcx by 1
add %rcx, %rax # adds %rcx onto %rax
cmp %rcx, %rdx # compares %rcx with %rdx
jne L1 # if its not equal then repeat this operation
ret
L2: 
ret




