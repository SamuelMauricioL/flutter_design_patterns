import 'package:flutter_design_patterns/structural/adapter/in_dart/adapters/interface_contacts_adapter.dart';
import 'package:flutter_design_patterns/structural/adapter/in_dart/datasources/xml_contacts_reader.dart';
import 'package:flutter_design_patterns/structural/adapter/in_dart/models/contacts_model.dart';
import 'package:xml/xml.dart';

class XmlContactsAdapter implements IContactsAdapter {
  final XmlContactsReaderDS _reader = XmlContactsReaderDS();

  @override
  List<Contact> getContacts() {
    final contactsXml = _reader.getContactsXml();
    final contactsList = _parseContactsXml(contactsXml);

    return contactsList;
  }

  List<Contact> _parseContactsXml(String contactsXml) {
    final xmlDocument = XmlDocument.parse(contactsXml);
    final contactsList = <Contact>[];

    for (final xmlElement in xmlDocument.findAllElements('contact')) {
      final fullName = xmlElement.findElements('fullname').single.text;
      final email = xmlElement.findElements('email').single.text;
      final favouriteString = xmlElement.findElements('friend').single.text;
      final friend = favouriteString.toLowerCase() == 'true';
      final phoneNumber = xmlElement.findElements('phoneNumber').single.text;

      contactsList.add(
        Contact(
          fullName: fullName,
          email: email,
          friend: friend,
          phoneNumber: phoneNumber,
        ),
      );
    }

    return contactsList;
  }
}
