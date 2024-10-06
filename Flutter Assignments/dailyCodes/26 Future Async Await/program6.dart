void main() {
  print("Statement 1");
  Future<String> retVal = Future(() => "Incubators");
  print("Return Val = $retVal");
  print("Statement 2");
}
