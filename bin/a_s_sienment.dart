import 'dart:io';

main()
{
  print("Smart Temperature Converter");
  print("Celsius to Fahrenheit");
  print("plaese input celeisu:");
  double C = double.parse(stdin.readLineSync()!);
  double F = C*(9/5)+32;
  print("Fahrenheit is $F");


  print("\nFahrenheit to Celsius");
  print("plaese input Fahrenheit: ");
  double F2 = double.parse(stdin.readLineSync()!);
  double C2 = (F2-32)*5/9;
  print("Celesius is $C2");


  print("\nCelsius to kelvin");
  print("plaese input celeisu:");
  double C3 = double.parse(stdin.readLineSync()!);
  double K = C3+273.15;
  print("Kelvin is $K");

  print("\nKelvin to Celsius");
  print("plaese input Kelvin: ");
  double K2 = double.parse(stdin.readLineSync()!);
  double C4= K2-273.15;
  print("Celesius is $C4");


  print("\nFahrenheit to Kelvin");
  print("plaese input Fahrenheit: ");
  double F3 = double.parse(stdin.readLineSync()!);
  double K3 = (F3-32)*5/9+273.15;
  print("Kalvin is $K3");

  print("\nKelvin to Fahrenheit");
  print("plaese input Kelvin: ");
  double K4 = double.parse(stdin.readLineSync()!);
  double F4= (K4-273.15)*9/5+32;
  print("Farenheit is $F4");

}

