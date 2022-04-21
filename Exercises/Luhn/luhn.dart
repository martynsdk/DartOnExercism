import 'dart:io';

main() {
  print("Enter a card number, please:");
  String? givenNumber = stdin.readLineSync()!;

  bool luhnValidation(String number) {
    try {
      List<int> characterList = number
          .replaceAll(new RegExp(r"\s+"), "")
          .split('')
          .reversed
          .map(int.parse)
          .toList();

      int sum = 0;
      for (int i = 0; i < characterList.length; i++) {
        i % 2 != 0
            ? sum += characterList[i] * 2 > 9
                ? characterList[i] * 2 - 9
                : characterList[i] * 2
            : sum += characterList[i];
      }

      return sum % 10 == 0;
    } on Exception catch (_) {
      if (givenNumber.length < 2) {
        print("Strings of length 1 or less are not valid.");
        return false;
      }
      print("Please type only numbers and spaces.");
      return false;
    }
  }

  luhnValidation(givenNumber)
      ? print("The entered card number is valid.")
      : print("The entered card number is invalid.");
}
