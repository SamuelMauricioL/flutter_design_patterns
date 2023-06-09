import 'dart:math';
import 'package:flutter/material.dart';

class ObserverExample1Page extends StatefulWidget {
  const ObserverExample1Page({Key? key}) : super(key: key);

  @override
  State<ObserverExample1Page> createState() => _ObserverExample1PageState();
}

class _ObserverExample1PageState extends State<ObserverExample1Page> {
  Random rnd = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Observer Example 1'),
      ),
      body: Column(
        children: [
          GridView.count(
            crossAxisCount: 8,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: List.generate(
              64,
              (index) => AnimatedOpacity(
                opacity: rnd.nextBool() ? 1.0 : 0.2,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Container()],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
