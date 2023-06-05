import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/creational/factory_method/shape.dart';
import 'package:flutter_design_patterns/creational/factory_method/shape_factory.dart';

class Utils {
  static Shape generateRandomShape(Size constraints) {
    Size margins = const Size(20, 20);
    Size radiusMinMax = const Size(4, 40);
    Size widthHeightMinMax = const Size(15, 100);
    Shape result = NullShape();
    Random rnd = Random();

    ShapesEnum shapeType =
        ShapesEnum.values[Random().nextInt(ShapesEnum.values.length)];
    debugPrint("generating random shape...");
    debugPrint("generated $shapeType");

    switch (shapeType) {
      case ShapesEnum.rectangle:
        {
          Point v1 = Point(
              rnd.nextDouble() * (constraints.width - margins.width),
              rnd.nextDouble() * (constraints.height - margins.height));

          double width = rnd.nextDouble() *
                  (widthHeightMinMax.height - widthHeightMinMax.width) +
              widthHeightMinMax.width;
          double height = rnd.nextDouble() *
                  (widthHeightMinMax.height - widthHeightMinMax.width) +
              widthHeightMinMax.width;

          Color color =
              Colors.primaries[Random().nextInt(Colors.primaries.length)];

          ShapeBuildContext context = ShapeBuildContext()
            ..shapeType = shapeType
            ..color = color
            ..vertices = [v1]
            ..width = width
            ..height = height;
          result = ShapeFactory.createShape(context);
        }
        break;

      case ShapesEnum.circle:
        {
          double radius =
              rnd.nextDouble() * (radiusMinMax.height - radiusMinMax.width) +
                  radiusMinMax.width;
          Point v1 = Point(
              rnd.nextDouble() *
                  (constraints.width - margins.width - radius / 2),
              rnd.nextDouble() * (constraints.height - margins.height));

          Color color =
              Colors.primaries[Random().nextInt(Colors.primaries.length)];

          ShapeBuildContext context = ShapeBuildContext()
            ..shapeType = shapeType
            ..color = color
            ..vertices = [v1]
            ..radius = radius;
          result = ShapeFactory.createShape(context);
        }
        break;
    }
    return result;
  }
}
