import 'package:flutter_design_patterns/behavioral/observer/example_4/arturia/arturia_subscriber.dart';

class ArturiaPublisher {
  final List<ArturiaSubscriber> _subscribers = [];

  void subscribe(ArturiaSubscriber subscriber) {
    _subscribers.add(subscriber);
  }

  void unsubscribe(int index) {
    _subscribers.removeAt(index);
  }

  void notifySubscribers() {
    for (var subscriber in _subscribers) {
      subscriber.notificar();
    }
  }
}
