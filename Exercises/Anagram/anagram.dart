

  import 'dart:io';
  import 'dart:math';

  main(){

    print("There will be generated 5 candidates to be the anagram of the given word.");
    print("Please enter a word in the console (Case insensitive).\n");
    String? givenWord = stdin.readLineSync();
    print("\n");

    String sortAnagram(String str) {
      List<String> treated = str.toLowerCase().split('');
      treated.sort();
      return treated.join('');
    }

    var anagram = sortAnagram(givenWord!);

    String generateRandomString(int length) {
      final _random = Random();
      String? _availableChars = 'abcdefghijklmnopqrstuvwxyz';
      final randomString = List.generate(length,
              (index) => _availableChars[_random.nextInt(_availableChars.length)])
          .join();

      return randomString;
    }

    bool isAnagram(String str1, String str2) {
      String normalize(String str) => (str
          .toLowerCase()
          .replaceAll(RegExp(r'[^a-z0-9]', caseSensitive: false), '')
          .split('')
        ..sort())
          .join('');
      return normalize(str1) == normalize(str2);
    }

  List candidates = [];

      candidates.add(anagram);
      candidates.add(generateRandomString(givenWord.length));
      candidates.add(generateRandomString(givenWord.length));
      candidates.add(generateRandomString(givenWord.length));
      candidates.add(generateRandomString(givenWord.length));


    List shuffledList(List candidates) {
      var random = new Random();

      // Go through all elements.
      for (var i = candidates.length - 1; i > 0; i--) {

        // Pick a pseudorandom number according to the list length
        var n = random.nextInt(i + 1);

        var temp = candidates[i];
        candidates[i] = candidates[n];
        candidates[n] = temp;
      }

      return candidates;
    }

      shuffledList(candidates);

    for (var i = 0; i < candidates.length; i++){

      if(isAnagram(givenWord, candidates[i])){
        if(givenWord.contains(candidates[i])){
          print("Oh! Lucky you! The random word '${candidates[i]}' is exactly the same as the given word");
        }
        else{
          print("The random word '${candidates[i]}' is Anagram of '${givenWord}'");
        }
      }
      else{
        print("The random word '${candidates[i]}' is not Anagram of '${givenWord}'");
      }

    }

  }


