class Test1 {
  int x = 10;
  int y = 30;
  Test1(int y, [this.x = 8]);
}

class Test2 extends Test1 {
  Test2(int x, int y) : super(y, x);

  void fun() {
    this.x = 8;
    print(x);
  }
}

void main() {
  Test2 obj = Test2(10, 40);
  print(obj.x);
  obj.fun();
}
