class JsonContactsReaderDS {
  final String _contactsJson =
      '''
  {
    "contacts": [
      {
        "fullName": "John Smith (JSON)",
        "email": "johns@json.com",
        "friend": false
      },
      {
        "fullName": "Elizabeth Smith (JSON)",
        "email": "elizabeths@json.com",
        "friend": true
      },
      {
        "fullName": "Sebastian Smith (JSON)",
        "email": "sebastians@json.com",
        "friend": true
      }
    ]
  }
  ''';

  String getContactsJson() {
    return _contactsJson;
  }
}
