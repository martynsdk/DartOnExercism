import 'dart:io';

main() {
  print('Please enter a number:');
  int? givenNumber = int.tryParse(stdin.readLineSync()!);

  if (givenNumber != null) {
    List<String> comparison(int value) {
      List<String> result = [];
      if (value & 1 == 1) result.add('wink');
      if (value & 2 == 2) result.add('double blink');
      if (value & 4 == 4) result.add('close your eyes');
      if (value & 8 == 8) result.add('jump');
      if (value & 16 == 16) result.reversed.toList();
      return result;
    }

    print("Result: ${comparison(givenNumber)}");
  } else {
    print('The input is not a numeric string, please provide a valid number.');
  }
}
