import 'package:simple_calculator/src/adder.dart';
import 'package:test/test.dart';

void main() {
  group('Adder', () {
    test('adds two positive numbers', () {
      final adder = Adder();
      expect(adder.add(5, 3), equals(8));
    });

    test('adds a positive and a negative number', () {
      final adder = Adder();
      expect(adder.add(5, -3), equals(2));
    });

    test('adds two negative numbers', () {
      final adder = Adder();
      expect(adder.add(-5, -3), equals(-8));
    });
  });
}
