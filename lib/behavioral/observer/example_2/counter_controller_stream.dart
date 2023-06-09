import 'dart:async';

enum Event { increment, decrement, reset }

class CounterControllerStream {
  int counter = 0;

  final StreamController<int> _counterController =
      StreamController<int>.broadcast();
  StreamSink<int> get counterSink => _counterController.sink;
  Stream<int> get counterStream => _counterController.stream;

  final StreamController<Event> _eventController = StreamController<Event>();
  StreamSink<Event> get eventSink => _eventController.sink;
  Stream<Event> get eventStream => _eventController.stream;

  late StreamSubscription listener;
  CounterControllerStream() {
    listener = eventStream.listen((Event event) {
      switch (event) {
        case Event.increment:
          counter += 1;
          break;
        case Event.decrement:
          counter -= 1;
          break;
        case Event.reset:
          counter = 0;
          break;
        default:
      }
      counterSink.add(counter);
    });
  }
  // dispose the listner to eliminate memory leak
  dispose() {
    listener.cancel();
    _counterController.close();
    _eventController.close();
  }
}
