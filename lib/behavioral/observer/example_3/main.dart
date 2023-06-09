// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/observer/example_3/coffe_maker_suscriber.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_3/subscriber.dart';

void main() {
  final me = Subscriber("Tyler");
  final myWife = Subscriber("Kate");

  final mrCoffee = CoffeeMaker();

  mrCoffee.addNewSubscriber(me);
  mrCoffee.addNewSubscriber(myWife);

  mrCoffee.brew();
  /*
    Brewing the coffee...
    [2019-06-18T07:30:04.397518] Hey Tyler, coffee's done!
    [2019-06-18T07:30:04.397518] Hey Kate, coffee's done!
  */
}
