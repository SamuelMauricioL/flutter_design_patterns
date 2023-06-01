import 'dart:math';

import 'package:flutter/material.dart';

/// abstract class para todos los Shapes
///
/// Especificamos los siguiente:
///   [color] color del borde
///   [name] es el nombre del Shape
///   [vertices] lista de los vertices que conforman el objeto
abstract class Shape {
  Color _color = Colors.amber;
  String _name = "Shape";
  final List<Point> _vertices = <Point>[];

  void draw(Canvas canvas);

  double getArea();

  Color get getColor {
    return _color;
  }

  String get getName {
    return _name;
  }
}

class Rectangle implements Shape {
  late double _width;
  late double _height;

  Rectangle(Color color, Point position, double width, double height) {
    _color = color;
    _name = "Rectangle";
    _width = width;
    _height = height;
    _vertices.add(position);
    _vertices.add(Point(position.x + width, position.y));
    _vertices.add(Point(position.x, position.y - height));
    _vertices.add(Point(position.x + width, position.y - height));
  }

  @override
  void draw(Canvas canvas) {
    var paint = Paint()
      ..color = _color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRect(
      Offset(_vertices[0].x.toDouble(), _vertices[0].y.toDouble()) &
          Size(_width, _height),
      paint,
    );
  }

  @override
  double getArea() {
    return _width * _height;
  }

  @override
  Color _color = Colors.amber;

  @override
  String _name = "Rectangle";

  @override
  final List<Point> _vertices = <Point>[];

  @override
  Color get getColor => _color;

  @override
  String get getName => _name;
}

class Circle extends Shape {
  late double _radius;

  Circle(Color color, Point position, double radius) {
    super._color = color;
    super._name = "Circle";
    _radius = radius;
    super._vertices.add(position);
  }

  @override
  void draw(Canvas canvas) {
    var paint = Paint()
      ..color = _color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawCircle(
        Offset(_vertices[0].x.toDouble(), _vertices[0].y.toDouble()),
        _radius,
        paint);
  }

  @override
  double getArea() {
    return 2 * pi * _radius;
  }
}

class NullShape extends Shape {
  NullShape() {
    _name = "NullShape";
  }

  @override
  void draw(Canvas canvas) {}

  @override
  double getArea() {
    return 0.0;
  }
}

class Triangle extends Shape {
  Triangle(Color color, Point v1, Point v2, Point v3) {
    _color = color;
    _name = "Triangle";
    _vertices.add(v1);
    _vertices.add(v2);
    _vertices.add(v3);
  }

  @override
  void draw(Canvas canvas) {
    var paint = Paint()
      ..color = _color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
  }

  @override
  double getArea() {
    Point v1 = _vertices[0];
    Point v2 = _vertices[1];
    Point v3 = _vertices[2];
    num area;
    area = v1.x * (v2.y - v3.y) + v2.x * (v3.y - v1.y) + v3.x * (v1.y - v2.y);
    return area.toDouble();
  }
}
