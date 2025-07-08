import 'package:flutter/material.dart';

class EmergencyScreen extends StatelessWidget {
  final List<Map<String, String>> emergencyContacts = [
    {"title": "Security", "number": "9999-111-222"},
    {"title": "Ambulance", "number": "102"},
    {"title": "Fire", "number": "101"},
    {"title": "Local Police", "number": "100"},
    {"title": "Electricity", "number": "1800-233-3435"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Emergency Services")),
      body: ListView.builder(
        itemCount: emergencyContacts.length,
        itemBuilder: (context, index) {
          final contact = emergencyContacts[index];
          return Card(
            child: ListTile(
              title: Text(contact["title"]!),
              subtitle: Text("Phone: ${contact["number"]}"),
              leading: Icon(Icons.local_phone),
              trailing: Icon(Icons.call, color: Colors.green),
              onTap: () {
                // You can use url_launcher to call: tel://${contact["number"]}
              },
            ),
          );
        },
      ),
    );
  }
}

