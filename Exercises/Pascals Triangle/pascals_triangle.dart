
  import 'dart:io';

  main() {

    print("Enter a number of rows for the triangle : ");
    String? string = stdin.readLineSync();
    var givenRows;

    List<List<int>> listOfRows(int rowCount) {
      List<List<int>> result = [];

      for(int i = 1; i <= rowCount; i++) {
        int currentValue = 1;
        List<int> currentRow = [];

          for(int j = 1; j <= i; j++) {
          currentRow.add(currentValue);
          currentValue = currentValue * (i - j);
          currentValue ~/= j;

        }

        result.add(currentRow);
        print(currentRow);
      }
      return result;
    }

    try{
      givenRows = int.parse(string!);
      listOfRows(givenRows);
    }
    catch(e){
      print("The entered character is not a number.");
    }

    /***
    bool isNumeric(String string) {
      final numericRegex =
      RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$');

      return numericRegex.hasMatch(string);
    }
***/



  }