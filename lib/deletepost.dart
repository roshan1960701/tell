import 'package:flutter/material.dart';
import 'package:tell/mydrawer.dart';
class deletepost extends StatefulWidget {
  @override
  _deletepostState createState() => _deletepostState();
}

class _deletepostState extends State<deletepost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delete Post"
        ),
      ),

      body: GridView.count(crossAxisCount: 2,
      children: <Widget>[
        InkWell(
          child: Card(
          color: Colors.blue,
         child:Stack(
           children: <Widget>[
              Center(
                child: Icon(Icons.wifi,color: Colors.white,size: 50.0,),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0,left: 150.0),
                child: Text(
                "WIFI",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              ),
           ],
         )
        ),
        onTap: (){},
        ),


         InkWell(
          child: Card(
          color: Colors.orange,
         child:Stack(
           children: <Widget>[
              Center(
                child: Icon(Icons.bluetooth_searching,color: Colors.white,size: 50.0,),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0,left: 130.0),
                child: Text(
                "Bluetoth",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              ),
           ],
         )
        ),
        onTap: (){},
        ),
       
        InkWell(
          child: Card(
          color: Colors.red,
         child:Stack(
           children: <Widget>[
              Center(
                child: Icon(Icons.cast,color: Colors.white,size: 50.0,),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0,left: 150.0),
                child: Text(
                "CAST",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              ),
           ],
         )
        ),
        onTap: (){},
        ),
       
        InkWell(
          child: Card(
          color: Colors.green,
         child:Stack(
           children: <Widget>[
              Center(
                child: Icon(Icons.games,color: Colors.white,size: 50.0,),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0,left: 140.0),
                child: Text(
                "Games",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              ),
           ],
         )
        ),
        onTap: (){},
        ),
       
        InkWell(
          child: Card(
          color: Colors.black,
         child:Stack(
           children: <Widget>[
              Center(
                child: Icon(Icons.gps_fixed,color: Colors.white,size: 50.0,),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0,left: 150.0),
                child: Text(
                "GPS",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              ),
           ],
         )
        ),
        onTap: (){},
        ),
       
        InkWell(
          child: Card(
          color: Colors.cyan,
         child:Stack(
           children: <Widget>[
              Center(
                child: Icon(Icons.video_call,color: Colors.white,size: 50.0,),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0,left: 110.0),
                child: Text(
                "Video Call",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),
              ),
              ),
           ],
         )
        ),
        onTap: (){},
        ),
       
        InkWell(
          child: Card(
          color: Colors.blue,
         child:Center(
           child: Stack(
           children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 10.0,top: 10.0),  
            color: Colors.red,
                
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 20.0,top: 20.0),  
            color: Colors.yellow,
          ),
          Container(
            margin: EdgeInsets.only(left: 30.0,right: 30.0,bottom: 30.0,top: 30.0),  
            color: Colors.green
          ),
          Container(
            margin: EdgeInsets.only(left: 40.0,right: 40.0,bottom: 40.0,top: 40.0),  
            color: Colors.pink,
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0,right: 50.0,bottom: 50.0,top: 50.0),  
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.only(left: 60.0,right: 60.0,bottom: 60.0,top: 60.0),  
            color: Colors.blueGrey,
          ),
          Container(
            margin: EdgeInsets.only(left: 70.0,right: 70.0,bottom: 70.0,top: 70.0),  
            color: Colors.indigo,
          ),
          Container(
            margin: EdgeInsets.only(left: 80.0,right: 80.0,bottom: 80.0,top: 80.0),  
            color: Colors.teal,
          ),
          Container(
            margin: EdgeInsets.only(left: 90.0,right: 90.0,bottom: 90.0,top: 90.0),  
            color: Colors.purple,
          ),

           ],
         ),
         )
        ),
        onTap: (){},
        ),
       

      ],
      ),
      drawer: mydrawer(),
      
    );
  }
}