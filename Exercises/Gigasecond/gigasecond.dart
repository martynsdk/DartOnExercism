
import 'dart:math' show pow;

main(){
  DateTime dt(DateTime moment) =>
      moment.add(Duration(seconds: pow(10, 9) as int));

  final DateTime givenMoment = DateTime.utc(2000, DateTime.june, 01);
  print(dt(givenMoment));
}

