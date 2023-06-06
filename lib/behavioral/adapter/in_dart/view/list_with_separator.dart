// ignore_for_file: avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/adapter/in_dart/adapters/json_contacts_adapter.dart';
import 'package:flutter_design_patterns/behavioral/adapter/in_dart/models/contacts_model.dart';

class LongListWithSeparator extends StatelessWidget {
  List<Contact> listOfItems = JsonContactsAdapter().getContacts();
  LongListWithSeparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listOfItems.length,
      itemBuilder: (BuildContext context, int index) {
        final contact = listOfItems[index];
        return ListTile(
          onTap: () {
            print('Clicked on item #$index');
          },
          title: Text(contact.fullName),
          subtitle: Text('${contact.email} ${contact.phoneNumber}'),
          leading: Container(
            height: 50,
            width: 50,
            color: contact.friend ? Colors.greenAccent : Colors.amber,
          ),
          trailing: const Icon(Icons.edit),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
