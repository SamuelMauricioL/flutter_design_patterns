import 'package:flutter_design_patterns/behavioral/observer/example_4/cliente/email_owner.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_4/subcriber/global_subscriber.dart';

class ClientePublisher {
  final Map<EmailOwner, List<GlobalSubscriber>> _subscribersMap = {};

  void subscribe(EmailOwner owner, GlobalSubscriber subscriber) {
    final listSubscribers = _subscribersMap[owner] ?? [];
    listSubscribers.add(subscriber);
    _subscribersMap[owner] = listSubscribers;
    print(_subscribersMap);
  }

  void unsubscribe(EmailOwner owner) {}

  void notifySubscribers() {
    _subscribersMap.forEach((_, subscriber) {
      for (var s in subscriber) {
        s.notificar();
      }
    });
  }
}
