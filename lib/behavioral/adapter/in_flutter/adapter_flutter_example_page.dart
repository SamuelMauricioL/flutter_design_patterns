import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/adapter/in_flutter/adapters/contact_model_adapter.dart';
import 'package:mrx_charts/mrx_charts.dart';

class AdapterFlutterExamplePage extends StatefulWidget {
  const AdapterFlutterExamplePage({Key? key}) : super(key: key);

  @override
  State<AdapterFlutterExamplePage> createState() =>
      _AdapterFlutterExamplePageState();
}

class _AdapterFlutterExamplePageState extends State<AdapterFlutterExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
            ),
            child: GestureDetector(
              onTap: () => setState(() {}),
              child: const Icon(
                Icons.refresh,
                size: 26.0,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Bar'),
      ),
      backgroundColor: const Color(0xFF1B0E41),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 400.0,
            maxWidth: 600.0,
          ),
          padding: const EdgeInsets.all(24.0),
          child: Chart(
            layers: ContactModelAdapter().layers(),
            padding: const EdgeInsets.symmetric(horizontal: 12.0).copyWith(
              bottom: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}
