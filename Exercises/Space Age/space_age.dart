
import 'dart:io';

main(){
  print("Enter someone´s age in seconds");
  String? s = stdin.readLineSync();
  double ageInSeconds = double.parse(s!);

  double earthAgeInDays = ageInSeconds/86400;
  double earthAgeInYears = earthAgeInDays/365.25;
  double mercuryAgeInYears = earthAgeInYears * 0.2408467;
  double venusAgeInYears = earthAgeInYears * 0.61519726;
  double marsAgeInYears = earthAgeInYears * 1.8808158;
  double jupiterAgeInYears = earthAgeInYears * 11.862615;
  double saturnAgeInYears = earthAgeInYears * 29.447498;
  double uranusAgeInYears = earthAgeInYears * 84.016846;
  double neptuneAgeInYears = earthAgeInYears * 164.79132;

  print("This is equivalent to ${double.parse((earthAgeInYears).toStringAsFixed(2))} years in Earth");
  print("This is equivalent to ${double.parse((mercuryAgeInYears).toStringAsFixed(2))} years in Mercury");
  print("This is equivalent to ${double.parse((venusAgeInYears).toStringAsFixed(2))} years in Venus");
  print("This is equivalent to ${double.parse((marsAgeInYears).toStringAsFixed(2))} years in Mars");
  print("This is equivalent to ${double.parse((jupiterAgeInYears).toStringAsFixed(2))} years in Jupiter");
  print("This is equivalent to ${double.parse((saturnAgeInYears).toStringAsFixed(2))} years in Saturn");
  print("This is equivalent to ${double.parse((uranusAgeInYears).toStringAsFixed(2))} years in Uranus");
  print("This is equivalent to ${double.parse((neptuneAgeInYears).toStringAsFixed(2))} years in Neptune");
}