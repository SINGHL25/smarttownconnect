import 'package:flutter/material.dart';

class EmergencyScreen extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {"type": "Security", "number": "100"},
    {"type": "Ambulance", "number": "108"},
    {"type": "Fire", "number": "101"},
    {"type": "Local Hospital", "number": "9999999999"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Emergency Contacts")),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (_, index) => ListTile(
          leading: Icon(Icons.phone, color: Colors.red),
          title: Text(contacts[index]["type"]!),
          subtitle: Text(contacts[index]["number"]!),
          trailing: Icon(Icons.call),
        ),
      ),
    );
  }
}
