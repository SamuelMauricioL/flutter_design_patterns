import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/state/context/trafic_light_bloc.dart';
import 'package:flutter_design_patterns/behavioral/state/states/green_state.dart';
import 'package:flutter_design_patterns/behavioral/state/states/trafic_light_state.dart';

class RedState implements TrafficLightState {
  @override
  void next(TrafficLight light) {
    light.currentState = GreenState();
  }

  @override
  Color getColor() {
    return Colors.red;
  }
}
