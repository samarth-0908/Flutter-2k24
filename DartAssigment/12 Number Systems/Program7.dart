import 'dart:io';
void main() {
   stdout.write(" Enter the Number: ");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }
  if (sum <num) {
    print("$num is a abundant number");
  } else {
    print("$num is not a abundant number");
  }
}
