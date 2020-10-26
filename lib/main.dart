import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tell/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tell',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void completed(){
    Navigator.of(context).pushReplacement(MaterialPageRoute (builder: (context) => login()));
  }
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),completed);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "asset/tell.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}


