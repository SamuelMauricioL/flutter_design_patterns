import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_2/counter_controller_stream.dart';

class ObserverExample2Page extends StatefulWidget {
  const ObserverExample2Page({super.key});

  @override
  State<ObserverExample2Page> createState() => _ObserverExample2PageState();
}

class _ObserverExample2PageState extends State<ObserverExample2Page> {
  late CounterControllerStream _counterController;
  @override
  void initState() {
    _counterController = CounterControllerStream();
    super.initState();
  }

  @override
  void dispose() {
    _counterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Streams")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: StreamBuilder<int>(
              stream: _counterController.counterStream,
              initialData: 0,
              builder: (
                BuildContext context,
                AsyncSnapshot<int> snapshot,
              ) {
                if (snapshot.hasData) {
                  return Text(
                    '${_counterController.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                } else {
                  return Text(
                    'Empty data',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }
              },
            ),
          ),
          Center(
            child: StreamBuilder<int>(
              stream: _counterController.counterStream,
              initialData: 0,
              builder: (
                BuildContext context,
                AsyncSnapshot<int> snapshot,
              ) {
                if (snapshot.hasData) {
                  return Text(
                    '${_counterController.counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                } else {
                  return Text(
                    'Empty data',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () =>
                    _counterController.eventSink.add(Event.decrement),
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: () => _counterController.eventSink.add(Event.reset),
                tooltip: 'Reset',
                child: const Icon(Icons.replay_outlined),
              ),
              FloatingActionButton(
                onPressed: () =>
                    _counterController.eventSink.add(Event.increment),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
