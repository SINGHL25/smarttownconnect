import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class AdvertisementScreen extends StatelessWidget {
  final List<Map<String, String>> ads = [
    {
      "title": "Yoga Classes",
      "description": "Join our weekend yoga group – call 9876543210"
    },
    {
      "title": "Plumber Available",
      "description": "Call Raj @ 9876543210"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Advertisements')),
      body: ListView(
        children: ads.map((a) => CustomCard(
          title: a["title"]!,
          description: a["description"]!,
        )).toList(),
      ),
    );
  }
}

