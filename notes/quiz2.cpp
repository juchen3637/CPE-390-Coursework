// uint64_t a = 0x2B | ~0x2B = 0x00000000FFFFFFFF

//xorq %rax, %rax (0x00)
//mov $238, %rsi
//shrq $16, %rsi (q stands for quad 238 < 255, so it becomes 0x00)
//mov $77, %rsi (binary 01001101)
//and $31, %rsi (00011111 = 00001101) ($13)