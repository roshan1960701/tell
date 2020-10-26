import 'package:flutter/material.dart';
import 'package:tell/deletepost.dart';
import 'package:tell/homepage.dart';
import 'package:tell/mypost.dart';
import 'package:tell/profile.dart';
import 'package:tell/settings.dart';

class mydrawer extends StatefulWidget {
  @override
  _mydrawerState createState() => _mydrawerState();
}


class _mydrawerState extends State<mydrawer> {
  @override

  Widget build(BuildContext context) {
    return Drawer(
    child: Column(
      children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text(
          "Roshan Wadekar"
        ),

         accountEmail: Text(
           "roshan123@gmail.com"
         ),

         currentAccountPicture:CircleAvatar(
           backgroundColor: Colors.red,
           child: Text(
             "R",
             style: TextStyle(
               fontSize: 35.0,
               color: Colors.white,
               fontWeight: FontWeight.w800
             ),
          
           ),
         ),

         otherAccountsPictures: <Widget>[
           CircleAvatar(
           backgroundColor: Colors.red,
           child: Text(
             "V",
             style: TextStyle(
               fontSize: 20.0,
               color: Colors.white,
               fontWeight: FontWeight.w800
             ),
            
           ),
         ),
         ],
         onDetailsPressed: (){},
         ),
         ListTile(
           selected: true,
           leading: Icon(Icons.text_fields),
          // trailing: Icon(Icons.text_fields),
           onTap: (){
             Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => homepage())
             );
           },
           
           title: Text("Tell"),
         ),
         ListTile(
           selected: true,
           leading: Icon(Icons.speaker_notes),
           onTap: (){
             Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => mypost())
             );
           },
           title: Text("post"),
         ),
         ListTile(
           selected: true,
           leading: Icon(Icons.delete),
            onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(builder: (context) => deletepost())
             );
           },
           title: Text("Delete"),
         ),
         ListTile(
           selected: true,
           leading: Icon(Icons.person),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => profile())
              );
           },
           title: Text("Profile"),
         ),
         
         
         Divider(),
         Row(
           children: <Widget>[
            Padding(
            padding: EdgeInsets.only(left: 10.0),
            child:Text(
             "Subtitle",
             style: TextStyle(
             fontSize: 18.0,
             color: Colors.purple,
             fontWeight: FontWeight.w700
           ),
          
           ),
            )
                     ],
         ),
       

          ListTile(
           selected: true,
           leading: Icon(Icons.settings),
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(builder: (context) => settings())
             );
           },
           title: Text("Settings"),
         ),
          ListTile(
           selected: true,
           leading: Icon(Icons.lock_outline),
           title: Text("LogOut"),
         ),
        //  Expanded(
        //    child: Align(
        //      alignment: Alignment.bottomCenter,
        //      child:  ListTile(
        //    selected: true,
        //    leading: Icon(Icons.text_fields),
        //    trailing: Icon(Icons.text_fields),
        //    title: Text("Tell"),
        //  ),
        //    ),
        //    )
      ],
    ),
    
    );
  }
}