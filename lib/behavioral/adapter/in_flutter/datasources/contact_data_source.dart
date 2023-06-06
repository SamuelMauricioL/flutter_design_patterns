import 'package:flutter_design_patterns/behavioral/adapter/in_flutter/models/contacts_model.dart';

class ContactDataSource {
  List<Contact> getContacts() {
    return contacts;
  }
}

List<Contact> contacts = [
  const Contact(
    email: 'joel@gmail.com',
    friend: true,
    fullName: 'Joel',
    phoneNumber: '123456789',
  ),
  const Contact(
    email: 'julissa@gmail.com',
    friend: true,
    fullName: 'Julissa',
    phoneNumber: '987654321',
  ),
  const Contact(
    email: 'ramiro@gmail.com',
    friend: false,
    fullName: 'ramiro',
    phoneNumber: '999999999',
  ),
];
