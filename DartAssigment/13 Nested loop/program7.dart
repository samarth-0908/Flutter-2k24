import 'dart:io';

void main() {
  stdout.write("Enter the number of rows: ");
  int row = int.parse(stdin.readLineSync()!);
  int temp1 = 0;
  int temp3 = 0;

  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= row; j++) {
      temp3 += temp1 * 2;
      stdout.write("$temp3  ");
      temp1 += 1;
    }
    print('');
  }
}
