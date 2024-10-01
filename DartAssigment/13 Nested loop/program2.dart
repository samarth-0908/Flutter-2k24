import "dart:io";

void main() {
  stdout.write("Enter the number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  int temp = 0;
  int a = rows;

  for (int i = 1; i <= rows; i++) {
    int temp = a;
    for (int j = 1; j <= rows; j++) {
      stdout.write("$temp ");
      temp += rows;
    }
    a--;
    print('');
  }
}
