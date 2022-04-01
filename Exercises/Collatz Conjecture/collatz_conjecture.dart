import 'dart:io';

main() {
  print("Please enter a number:\n");
  var givenNumber = int.parse(stdin.readLineSync()!);

  int steps(int number) {
    if (number <= 0) {
      print("The given number is not positive");
    }
    int stepCounter = 0;

    while (number != 1) {
      if (number % 2 == 0) {
        number ~/= 2;
      } else {
        number = (3 * number) + 1;
      }
      stepCounter++;
      print("Step $stepCounter: $number");
    }
    return stepCounter;
  }

  print(
      "The number $givenNumber will reach number 1 in ${steps(givenNumber)} steps.");
}
