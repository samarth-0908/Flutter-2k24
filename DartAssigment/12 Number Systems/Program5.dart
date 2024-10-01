import 'dart:io';
void main() {
   stdout.write(" Enter the Number: ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int reversedNum = 0;

  while (num > 0) {
    int remainder = num % 10;
    reversedNum = reversedNum * 10 + remainder;
    num ~/= 10;
  }

  if (temp == reversedNum) {
    print("Palindrome number");
  } else {
    print("Not a palindrome number");
  }
}
