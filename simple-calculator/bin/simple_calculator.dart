import 'dart:io';
import 'package:simple_calculator/calculator.dart';

void main() {
  final calculator = Calculator();

  print('Welcome to the Calculator App!');
  print('Available operations: add, subtract, multiply, divide');

  while (true) {
    stdout.write('\nEnter operation (or "exit" to quit): ');
    final operation = stdin.readLineSync()?.trim();

    if (operation == null || operation.toLowerCase() == 'exit') {
      print('Goodbye!');
      break;
    }

    if (!['add', 'subtract', 'multiply', 'divide'].contains(operation)) {
      print('Invalid operation. Try again.');
      continue;
    }

    stdout.write('Enter the first number: ');
    final num1 = int.tryParse(stdin.readLineSync() ?? '');
    if (num1 == null) {
      print('Invalid number. Try again.');
      continue;
    }

    stdout.write('Enter the second number: ');
    final num2 = int.tryParse(stdin.readLineSync() ?? '');
    if (num2 == null) {
      print('Invalid number. Try again.');
      continue;
    }

    try {
      switch (operation) {
        case 'add':
          print('Result: ${calculator.add(num1, num2)}');
          break;
        case 'subtract':
          print('Result: ${calculator.subtract(num1, num2)}');
          break;
        case 'multiply':
          print('Result: ${calculator.multiply(num1, num2)}');
          break;
        case 'divide':
          print('Result: ${calculator.divide(num1, num2)}');
          break;
      }
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }
}
