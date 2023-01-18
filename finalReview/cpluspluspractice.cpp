#include <iostream>
using namespace std;

int factorial(int n) {
  int result = 1;
  for (int i = 0; i < n; i++) {
    result += result * i;
  }

  return result;
}

void reverse(char s[]) {
  int l = 0;
  for (l = 0; s[l] != '\0'; l++)
    ;

  for (int i = 0; i < l / 2; i++) {
    char temp = s[i];
    s[i] = s[l - 1 - i];
    s[l - 1 - i] = temp;
  }
}

double eval(double coef[], double n, double x) {
  double result = coef[0];
  for (int i = 1; i < n; i++) {
    result = result * x + coef[i];
  }

  return result;
}

void evenOrOdd(int n) {
  if (n % 2 == 0) {
    cout << "even" << endl;
  }

  else {
    cout << "odd" << endl;
  }
}

double mean(int a[], int n) {
  double result = 0;
  for (int i = 0; i < n; i++) {
    result += a[i];
  }

  return result / n;
}

uint32_t color(uint32_t r, uint32_t g, uint32_t b) {
  uint32_t rgb = 000000000000000000000000;  // this should be 32 zeros? because uint32_t
  rgb |= r;
  rgb <<= 8;
  rgb |= g;
  rgb <<= 8;
  rgb |= b;

  return rgb;
}

int main() {
  cout << factorial(5) << endl;

  char s[] = "hello stupid\0";
  reverse(s);
  cout << s << endl;

  double coef[] = {5, -3, 2, 1, 4};
  cout << eval(coef, 5, 2.5) << endl;

  evenOrOdd(8);

  int a[] = {1, 2, 3, 4};
  double avg = mean(a, 4);
  cout << avg << endl;

  uint32_t c = color(0xFF, 0x80, 0x00);  // should be 0xFF8000
  cout << hex << c << '\n';
}