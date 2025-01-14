import 'package:simple_calculator/src/divider.dart';
import 'package:test/test.dart';

void main() {
  group('Divider', () {
    test('divides two positive numbers', () {
      final divider = Divider();
      expect(divider.divide(6, 3), equals(2.0));
    });

    test('divides a positive by a negative number', () {
      final divider = Divider();
      expect(divider.divide(6, -3), equals(-2.0));
    });

    test('throws error when dividing by zero', () {
      final divider = Divider();
      expect(() => divider.divide(6, 0), throwsArgumentError);
    });
  });
}
