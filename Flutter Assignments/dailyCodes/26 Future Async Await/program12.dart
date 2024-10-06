Future<int> fun() {
  return Future.delayed(Duration(seconds: 5), () => 10);
}

void main() async {
  print("Start Main");
  int x = await fun();
  print(x);
  print("End main");
}
