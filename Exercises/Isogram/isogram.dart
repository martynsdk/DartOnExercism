import 'dart:io';

main() {
  print("Please enter a word in the console (Case insensitive):\n");
  String? givenWord = (stdin.readLineSync())?.toLowerCase();

  var splitWord = givenWord?.split('').toSet();
  if (splitWord?.length == givenWord?.length) {
    print('The word $givenWord is an isogram!');
  } else {
    print('The word $givenWord is not an isogram');
  }
}
