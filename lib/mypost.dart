import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tell/mydrawer.dart';

class mypost extends StatefulWidget {
  @override
  _mypostState createState() => _mypostState();
}
class _mypostState extends State<mypost> {
  String value = "";
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";

  void msg(BuildContext context){
      var alertDialog = AlertDialog(
        title: Text("Alert Dialog"),
        content: Text("Are you sure?"),

      );
      showDialog(context: context,
      builder: (BuildContext context){
        return alertDialog;
      }
      
    );

    }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Post"
          
        ),
      ),
      body: Center(
        child: Column(
        children: <Widget>[
          DropdownButton<String>(
            items: [
              DropdownMenuItem<String>(
                value: "App",
                child: Center(
                    child: Text(
                      "App"
                    ),
                ),),
                DropdownMenuItem<String>(
                  value: "Web",
                  child: Center(
                    child: Text(
                      "Web"
                    ),
                  )),
                DropdownMenuItem<String>(
                  value: "Java",
                  child: Center(
                    child: Text(
                      "Java"
                    ),
                  )),
            ],
            hint: Text(
              "Select"
            ),
             onChanged:(_value){
               setState(() {
                 value = _value;
               });
             }),
             Text(
               "$value"
             ),

             MaterialButton(
               onPressed: (){
                  msg(context);
               },
               child: Text(
                 "Click Here",
               ),),
               TextFormField(
                 controller: num1controller,
                 decoration: InputDecoration(
                   border: OutlineInputBorder()
                 ),
               ),

                  TextFormField(
                    controller: num2controller,
                 decoration: InputDecoration(
                   border: OutlineInputBorder()
                 ),
               ),
               MaterialButton(
                 onPressed: (){
                   setState(() {
                     int sum = int.parse(num1controller.text) + int.parse(num2controller.text);
                    result = sum.toString();
                   });
                 },
                 color: Colors.purple,
                 child: Text(
                   "Add",
                   style: TextStyle(
                     fontSize: 18.0,
                     color: Colors.white
                   ),
                 ),),

                 Text(
                   "Result $result",
                   style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.purple
                   ),
                 )
               
        ],
        ),
      ),
      drawer: mydrawer(),
      
    );

    
  }
}