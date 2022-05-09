import 'dart:io';

main() {
  print("Please enter a phrase:");
  String? givenPhrase = stdin.readLineSync();

  List<String> words = givenPhrase
      .toString()
      .replaceAll('*', '')
      .replaceAll('-', ' ')
      .replaceAll('_', ' ')
      .split(' ');
  if (words.length > 1) {
    StringBuffer acronym = new StringBuffer();
    for (var word in words) {
      if (word.length > 0) {
        acronym.write(word[0].toUpperCase());
      }
    }
    print("The acronym for the given phrase is: '$acronym'");
  } else {
    print("There's no sentence to generate an acronym.");
  }
}
