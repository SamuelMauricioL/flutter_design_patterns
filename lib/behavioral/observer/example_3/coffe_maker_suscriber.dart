// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/observer/example_3/notification.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_3/publisher.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_3/subscriber.dart';

class CoffeeMaker extends Publisher {
  CoffeeMaker([List<Subscriber>? subscriber]) : super(subscriber);
  void brew() {
    print("Brewing the coffee...");
    notifySubsCribers(Notification.forNow("coffee's done"));
  }
}
