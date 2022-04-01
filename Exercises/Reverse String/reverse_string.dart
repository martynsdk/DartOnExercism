

import 'dart:io';

main(){

  print("Please enter a string:");
  String? givenString = stdin.readLineSync()!;

  var reverseString = givenString.split("").reversed.join("");
  print("The String reversed is: $reverseString");

}