  .globl problemTwo
problemTwo:
  xorq %rax, %rax
  mov $238, %rsi
  shrq $16, %rsi
  mov $77, %rsi
  andq $31, %rsi