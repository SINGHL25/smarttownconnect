import 'package:flutter/material.dart';

class AdvertisementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local Ads & Promotions")),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          _adTile("Local Electrician", "20% off for all society members."),
          _adTile("Pet Care Services", "On-call grooming & vet checks."),
          _adTile("Yoga Classes", "Morning & evening batches available."),
        ],
      ),
    );
  }

  Widget _adTile(String title, String description) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.campaign_outlined, color: Colors.indigo),
        title: Text(title),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

