import 'package:equatable/equatable.dart';

abstract class CalculatorStrategy extends Equatable {
  double calculate(double a, double b);

  @override
  List<Object> get props => [];
}
