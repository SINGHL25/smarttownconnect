import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Map<String, String> user = {
    "name": "Akhilesh Kumar",
    "email": "akhilesh@example.com",
    "block": "B3",
    "flat": "302"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: user.entries.map((entry) => ListTile(
            title: Text(entry.key),
            subtitle: Text(entry.value),
          )).toList(),
        ),
      ),
    );
  }
}


