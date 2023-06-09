// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class EmailOwner extends Equatable {
  late String name;

  EmailOwner(this.name);

  void notificar() {}

  @override
  List<Object> get props => [name];
}
