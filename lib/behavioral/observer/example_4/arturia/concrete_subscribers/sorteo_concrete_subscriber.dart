// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/observer/example_4/arturia/arturia_subscriber.dart';

class SorteoConcreteSubscriber implements ArturiaSubscriber {
  @override
  void notificar() {
    print(
        """
¡Atención fanáticos de Coldplay! 
Por la compra de un teclado MIDI Arturia, 
participa automáticamente en el sorteo 
de 2 entradas para el próximo concierto de la banda. 
¡No pierda la oportunidad de ganar y disfrutar 
de una experiencia musical inolvidable!
""");
  }
}
