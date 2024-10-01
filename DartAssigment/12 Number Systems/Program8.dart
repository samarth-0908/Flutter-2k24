import 'dart:io';
void main() {
   stdout.write(" Enter the Number: ");
  int num = int.parse(stdin.readLineSync()!);
  int flag = 0;
  while (num > 0) {
    int rem = num % 10;
    if (rem == 0) {
      flag = 1;
    }
    num=num ~/ 10;
  }
  if (flag == 1) {
    print("duck number");
  } else {
    print("not duck number");
  }
}
