import 'dart:io';

main() {
  print("Enter a number, please:");
  int givenNumber = int.parse(stdin.readLineSync()!);
  print(
      "Enter in words the Nth Prime number you want to check (eg. second prime)");
  int givenPrime = int.parse(stdin.readLineSync()!);
  int nthPrimeNumber = 0;
  if (givenPrime > 0 && givenNumber > 0) {
    List<int> primeNumbers = [];
    int a = 2;
    outerLoop:
    for (int i = a; i <= givenNumber; i++) {
      for (int x = 2; x <= i / a; x++) {
        if (i % x == 0) {
          continue outerLoop;
        }
      }
      if (primeNumbers.length < givenPrime) {
        primeNumbers.add(i);
        nthPrimeNumber = i;
      }
    }

    if (givenPrime <= primeNumbers.length) {
      print(
          "The ${givenPrime}th Prime number of the number $givenNumber is: $nthPrimeNumber.");
    } else {
      print(
          "The entered given Prime is largest than the nth Prime number of the given number. Please try another number.");
    }
  }

  if (givenNumber < 1) {
    print("There are no prime numbers for the entered number.");
  }
  if (givenPrime < 1) {
    print("There's no Zeroth Prime number.");
  }
}
