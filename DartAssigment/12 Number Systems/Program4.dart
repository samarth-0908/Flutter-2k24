import 'dart:io';
void main() {
   stdout.write(" Enter the Number: ");
  int num = int.parse(stdin.readLineSync()!);
  int temp = num;
  int count = 0;
  int sum = 0;
  int x = num;
  while (x > 0) {
    x = x ~/ 10;
    count++;
  }
  x = num;  
  while (x > 0) {
    int rem = x % 10;
    int prod = 1;
    for (int i = 0; i < count; i++) {
      prod *= rem;
    }
    sum += prod;
    x ~/= 10;
  }
  if (temp == sum) {
    print("Armstrong number");
  } else {
    print("Not an Armstrong number");
  }
}
