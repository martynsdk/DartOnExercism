
  import 'dart:math';

  String generateRandomString(int length) {
    final _random = Random();
    const _availableChars =
        'CAGT';
    final randomString = List.generate(length,
            (index) => _availableChars[_random.nextInt(_availableChars.length)])
        .join();

    return randomString;
  }

  main(){

    int distance(String s1,String s2) {
      int dist = 0;

      if(s1.length == 0 && s2.length == 0) {
        return dist;
      }
      else if(s1.length == 0 || s2.length == 0) {
        print("no strand must be empty");
      }

      else if(s1.length != s2.length) {
        print("left and right strands must be of equal length");
      }
      for(int i = 0; i < s1.length; i++) {
        if(s1[i] != s2[i]) {
          dist++;
        }
      }
      return dist;
    }

    String a = generateRandomString(17);
    String b = generateRandomString(17);
    print("The 1st DNA Sequence generated is $a");
    print("The 2nd DNA Sequence generated is $b");
    if(distance(a, b) == 17){
      print("\n There was no equal characters in the sequence, so Hamming Distance is 17");
    }
    else{
      print("\n Hamming Distance is ${distance(a, b)}");
    }
  }