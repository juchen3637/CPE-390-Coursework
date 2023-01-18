#include <iostream>

using namespace std;

int main() {
  int a = 3 / 2 + 4;
  cout << a << endl;
  uint64_t b = 10 / 3 * 4;
  cout << b << endl;
  uint64_t c = 10 / 3 / 4;
  cout << c << endl;
  uint64_t d = 10 / 2.5 * 2;
  cout << d << endl;
  double e = 5 / 2;
  cout << e << endl;
  double f = 5 / 2 * 3;
  cout << f << endl;
  // uint64_t g = 1000000 * 1000000;
  // bool b1 = g == 1000000000000ULL;
  // cout << b1 << endl;
  uint64_t h = 1000000;
  h *= 1000000;
  cout << h << endl;
}
