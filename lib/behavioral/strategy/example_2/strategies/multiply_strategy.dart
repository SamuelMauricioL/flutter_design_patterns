import 'package:flutter_design_patterns/behavioral/strategy/example_2/strategies/calculator_strategy.dart';

class MultiplyStrategy extends CalculatorStrategy {
  @override
  double calculate(double a, double b) => a * b;
}
