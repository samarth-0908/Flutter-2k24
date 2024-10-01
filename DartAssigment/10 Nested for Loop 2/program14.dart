class Test {
  int x = 20;
}

class Test2 extends Test {
  static int y = 20;

  void change() {
    y = 30;
    x = 10;
  }
}

void main() {
  Test2 obj = Test2();
  obj.change();
  print(obj.x);
  print(Test2.y);
}
