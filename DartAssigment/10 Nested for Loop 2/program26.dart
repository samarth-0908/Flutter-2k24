class Core2web {
  int x = 30;
  int y = 30;
}

class Incubators extends Core2web {
  int x;
  Incubators(this.x);

  void gun() {
    this.x = 8;
    this.y = 19;
  }

  void fun() {
    print(super.x);
    print(super.y);
  }
}

void main() {
  Incubators obj = Incubators(10);
  obj.gun();
  obj.fun();
}