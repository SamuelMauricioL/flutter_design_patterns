import 'package:flutter/material.dart';

import 'view/list_with_separator.dart';

class AdapterDartExamplePage extends StatefulWidget {
  const AdapterDartExamplePage({Key? key}) : super(key: key);

  @override
  State<AdapterDartExamplePage> createState() => _AdapterDartExamplePageState();
}

class _AdapterDartExamplePageState extends State<AdapterDartExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adapter Pattern'),
      ),
      body: LongListWithSeparator(),
    );
  }
}
