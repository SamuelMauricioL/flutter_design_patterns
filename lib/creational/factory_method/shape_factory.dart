import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/creational/factory_method/shape.dart';

enum ShapesEnum { rectangle, circle }

class ShapeBuildContext {
  late Color color;
  late ShapesEnum shapeType;
  late List<Point> vertices;
  late double radius;
  late double width;
  late double height;
}

class ShapeFactory {
  ShapeFactory._();

  static Shape createShape(ShapeBuildContext context) {
    Shape result = NullShape();
    switch (context.shapeType) {
      case ShapesEnum.rectangle:
        result = Rectangle(
          context.color,
          context.vertices[0],
          context.width,
          context.height,
        );
        break;

      case ShapesEnum.circle:
        result = Circle(context.color, context.vertices[0], context.radius);
        break;
    }
    return result;
  }
}
