import 'dart:convert';

import 'package:flutter_design_patterns/structural/adapter/in_dart/adapters/interface_contacts_adapter.dart';
import 'package:flutter_design_patterns/structural/adapter/in_dart/datasources/json_contacts_reader.dart';
import 'package:flutter_design_patterns/structural/adapter/in_dart/models/contacts_model.dart';

class JsonContactsAdapter implements IContactsAdapter {
  final JsonContactsReaderDS _reader = JsonContactsReaderDS();

  @override
  List<Contact> getContacts() {
    final contactsJson = _reader.getContactsJson();
    final contactsList = _parseContactsJson(contactsJson);

    return contactsList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    final contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    final contactsJsonList = contactsMap['contacts'] as List;
    final contactsList = contactsJsonList.map((json) {
      final contactJson = json as Map<String, dynamic>;

      return Contact(
        fullName: contactJson['fullName'] as String,
        email: contactJson['email'] as String,
        friend: contactJson['friend'] as bool,
        phoneNumber: contactJson['phoneNumber'] == null
            ? '999 999 999'
            : contactJson['phoneNumber'] as String,
      );
    }).toList();

    return contactsList;
  }
}
