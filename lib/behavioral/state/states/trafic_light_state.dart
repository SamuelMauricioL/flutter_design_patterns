import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/state/context/trafic_light_bloc.dart';

abstract class TrafficLightState {
  void next(TrafficLight light);
  Color getColor();
}
