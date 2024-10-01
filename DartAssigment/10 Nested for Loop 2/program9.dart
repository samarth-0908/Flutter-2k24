import 'dart:io';

void main() {
  stdout.write('Enter the number of rows: ');
  int n = int.parse(stdin.readLineSync()!);  // Take the input from the user

  for (int i = 1; i <= n; i++) {
    int num = i;
    int increment = 4;

    for (int j = 1; j <= i; j++) {
      stdout.write('$num ');
      num += increment;  // Increment the number by the current increment
      increment--;  // Decrease the increment by 1 after each number
    }
    stdout.writeln();  // Move to the next line after completing the row
  }
}
