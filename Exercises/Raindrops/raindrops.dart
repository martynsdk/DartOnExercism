
import 'dart:io';

main(){

  String convert(int number) {
    var string = "";
    if (number % 3 == 0) string += "Pling";
    if (number % 5 == 0) string += "Plang";
    if (number % 7 == 0) string += "Plong";
    return string.isEmpty ? number.toString() : string;
  }

  print("Please enter a number:");
  int? entry = int.parse(stdin.readLineSync()!);
  print("And the output is: ${convert(entry)}");

}