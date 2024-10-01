import "dart:io";

void main() {
  stdout.write("Enter the number of rows: ");
  int rows = int.parse(stdin.readLineSync()!);
  int temp = 10;

  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= rows; j++) {
      if (temp <= 100) {
        stdout.write("$temp  ");

        if(temp == 100) {
          temp += 1;
        }
        else{
        temp += 10;
        }

      } else {
        int a = temp;
        stdout.write("$a  ");
        temp += 1;
      }
    }
    print('');
  }
}
