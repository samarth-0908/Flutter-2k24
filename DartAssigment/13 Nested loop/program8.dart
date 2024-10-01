import 'dart:io';

void main() {
  stdout.write("Enter number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);

  int temp = 1;
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      if (temp % 6 == 0) {
        stdout.write('${++temp} ');
      } else {
        stdout.write("$temp ");
      }
      temp++;
    }
    print('');
  }
}
