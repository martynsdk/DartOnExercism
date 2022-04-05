import 'dart:io';

main() {
  print("Please enter the colours separated by hyphen:\n");
  String? givenString = stdin.readLineSync();

  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ];
  List<int> values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<String> entry =
      givenString!.toLowerCase().replaceAll(' ', '').split('-');

  int sum = 0;

  for (var i = 0; i < entry.length; i++) {
    if (colors.contains(entry[i])) {
      for (var j = 0; j < 2; j++) {
        if (colors.contains(entry[j])) {
          if (sum > 9) {
            break;
          }
          sum = (sum * 10) + values[colors.indexOf(entry[j])];
        }
      }
    } else {
      print(
          "The color '${entry[i]}' entered is not valid. Please enter the color values separated by hyphens.");
      sum = 0;
      break;
    }
  }

  if (sum > 0) {
    print("The value correspondent to the entered colors is: $sum");
  }
}
