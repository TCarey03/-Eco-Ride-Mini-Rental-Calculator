Eco-Ride Journal
Phase 1: Basic Input & Math
How did null safety affect your solution?

Null safety affected my solution because stdin.readLineSync() can potentially return a null value. Dart requires me to handle that possibility before using the input. I used the ! operator after stdin.readLineSync() to tell Dart that I expect the user to enter a value.

I also had to use int.parse() because the input from stdin.readLineSync() is returned as a String. The int.parse() method converts that String into an integer so that I can multiply the distance by the base rate.

One challenge was understanding why the ! was necessary. I learned that it tells Dart that I am confident the value will not be null.
