import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Map<String, String> profile = {
    "Name": "John Doe",
    "Flat No": "B-1204",
    "Email": "johndoe@example.com",
    "Phone": "9876543210",
    "Resident Since": "2019"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: profile.entries.map((entry) {
          return ListTile(
            title: Text(entry.key),
            subtitle: Text(entry.value),
            leading: Icon(Icons.person),
          );
        }).toList(),
      ),
    );
  }
}

