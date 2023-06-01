import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/factory_method/shape.dart';
import 'package:flutter_design_patterns/factory_method/utils.dart';

/// global state data
Shape currShape = NullShape();
double _canvasWidth = 400;
double _canvasHeight = 400;

class FactoryPage extends StatefulWidget {
  const FactoryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FactoryPageState createState() => _FactoryPageState();
}

class _FactoryPageState extends State<FactoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory Method Pattern'),
      ),
      body: ListView(children: <Widget>[
        Text(
          currShape.getName,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(
          width: _canvasWidth,
          height: _canvasHeight,
          child: CustomPaint(
            painter: CanvasPainter(),
          ),
        ),
        ElevatedButton(
          child: const Text('Generate New Random Shape'),
          onPressed: () {
            setState(() {
              currShape =
                  Utils.generateRandomShape(Size(_canvasWidth, _canvasHeight));
            });
          },
        ),
      ]),
    );
  }
}

class CanvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    currShape.draw(canvas);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
