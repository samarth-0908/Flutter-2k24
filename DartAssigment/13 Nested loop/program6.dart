void main() {
  int start = 12; // Initial value of the first number

  for (int row = 0; row < 4; row++) { // Loop for 4 rows
    int value = start + row * 18; // Starting value for each row
    
    // Print the first number in the row
    print('$value ');

    // Calculate and print the next three numbers in the row based on the differences
    value += 6;
    print('$value ');
    value += 2;
    print('$value ');
    value += 4;
    print('$value ');

    // Move to the next line after each row
    print('');
  }
}
