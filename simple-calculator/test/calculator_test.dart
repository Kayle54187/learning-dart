import 'package:simple_calculator/calculator_helpers.dart';
import 'package:test/test.dart';

void main() {
  group('Calculator', () {
    final calculator = Calculator();

    test('adds two numbers', () {
      expect(calculator.add(5, 3), equals(8));
    });

    test('subtracts two numbers', () {
      expect(calculator.subtract(5, 3), equals(2));
    });

    test('multiplies two numbers', () {
      expect(calculator.multiply(5, 3), equals(15));
    });

    test('divides two numbers', () {
      expect(calculator.divide(6, 3), equals(2.0));
    });

    test('throws error when dividing by zero', () {
      expect(() => calculator.divide(6, 0), throwsArgumentError);
    });
  });
}
