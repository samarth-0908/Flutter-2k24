import "dart:io";

void main() {
  int x = 3;
  int n = 1;
  for (int i = 1; i <= x; i++) {
    for (int sp = 1; sp <= x - i; sp++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("${n * n}");
      n++;
    }
    print(" ");
  }
}
