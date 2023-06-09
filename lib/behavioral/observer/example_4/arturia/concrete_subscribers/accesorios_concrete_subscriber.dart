// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/observer/example_4/arturia/arturia_subscriber.dart';

class AccesoriosConcreteSubscriber implements ArturiaSubscriber {
  @override
  void notificar() {
    print(
        """
¡Increíble oferta de Arturia!
Compre uno de nuestros teclados MIDI y llévese un pedal de regalo
para mejorar aún más su experiencia musical.
¡Aproveche esta oportunidad y obtenga el mejor sonido para sus creaciones!
""");
  }
}
