import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/state/context/trafic_light_bloc.dart';
import 'package:flutter_design_patterns/behavioral/state/states/trafic_light_state.dart';
import 'package:flutter_design_patterns/behavioral/state/states/yellow_state.dart';

class GreenState implements TrafficLightState {
  @override
  void next(TrafficLight light) {
    light.currentState = YellowState();
  }

  @override
  Color getColor() {
    return Colors.green;
  }
}
