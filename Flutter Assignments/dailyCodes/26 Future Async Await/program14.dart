// /// ZOMATO EXAMPLE
// import "dart:io";

// Future<String> preparingOrder(String food) {
//   print("Preparing...");
//   return Future.delayed(Duration(seconds: 5), () => food);
// }

// placeOrder() {
//   print("Mag aaj kay magavnar ?");
//   String orderName = stdin.readLineSync()!;

//   Future<String> readyFood = preparingOrder(orderName);

//   return "Your Order : $readyFood";
// }

// void main() async{
//   print("Start Zomato App");
//   var order = await placeOrder();
//   print(order);
//   print("Close Zomato App");
// }
import "dart:io";

// async function that simulates food preparation
Future<String> preparingOrder(String food) {
  print("Preparing...");
  return Future.delayed(Duration(seconds: 5), () => food);
}

// async function to place the order and wait for it to complete
Future<void> placeOrder() async {
  print("Mag aaj kay magavnar ?");
  String orderName = stdin.readLineSync()!;

  // wait for the order to be prepared
  String readyFood = await preparingOrder(orderName);

  print("Your Order : $readyFood");
}

void main() async {
  print("Start Zomato App");

  // wait for the order placement to complete
  await placeOrder();

  print("Close Zomato App");
}
