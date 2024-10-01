import 'dart:io';

void main() {
  int row = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= row; i++) {
    int a = i-1;
    for (int j = 1; j <= row - i; j++) {
      stdout.write(" ");
    }
    for (int k = 1; k <= i * 2 - 1; k++) {
      if (k > (i * 2 - 1) / 2) {
        stdout.write(a++);
      } else {
        stdout.write("$a");
        a--;
      }
    }
    print("");
  }
}
