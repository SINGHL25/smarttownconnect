import 'package:flutter/material.dart';
import '../screens/events_screen.dart';
import '../screens/directory_screen.dart';
import '../screens/gate_entry_screen.dart';
import '../screens/discussion_screen.dart';
import '../screens/advertisement_screen.dart';
import '../screens/emergency_screen.dart';
import '../screens/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text("SmartTown Menu", style: TextStyle(fontSize: 22)),
            decoration: BoxDecoration(color: Colors.indigo),
          ),
          _navItem(context, "Directory", DirectoryScreen()),
          _navItem(context, "Events", EventsScreen()),
          _navItem(context, "Gate Entry", GateEntryScreen()),
          _navItem(context, "Discussion", DiscussionScreen()),
          _navItem(context, "Advertisements", AdvertisementScreen()),
          _navItem(context, "Emergency", EmergencyScreen()),
          _navItem(context, "Profile", ProfileScreen()),
        ],
      ),
    );
  }

  ListTile _navItem(BuildContext ctx, String title, Widget screen) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(ctx, MaterialPageRoute(builder: (_) => screen));
      },
    );
  }
}

