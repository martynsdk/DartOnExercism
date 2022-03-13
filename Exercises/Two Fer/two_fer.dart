  import 'dart:io';

  void main() {
    String twofer() {
      String? name = stdin.readLineSync();
    if (name == ""){
      name = "you";
    }
    String twofer(name) => "One for $name, one for me.";
    return twofer(name);

    }
    print (twofer());
  }