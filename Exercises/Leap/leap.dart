
import 'dart:io';

    bool leapYear(int year){
      return (year / 4) % 1 == 0 &&
          ((year / 100) % 1 != 0 || (year / 400) % 1 == 0);
      }

    void main(){

      print("Enter a year to check : ");
      String? s = stdin.readLineSync();
        int year = int.parse(s!);

      if (leapYear(year)) {
        print("Leap Year");
      } else {
        print("Not a Leap Year");
      }
    }