import 'package:simple_calculator/src/subtractor.dart';
import 'package:test/test.dart';

void main() {
  group('Subtractor', () {
    test('subtracts two positive numbers', () {
      final subtractor = Subtractor();
      expect(subtractor.subtract(5, 3), equals(2));
    });

    test('subtracts a smaller number from a larger number', () {
      final subtractor = Subtractor();
      expect(subtractor.subtract(3, 5), equals(-2));
    });

    test('subtracts two negative numbers', () {
      final subtractor = Subtractor();
      expect(subtractor.subtract(-5, -3), equals(-2));
    });
  });
}
