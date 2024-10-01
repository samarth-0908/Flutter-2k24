import 'dart:io';

void main() {
  stdout.write("Enter the number of rows: ");
  int row = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < row; i++) {
    for (int j = 0; j < row; j++) {
      int num = (i + j) % row + 1;
      stdout.write(num.toString() + ' ');
    }
    print('');
  }
}
