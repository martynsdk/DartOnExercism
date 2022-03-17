  import 'dart:math';
  import 'dart:io';

  main(){

    print("Enter a number: ");
    var a = stdin.readLineSync();
    int number = int.parse(a!);

    num squareOfSum(num number) => pow(number * (number + 1) / 2, 2);
    num sumOfSquare(num number) => number * (number + 1) * (2 * number + 1) / 6;
    num differenceOfSquares(num number) => squareOfSum(number) - sumOfSquare(number);
    print ( "The difference between square of sum and sum of square "
        "of the first $number numbers is ${differenceOfSquares(number)}");

  }

//test
