
import 'package:flutter/material.dart';
import 'package:tell/mydrawer.dart';

class homepage extends StatefulWidget { 
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tell"
        ),
      ),
      drawer: mydrawer(),
     floatingActionButton: FloatingActionButton(
       splashColor: Colors.purple[200],
       backgroundColor: Colors.purple[800],
       child: Icon(Icons.add),
       tooltip: "Tell",
      // iconSize: 30.0,
       onPressed: (){}),
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    
    );
  }
}