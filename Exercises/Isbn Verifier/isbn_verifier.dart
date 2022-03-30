
  import 'dart:io';

  main(){

    print("Please enter a valid book identification number! eg.(x-xxx-xxxxx-x):\n");
    String? givenString = stdin.readLineSync()!;
    bool validateNumbers = false, validateDigit = false, validateIsbn = false;

    if ((givenString.length == 13 && givenString[1] == '-' && givenString[5] == '-' && givenString[11] == '-') || givenString.length == 10){
      var newString = givenString.toLowerCase().replaceAll('-', '');

        for (var i = 0; i <= newString.length - 2; i++) {
          if (newString[i].contains(new RegExp(r'[0-9]'))) {
            validateNumbers = true;
          }
          else {
            validateNumbers = false;
            i = newString.length;
          }
        }

        if(newString[9].toLowerCase().contains(new RegExp(r'[x, 0-9]'))){
          if(validateNumbers == true){
            validateDigit = true;
          }
        }
        else{
          validateDigit = false;
        }

      if (validateNumbers == true && validateDigit == true){

        var digits = newString.split('').where((s) => s != '-').map((s) => s == 'x' ? 10 : int.parse(s)).toList();
        var total = 0;
        for (var i = 0; i < digits.length; i++) {
          total += digits[i] * (10 - i);
        }

        if(total % 11 == 0){
          validateIsbn = true;
        }

      }

    }
    else{
      validateNumbers = false;
      validateDigit = false;
    }

    if(validateIsbn == true){
      print("\n'$givenString' is a valid a valid ISBN-10 number.");
    }
    else{
      print("\n'$givenString' is not a valid a valid ISBN-10 number.");
    }

  }