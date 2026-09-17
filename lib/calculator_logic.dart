class CalculatorLogic {
  static double calculate(double a, String operator, double b) {
    switch (operator) {
      case '+':
        return a + b;
      case '-':
        return a - b;
      case '×':
        return a * b;
      case '÷':
        if (b == 0) {
          throw ArgumentError('Cannot divide by zero');
        }
        return a / b;
      default:
        throw ArgumentError('Unknown operator: $operator');
    }
  }
}