// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/observer/example_4/despegar/despegar_subscriber.dart';

class AcumularMillasConcreteSubscriber implements DespegarSubscriber {
  @override
  void notificar() {
    print(
        '¡Atención viajeros! Recuerden que pueden canjear sus millas acumuladas en Despegar para ahorrar en sus próximas reservas. ¡No pierdan la oportunidad de viajar más y gastar menos!');
  }
}
