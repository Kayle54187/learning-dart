import 'package:simple_calculator/src/multiplier.dart';
import 'package:test/test.dart';

void main() {
  group('Multiplier', () {
    test('multiplies two positive numbers', () {
      final multiplier = Multiplier();
      expect(multiplier.multiply(5, 3), equals(15));
    });

    test('multiplies a positive and a negative number', () {
      final multiplier = Multiplier();
      expect(multiplier.multiply(5, -3), equals(-15));
    });

    test('multiplies with zero', () {
      final multiplier = Multiplier();
      expect(multiplier.multiply(5, 0), equals(0));
    });
  });
}
