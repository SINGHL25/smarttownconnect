import 'package:flutter/material.dart';

class AnnouncementBanner extends StatelessWidget {
  final String message;

  const AnnouncementBanner({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade100,
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(Icons.campaign, color: Colors.orange),
          SizedBox(width: 8),
          Expanded(child: Text(message, style: TextStyle(fontWeight: FontWeight.w500))),
        ],
      ),
    );
  }
}

