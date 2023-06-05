import 'package:flutter_design_patterns/creational/builder/pizza/models/pizza.dart';
import 'package:flutter_design_patterns/creational/builder/pizza/builder/pizza_builder.dart';

class NewYorkPizzaBuilder extends PizzaBuilder {
  static const String pizzaName = "New York Style";

  NewYorkPizzaBuilder() {
    super.name = pizzaName;
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.newYork);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.tomato);
  }

  @override
  void buildToppings() {
    pizza.addTopping("mozzarella cheese");
    pizza.addTopping("pepperoni");
  }
}
