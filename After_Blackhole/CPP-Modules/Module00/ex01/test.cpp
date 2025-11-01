#include <iostream>
#include <string>
using namespace std;

int main() {
  char *myString = "Hello";
  char *c = "Wallo\n";
  myString = c;
  cout << myString;
  return 0;
}
