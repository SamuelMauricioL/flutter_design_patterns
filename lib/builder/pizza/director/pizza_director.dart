import 'package:flutter_design_patterns/builder/pizza/models/pizza.dart';
import 'package:flutter_design_patterns/builder/pizza/builder/pizza_builder.dart';

class PizzaDirector {
  late PizzaBuilder _pizzaBuilder;

  void setPizzaBuilder(PizzaBuilder pb) {
    _pizzaBuilder = pb;
  }

  Pizza getPizza() {
    return _pizzaBuilder.getPizza();
  }

  void makePizza() {
    _pizzaBuilder.createPizza();
    _pizzaBuilder.buildCrust();
    _pizzaBuilder.buildSauce();
    _pizzaBuilder.buildToppings();
  }
}
