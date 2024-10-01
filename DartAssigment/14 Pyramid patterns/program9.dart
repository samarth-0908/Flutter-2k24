import 'dart:io';

void main() {
  int row = int.parse(stdin.readLineSync()!);
  int a = 1;
  for (int i = row; i >= 1; i--) {
    for (int j = 1; j <= row - i; j++) {
      stdout.write(" ");
    }
    for (int k = 1; k <= i * 2 - 1; k++) {
      stdout.write("$a");
      a++;
    }
    print('');
  }
}
