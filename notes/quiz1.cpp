 #include <iostream>
using namespace std;

int main() {
  // count odd numbers from 1 to 19
  for (int i = 0; i < 19; i++) {
    if (i % 2 != 0) {
      cout << i << endl;
    }
  }

  uint8_t j = ~0x3C; // inverter, 0xC3
  int8_t m = 31 & 9; // and gate, 
  int8_t n = 17 ^ 27; // xor gate,

  // 3)
  // integer overflow
  // 1, 2, 4, 8, 16, ..., 2**31
  //  0000000000000000000000001
  //  0000000000000000000000010
  //  0000000000000000000000100
  //  1000000000000000000000000
  //  0000000000000000000000000
 }