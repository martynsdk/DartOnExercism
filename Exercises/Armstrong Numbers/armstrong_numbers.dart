  import 'dart:io';
  import 'dart:math';
  void main(){

    print('Enter a number:');
    int? a = int.parse(stdin.readLineSync()!);
    isArmstrong(a);
  }

  void isArmstrong(int number){
    int tmp,numberOfDigits =0, limit = 0, sum = 0;
    tmp = number;

    while(tmp>0){
      tmp = tmp~/10;
      numberOfDigits++;
    }
    tmp = number;

    while(tmp>0){
      limit = tmp % 10;
      sum = sum + pow(limit, numberOfDigits) as int;
      tmp = tmp~/10;
    }

    if(number == sum){
      print("$number is an armstrong number");
    }else{
      print("$number is not an armstrong number");
    }
  }