#include <iostream>
#include <math.h>
using namespace std;

uint32_t exponent(uint32_t x) {
    return pow(2, x); // this returns 2 ^ x
}

int sumSquares (int a, int b) {
    int sum = 0;

    for (int i = a; i <= b; i++) { // iterates through the inequality between a and b using i
        sum += pow(i, 2); //continuously sums up the squares
    }

    return sum; //returns it so it can be printed out
}

/*
assembler code for sumSquares:
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
*/

int factorial (int a) {
    int factorial = 1; // starts factorial at 1 because 0!
    
    for (int i = 1; i <= a; i++) { //iterates it until it equals the number inputed by n
        factorial = factorial * i; // continuous multiplys the factorial previously to the next number 
    }

    return factorial; //returns it so it can be printed out in the terminal
}

int main() {
    int a = 0;
    while (a < 33) { //loops it 33 times
        uint32_t result = exponent(a); // sets result equal to the function with a in place of x
        cout << result << endl; // prints out result number
        a++; // increments a until it does not satisfy the while loop
    }
    cout << "///////////////////////////////////////" << endl;
    cout << sumSquares(3, 42) << endl;
    cout << "///////////////////////////////////////" << endl;

    for (int n = 1; n <= 25; n++) { // prints the factorial from 1 to 25
        cout << factorial(n) << endl;
    }
}
