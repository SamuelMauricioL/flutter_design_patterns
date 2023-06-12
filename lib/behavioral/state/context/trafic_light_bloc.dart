import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/state/states/green_state.dart';
import 'package:flutter_design_patterns/behavioral/state/states/trafic_light_state.dart';

class TrafficLight {
  TrafficLightState currentState = GreenState();

  void next() {
    currentState.next(this);
  }

  Color getColor() {
    return currentState.getColor();
  }
}
