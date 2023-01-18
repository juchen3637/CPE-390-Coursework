#include <iostream>
using namespace std;
//int = whatever is fastest on your machine
//int >= 16 bits
//2^16 = 65536
//-32768... 0.1 ... 32767 (counts 0 as positive integer)
// int = 32bits -2.1 billion ... + 2.1 billion

uint64_t add(uint64_t a, uint64_t b) {
    return a + b;
}

int f(int a) {
    return a^2;
}

int main() {
    cout << f(3) << '\n' ;
    uint64_t c = 2 + 3;
    uint64_t d = add(2,3);
}

uint64_t add2 (uint64_t a, uint64_t b) {
    return a+b;
}