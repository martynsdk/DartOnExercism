  import 'dart:io';

  void main(){
    print("Enter a phrase: ");
    var entry = countWords(stdin.readLineSync()!);
    print("The result of the sentence word counter is: ");
    entry.forEach((key, value) {
      print("$key = $value");
    });
  }

  Map<String, int> countWords(String phrase) {
    Map<String, int> map = {};
    RegExp wordRegex =
    RegExp(r"([a-z]+('[a-z])?)|([0-9]+)", caseSensitive: false);
    wordRegex.allMatches(phrase).forEach((element) {
      String word = element[0]!.toLowerCase();
      if (map[word] != null) {
        map[word] = map[word]! + 1;
      }else{
        map[word] = 1;
      }
    });
    return map;
  }


