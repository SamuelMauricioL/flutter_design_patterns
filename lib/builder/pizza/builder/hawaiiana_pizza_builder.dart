import 'package:flutter_design_patterns/builder/pizza/models/pizza.dart';
import 'package:flutter_design_patterns/builder/pizza/builder/pizza_builder.dart';

class HawaiianPizzaBuilder extends PizzaBuilder {
  static const String pizzaName = "Hawaiian Style";

  HawaiianPizzaBuilder() {
    super.name = pizzaName;
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.classic);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.mild);
  }

  @override
  void buildToppings() {
    pizza.addTopping("ham");
    pizza.addTopping("pinnaple");
  }
}
