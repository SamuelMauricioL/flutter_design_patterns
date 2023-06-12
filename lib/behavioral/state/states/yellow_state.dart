import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/state/context/trafic_light_bloc.dart';
import 'package:flutter_design_patterns/behavioral/state/states/red_state.dart';
import 'package:flutter_design_patterns/behavioral/state/states/trafic_light_state.dart';

class YellowState implements TrafficLightState {
  @override
  void next(TrafficLight light) {
    light.currentState = RedState();
  }

  @override
  Color getColor() {
    return Colors.yellow;
  }
}
