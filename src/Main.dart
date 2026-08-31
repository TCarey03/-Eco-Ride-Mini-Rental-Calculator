import "dart:io";

void main() {
  const double baseRate = 5.0;
  const double scooterServiceFee = 2.0;

  print("Welcome to Eco-Ride!");

  print("Choose your vehicle:");
  print("1. Bike");
  print("2. Scooter");

  int choice = int.parse(stdin.readLineSync()!);

  print("Enter your travel distance:");
  int distance = int.parse(stdin.readLineSync()!);

  double cost;

  if (choice == 1) {
    cost = distance * baseRate;
    print("You selected a Bike.");
  } else if (choice == 2) {
    cost = (distance * baseRate) + scooterServiceFee;
    print("You selected a Scooter.");
  } else {
    print("Invalid vehicle choice.");
    return;
  }

  print("Your rental cost is: \$${cost.toStringAsFixed(2)}");
}
