import 'dart:io';
void main() {
   stdout.write(" Enter the Number: ");
  int num = int.parse(stdin.readLineSync()!);
  int flag=0;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      flag = 1;
    }
  }
  if (flag == 1) {
    print(" not PRime");
  } else {
    print(" PRime");
  }
}
