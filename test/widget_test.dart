
import 'package:flutter_test/flutter_test.dart';
import 'package:calculator_app/calculator_logic.dart';

void main() {
  group('CalculatorLogic.calculate', () {
    test('adds two numbers', () {
      expect(CalculatorLogic.calculate(2, '+', 2), 4);
    });

    test('subtracts two numbers', () {
      expect(CalculatorLogic.calculate(10, '-', 4), 6);
    });

    test('multiplies two numbers', () {
      expect(CalculatorLogic.calculate(3, '×', 5), 15);
    });

    test('divides two numbers', () {
      expect(CalculatorLogic.calculate(20, '÷', 4), 5);
    });

    test('throws when dividing by zero', () {
      expect(
        () => CalculatorLogic.calculate(5, '÷', 0),
        throwsArgumentError,
      );
    });

    test('throws on unknown operator', () {
      expect(
        () => CalculatorLogic.calculate(5, '%', 2),
        throwsArgumentError,
      );
    });
  });
}