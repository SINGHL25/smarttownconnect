import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(SmartTownConnectApp());
}

class SmartTownConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartTownConnect',
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

