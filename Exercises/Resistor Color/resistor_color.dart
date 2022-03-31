
import 'dart:io';

main(){

  print("Please enter a String or a number less than 10:\n");
  String? givenString = stdin.readLineSync();
  var correspondent;

  List<String> colors = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'];
  List<int> values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

try {
  if (colors.contains(givenString)) {
    int colorCode(String color) {
      for (int i = 0; i < colors.length; i++) {
        if (colors[i].toLowerCase() == color.toLowerCase()) {
          return values[i];
        }
      }
      return -1;
    }
    correspondent = "The color correspondent to '$givenString' is: '${colorCode(givenString!)}'";
  }
  else if (int.parse(givenString!) < 10) {
    correspondent = "The value correspondent to '$givenString' is: '${colors[int.parse(givenString)]}'";
  }
  else {
    correspondent = 'There´s no correspondent code or color.';
  }
}
catch(e){
  correspondent = "There´s no correspondent code or color.";
}
print("$correspondent");
}