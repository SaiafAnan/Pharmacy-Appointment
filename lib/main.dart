import 'package:flutter/material.dart';
import 'dashboard.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.black54,
      ),
      home: DashBoard(),
    );
  }
}