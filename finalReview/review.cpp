#include <iostream>
using namespace std;

double mean(int a[], int n) {
  double avg = 0;
  for (int i = 0; i < n; i++) {
    avg += a[i];
  }
  return avg / n;
}

double eval(double coef[], int n, double x) {
  double result = coef[0];
  for (int i = 1; i < n; i++) {
    result = result * x + coef[i];
  }

  return result;
}

void reverse(char s[]) {
  int sLength = 0;
  for (sLength = 0; s[sLength] != '\0'; sLength++)
    ;
  for (int i = 0; i < sLength / 2; i++) {
    char temp = s[i];
    s[i] = s[sLength - 1 - i];
    s[sLength - 1 - i] = temp;
  }
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
  int a[] = {1, 2, 3, 4};
  double avg = mean(a, 4);  // mean is 2.5 in this example
  cout << avg << endl;

  double coef[] = {5, -3, 2, 1, 4};
  cout << eval(coef, 5, 2.5) << endl;

  char s[] = "this is my string\0";
  reverse(s);
  cout << s << endl;
}
