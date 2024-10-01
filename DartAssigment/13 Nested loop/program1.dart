import 'dart:io';

void main() {
  stdout.write('Enter the number of rows: ');
  int rows = int.parse(stdin.readLineSync()!);

  int a = (rows * 2) - 1;

  int b = 1;

  int z = rows;

  for (int i = 1; i <= rows; i++) {
    int m = z;

    for (int j = 1; j <= rows; j++) {
      if (j % 2 == 0) {
        m += b;
        stdout.write("$m ");
      } else {
        if (j == 1) {
          stdout.write("$m ");
        } else {
          m += a;
          stdout.write("$m ");
        }
      }
    }
    b += 2;
    a -= 2;
    z--;
    print('');
  }
}
