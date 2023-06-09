import 'package:flutter_design_patterns/behavioral/observer/example_4/arturia/concrete_subscribers/accesorios_concrete_subscriber.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_4/arturia/concrete_subscribers/sorteo_concrete_subscriber.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_4/cliente/cliente_publisher.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_4/cliente/email_owner.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_4/despegar/concrete_subscribers/acumular_millas_concrete_subscriber.dart';
import 'package:flutter_design_patterns/behavioral/observer/example_4/despegar/concrete_subscribers/descuentos_concrete_subscriber.dart';

void main() {
  final acumularMillas = AcumularMillasConcreteSubscriber();
  final descuentos = DescuentosConcreteSubscriber();

  // final despegarPublisher = DespegarPublisher();
  // despegarPublisher.subscribe(acumularMillas);
  // despegarPublisher.subscribe(descuentos);

  // despegarPublisher.notifySubscribers();

  final accesorios = AccesoriosConcreteSubscriber();
  final sorteo = SorteoConcreteSubscriber();

  // final arturiaPublisher = ArturiaPublisher();
  // arturiaPublisher.subscribe(accesorios);
  // arturiaPublisher.subscribe(sorteo);

  // arturiaPublisher.notifySubscribers();

  final joel = EmailOwner('Joel');
  final julissa = EmailOwner('Julissa');

  final clientePublisher = ClientePublisher();
  clientePublisher.subscribe(joel, acumularMillas);
  clientePublisher.subscribe(joel, accesorios);

  clientePublisher.subscribe(julissa, descuentos);
  clientePublisher.subscribe(julissa, sorteo);

  clientePublisher.notifySubscribers();
}
