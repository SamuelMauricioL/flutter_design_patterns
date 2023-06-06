// ignore_for_file: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/behavioral/adapter/in_flutter/adapters/interface_chart_layer_adapter.dart';
import 'package:flutter_design_patterns/behavioral/adapter/in_flutter/datasources/contact_data_source.dart';
import 'package:flutter_design_patterns/behavioral/adapter/in_flutter/models/contacts_model.dart';
import 'package:mrx_charts/mrx_charts.dart';

class ContactModelAdapter implements IChartLayerAdapter {
  final _contactDataSource = ContactDataSource();

  @override
  List<ChartLayer> layers() {
    final contacts = _contactDataSource.getContacts();
    final friendLayer = _getFriendLayer(contacts);
    return friendLayer;
  }

  List<ChartLayer> _getFriendLayer(List<Contact> contacts) {
    final yesFriends = contacts.where((contact) => contact.friend).length;
    final contactLeght = contacts.length;
    final noFriends = contactLeght - yesFriends;
    return [
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: 1.0,
            max: 2,
            min: 1,
            textStyle: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 40.0,
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: 1,
            max: 3,
            min: 0,
            textStyle: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 40.0,
            ),
          ),
        ),
        labelX: (value) => value.toInt() != 1 ? 'No' : 'Yes',
        labelY: (value) => value.toInt().toString(),
      ),
      ChartBarLayer(
        items: List.generate(
          2,
          (index) {
            return ChartBarDataItem(
              color: const Color(0xFF8043F9),
              value: index == 0 ? yesFriends.toDouble() : noFriends.toDouble(),
              x: index.toDouble() + 1,
            );
          },
        ),
        settings: const ChartBarSettings(
          thickness: 8.0,
          radius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    ];
  }
}
