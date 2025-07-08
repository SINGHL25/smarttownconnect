import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class DiscussionScreen extends StatelessWidget {
  final List<Map<String, String>> discussions = [
    {
      "title": "Security Feedback",
      "description": "Let's discuss recent gate access concerns."
    },
    {
      "title": "Clubhouse Events",
      "description": "Ideas for Diwali celebration."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Community Discussions')),
      body: ListView(
        children: discussions.map((d) => CustomCard(
          title: d["title"]!, 
          description: d["description"]!
        )).toList(),
      ),
    );
  }
}
