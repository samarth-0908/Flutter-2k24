import 'dart:io';

void main() {
  stdout.write('Enter the number of rows: ');
  int row = int.parse(stdin.readLineSync()!);
  int num = 1;

  for (int i = 0; i < row; i++) {
    for (int j = 0; j < row; j++) {
      stdout.write(convertToBinary(num) + '\t');
      num++;
    }
    print('');
  }
}

String convertToBinary(int number) {
  String binary = "";

  while (number > 0) {
    binary = (number % 2).toString() + binary;
    number ~/= 2;
  }

  if (binary == "") {
    return "0";
  } else {
    return binary;
  }
}
