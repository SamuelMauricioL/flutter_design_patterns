// ignore_for_file: avoid_print

import 'package:flutter_design_patterns/behavioral/observer/example_4/despegar/despegar_subscriber.dart';

class DescuentosConcreteSubscriber implements DespegarSubscriber {
  @override
  void notificar() {
    print(
        '¡Excelente noticia! Como colaborador de Despegar, tengo el placer de ofrecerle un descuento exclusivo del 30% en su próxima reserva. ¡Aproveche esta oportunidad única para disfrutar de las mejores opciones de viaje al mejor precio!');
  }
}
