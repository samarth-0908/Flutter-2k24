import 'dart:io';

void main() {
  stdout.write(" Enter the Number of Fibonacci terms you want to generate: ");
  int n = int.parse(stdin.readLineSync()!); 
  int a = 0, b = 1;

  print("Fibonacci series up to $n terms:");

  for (int i = 1; i <= n; i++) {
    stdout.write("$a "); 
    int next = a + b;
    a = b;
    b = next;
  }
}
