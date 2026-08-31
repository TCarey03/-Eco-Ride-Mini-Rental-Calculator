import "dart:io";

void main() {
  const double baseRate = 5.0;
  const double scooterServiceFee = 2.0;

  String continueChoice = "y";

  while (continueChoice == "y") {
    try {
      print("\nWelcome to Eco-Ride!");

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
        print("Invalid vehicle choice. Please enter 1 or 2.");
        continue;
      }

      print("Your rental cost is: \$${cost.toStringAsFixed(2)}");
    } catch (e) {
      print("Invalid input. Please enter numbers only.");
    }

    print("\nWould you like to make another calculation?");
    print("Enter y to continue or anything else to exit.");

    continueChoice = stdin.readLineSync()!.toLowerCase();
  }

  print("Thank you for using Eco-Ride!");
}
