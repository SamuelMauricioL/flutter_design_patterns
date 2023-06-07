import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/calculator_strategy.dart';

class SubtractStrategy extends CalculatorStrategy {
  static SubtractStrategy? _instance;

  SubtractStrategy._internal() {
    _instance = this;
  }

  factory SubtractStrategy() => _instance ?? SubtractStrategy._internal();

  @override
  double calculate(double a, double b) => a - b;
}
