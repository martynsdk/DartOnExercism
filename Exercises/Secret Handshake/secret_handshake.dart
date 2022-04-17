


import 'dart:io';

main(){

  print('Please enter a number:');
  int? a = int.parse(stdin.readLineSync()!);
  var s = a.toRadixString(2);

  print(s);




}