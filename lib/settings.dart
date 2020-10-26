import 'package:flutter/material.dart';
import 'package:tell/mydrawer.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(
          "Settings"
        ),
      ),
      drawer: mydrawer(),
      
    );
  }
}