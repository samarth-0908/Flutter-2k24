import 'dart:io';

void main() {
  int x = 3;
  int n;
  for (int i = x; i >= 1; i--) {
    n = i; 
    for (int sp = 1; sp < i; sp++) {
      stdout.write("  ");
    }
   
    for (int j = i; j <= x; j++) {
      stdout.write(" $n");
      n++;
    }
    print(""); 
  }
}
