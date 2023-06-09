import 'package:flutter_design_patterns/behavioral/observer/example_3/notification.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_3/subscriber.dart';

class Publisher {
  late List<Subscriber> _subscribers;

  Publisher([List<Subscriber>? subscribers]) {
    _subscribers = subscribers ?? [];
  }

  void addNewSubscriber(Subscriber subscriber) {
    _subscribers.add(subscriber);
  }

  void notifySubsCribers(Notification notification) {
    for (var subscriber in _subscribers) {
      subscriber.notify(notification);
    }
  }
}
