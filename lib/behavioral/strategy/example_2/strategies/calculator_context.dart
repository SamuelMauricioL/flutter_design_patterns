// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/calculator_strategy.dart';

class CalculatorContexto {
  CalculatorStrategy _calculator;

  CalculatorContexto(this._calculator);

  setCalculator(CalculatorStrategy value) {
    _calculator = value;
    print('[CalculatorStrategy] $_calculator');
  }

  CalculatorStrategy get calculator => _calculator;

  double calculate(double a, double b) => _calculator.calculate(a, b);
}
