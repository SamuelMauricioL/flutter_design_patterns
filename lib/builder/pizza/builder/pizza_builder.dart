import 'package:flutter_design_patterns/builder/pizza/models/pizza.dart';

abstract class PizzaBuilder {
  late Pizza pizza;
  late String name;

  /// Business functions
  ///

  /// starter of the workflow: creates the pizza instance
  ///
  void createPizza() {
    pizza = Pizza();
    pizza.setName(name);
  }

  Pizza getPizza() {
    return pizza;
  }

  void setPizzaPrice(double price) {
    pizza.setPrice(price);
  }

  void setSize(PizzaSize size) {
    pizza.setSize(size);
  }

  void addNotes(String notes) {
    pizza.addNotes(notes);
  }

  /// abstract business methods that will need to be implemented by all
  /// concrete builders
  ///
  void buildSauce();
  void buildToppings();
  void buildCrust();
}
