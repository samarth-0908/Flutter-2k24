import 'dart:io';

void main() {
  int x = 4;
  int n = 2; // Set the maximum number of rows
  for (int i = 1; i <= x; i++) {
    // Print spaces for alignment
    for (int sp = 1; sp < i; sp++) {
      stdout.write(" ");
    }
    // Print numbers starting from i to x
    for (int j = i; j <= x; j++) {
      stdout.write("${n}");
      n += 2;
    }
    print(""); // Move to the next line
  }
}
