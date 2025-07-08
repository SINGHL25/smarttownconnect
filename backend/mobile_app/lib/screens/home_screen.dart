import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SmartTownConnect")),
      drawer: CustomDrawer(),
      body: Center(
        child: Text("Welcome to SmartTownConnect!",
            style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

