import 'dart:io';

void main(){
  print("Enter a phrase: ");
  var entry = response(stdin.readLineSync()!);
  print(entry);

}

  String response(String input) {
    String cleanedInput = cleanInput(input);
    if (emptyAddress(cleanedInput) || !isMultipleCharacters(cleanedInput))
      return 'Fine. Be that way!';
    else if (isYellingQuestion(cleanedInput))
      return "Calm down, I know what I'm doing!";
    else if (isQuestion(cleanedInput))
      return 'Sure.';
    else if (isYelling(cleanedInput))
      return 'Whoa, chill out!';
    else
      return 'Whatever.';
  }
  bool emptyAddress(String input) {
    return input.isEmpty;
  }
  bool isQuestion(String input) {
    return input.endsWith('?');
  }
  bool isYelling(String input) {
    return input == input.toUpperCase() && input.contains(RegExp(r"[a-zA-Z]"));
  }
  bool isYellingQuestion(String input) {
    return isQuestion(input) && isYelling(input);
  }
  bool isMultipleCharacters(String input){
    return input.length > 1;
  }

  String cleanInput(String input) {
    var digitsPunctuation = new RegExp(r"\s");
    String cleaned = input.replaceAll(digitsPunctuation, '');
    return cleaned;
  }

  // Thanks to "https://exercism.org/tracks/dart/exercises/bob/solutions/tsvng"