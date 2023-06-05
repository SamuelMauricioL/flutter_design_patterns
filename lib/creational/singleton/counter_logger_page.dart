import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/creational/singleton/debug_logger.dart';

class CounterLoggerPage extends StatefulWidget {
  const CounterLoggerPage({Key? key}) : super(key: key);

  @override
  State<CounterLoggerPage> createState() => _CounterLoggerPageState();
}

class _CounterLoggerPageState extends State<CounterLoggerPage> {
  int _counter = 0;

  void _incrementCounter() {
    final logger = DebugLogger();
    setState(() {
      logger.log('counter: $_counter', 'sample error message');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singleton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
