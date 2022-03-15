import 'dart:io';

void main(){

  print ("Enter the word, please! (Numbers will not count):");
  var a = stdin.readLineSync();

  int totalOfPoints(String word){
    int totalOfPoints = 0;
    word = word.toUpperCase();
    List<String> split = word.split('');
    for (var i=0; i<split.length; i++) {
      String letter = split[i];
      if('A, E, I, O, U, L, N, R, S, T'.indexOf(letter) > -1) totalOfPoints += 1;
      if('D, G'.indexOf(letter) > -1) totalOfPoints += 2;
      if('B, C, M, P'.indexOf(letter) > -1) totalOfPoints += 3;
      if('F, H, V, W, Y'.indexOf(letter) > -1) totalOfPoints += 4;
      if('K'.indexOf(letter) > -1) totalOfPoints += 5;
      if('J, X'.indexOf(letter) > -1) totalOfPoints += 8;
      if('Q, Z'.indexOf(letter) > -1) totalOfPoints += 10;
    }
    return totalOfPoints;
  }
  print("Total of points = ${totalOfPoints(a!)}");
}