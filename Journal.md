Eco-Ride Journal
Phase 1: Basic Input & Math
How did null safety affect your solution?

Null safety affected my solution because stdin.readLineSync() can potentially return a null value. Dart requires me to handle that possibility before using the input. I used the ! operator after stdin.readLineSync() to tell Dart that I expect the user to enter a value.

I also had to use int.parse() because the input from stdin.readLineSync() is returned as a String. The int.parse() method converts that String into an integer so that I can multiply the distance by the base rate.

One challenge was understanding why the ! was necessary. I learned that it tells Dart that I am confident the value will not be null.

-------------------------------------------------------

Phase 2: Vehicle Choice
How did you structure your conditional statements (if/else) to handle the user's vehicle choice?

I used an if/else if/else structure to handle the user's vehicle choice. If the user enters 1, the program calculates the rental cost using the base rate for a Bike. If the user enters 2, the program calculates the rental cost using the base rate and adds a small service fee for a Scooter.

I also included an else statement to handle an invalid vehicle choice. If the user enters something other than 1 or 2, the program displays an error message and exits.

I chose this structure because there are three possible outcomes: the user chooses a Bike, the user chooses a Scooter, or the user enters an invalid choice.

--------------------------------------------------------

Phase 3: Continuous Loop & Exit Option
Which type of loop did you choose (while or do-while), and why?

I chose to use a while loop because I wanted the program to continue running while the user enters y to make another calculation. I created a variable called continueChoice and initially set it to "y" so the program would run at least once.

After each rental calculation, the program asks the user if they want to continue. If they enter y, the while loop runs again. If they enter anything other than y, the condition becomes false and the program exits the loop.

I chose a while loop because the condition clearly describes when the program should continue running. It also matches the requirement that anything other than the continue key should cause the program to exit.
