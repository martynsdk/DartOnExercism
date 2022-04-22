import 'dart:io';

main() {
  print("Enter the allergy score, please:");
  int? givenScore = int.parse(stdin.readLineSync()!);

  Map<String, dynamic> allergens = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128,
  };

  bool isAllergic(String value, int score) {
    return score & allergens[value] > 0;
  }

  List<String> personAllergiesList(int score) {
    var list = <String>[];
    allergens.keys.forEach((value) {
      if (isAllergic(value, score)) {
        list.add(value);
      }
    });
    return list;
  }

  String personAllergiesString = personAllergiesList(givenScore).join(', ');

  print("This person is allergic to: $personAllergiesString.");
}
