import 'src/adder.dart';
import 'src/subtractor.dart';
import 'src/multiplier.dart';
import 'src/divider.dart';

class Calculator {
  final _adder = Adder();
  final _subtractor = Subtractor();
  final _multiplier = Multiplier();
  final _divider = Divider();

  int add(int a, int b) => _adder.add(a, b);
  int subtract(int a, int b) => _subtractor.subtract(a, b);
  int multiply(int a, int b) => _multiplier.multiply(a, b);
  double divide(int a, int b) => _divider.divide(a, b);
}
