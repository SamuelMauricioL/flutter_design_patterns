import 'package:flutter_design_patterns/structural/adapter/in_dart/models/contacts_model.dart';

abstract class IContactsAdapter {
  List<Contact> getContacts();
}
