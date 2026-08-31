import "dart:io";

void main() {
  const double baseRate = 5.0;

  print("Welcome to Eco-Ride!");
  print("Enter your travel distance:");

  int distance = int.parse(stdin.readLineSync()!);

  double cost = distance * baseRate;

  print("Your rental cost is: \$${cost.toStringAsFixed(2)}");
}
