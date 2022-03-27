
  import 'dart:math';

  main(){

    String generateRandomString(int length) {
      final _random = Random();
      const _availableChars =
          'CAGT';
      final randomString = List.generate(length,
              (index) => _availableChars[_random.nextInt(_availableChars.length)])
          .join();

      return randomString;
    }

    String toRna(String dna) {
    return dna.split("").map((c) {
    switch (c) {
    case "G":
    return "C";
    case "C":
    return "G";
    case "T":
    return "A";
    case "A":
    return "U";
    default:
    throw new ArgumentError("Invalid input");
    }
    }).join("");
    }

    String a = generateRandomString(10);
    String b = toRna(a);
    print("For the DNA Sequence '$a', the RNA complement is '$b'.");


  }