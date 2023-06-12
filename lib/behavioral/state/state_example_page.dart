import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_design_patterns/behavioral/state/context/trafic_light_bloc.dart';

class StateExamplePage extends StatefulWidget {
  const StateExamplePage({Key? key}) : super(key: key);

  @override
  State<StateExamplePage> createState() => _StateExamplePageState();
}

class _StateExamplePageState extends State<StateExamplePage> {
  final light = TrafficLight();
  int cycle = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        cycle++;
        light.next();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Traffic Light Simulation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: light.getColor(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Cycle: $cycle',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
