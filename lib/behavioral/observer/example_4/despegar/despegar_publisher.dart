import 'package:flutter_design_patterns/behavioral/observer/example_4/despegar/despegar_subscriber.dart';

class DespegarPublisher {
  final List<DespegarSubscriber> _subscribers = [];

  void subscribe(DespegarSubscriber subscriber) {
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
