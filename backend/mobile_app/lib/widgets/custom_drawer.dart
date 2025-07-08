import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(String) onSelectPage;

  CustomDrawer({required this.onSelectPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text("SmartTownConnect", style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          _drawerItem("Home", Icons.home),
          _drawerItem("Directory", Icons.people),
          _drawerItem("Events", Icons.event),
          _drawerItem("Discussions", Icons.forum),
          _drawerItem("Advertisements", Icons.campaign),
          _drawerItem("Emergency", Icons.warning),
          _drawerItem("Profile", Icons.person),
          _drawerItem("Logout", Icons.logout),
        ],
      ),
    );
  }

  Widget _drawerItem(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () => onSelectPage(title),
    );
  }
}

