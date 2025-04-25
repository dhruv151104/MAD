import 'dart:io';

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Choose an operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  switch (operation) {
    case '+':
      print("Result: ${add(num1, num2)}");
      break;
    case '-':
      print("Result: ${subtract(num1, num2)}");
      break;
    case '*':
      print("Result: ${multiply(num1, num2)}");
      break;
    case '/':
      if (num2 != 0) {
        print("Result: ${divide(num1, num2)}");
      } else {
        print("Error: Division by zero is not allowed.");
      }
      break;
    default:
      print("Invalid operation.");
  }
}

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  return a / b;
}