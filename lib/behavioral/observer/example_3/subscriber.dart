// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/observer/example_3/notification.dart';

class Subscriber {
  late String name;

  Subscriber(this.name);

  void notify(Notification notification) {
    final notificationTime = notification.timestamp.toIso8601String();
    print("[$notificationTime] Hey $name, ${notification.message}!");
  }
}
