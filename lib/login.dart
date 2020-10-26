
import 'package:flutter/material.dart';
import 'package:tell/homepage.dart';
import 'package:tell/signup.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool _obscureText = true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(  
          
                height: 350.0,
                width: 290.0,
                padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 30.0),
                decoration: BoxDecoration(
                   boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 100.0,
                  ),
                ],
                  color:Colors.purple,
                  shape: BoxShape.rectangle,  
                  borderRadius: BorderRadius.circular(20.0)
                ),

                child: Column(
                  children: <Widget>[

                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800

                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 20.0),
                    child: TextField(
                      autocorrect: false,
                      autofocus: false,   
                      keyboardType: TextInputType.emailAddress,               
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.email),
                        filled: true,
                        border: InputBorder.none,
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(00000000)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(00000000)),
                        ),
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.all(15.0)
                      ),
                    ),),
                    

                    Padding(
                      padding:EdgeInsets.only(top: 20.0),
                      child:  TextField(
                      autocorrect: false,
                      autofocus: false,                  
                      obscureText: _obscureText,
                      keyboardType: TextInputType.text,
                      
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: "Password",

                        suffixIcon: IconButton(
                          icon: Icon(
                             _obscureText ? Icons.visibility : Icons.visibility_off
                          ),
                          onPressed: (){
                            setState(() {
                               _obscureText = !_obscureText;
                            });
                          }),
                      
                        isDense: true,

                        filled: true,
                        border: InputBorder.none,
                         enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(00000000)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(00000000)),
                        ),
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.all(15.0)
                      ),
                    ), 
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(padding:EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Forgot Password?",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ), 
                        ),
                      ],
                    ),

                   Padding(
                     padding: EdgeInsets.only(top: 10.0),
                     child:  MaterialButton(
                      onPressed: (){
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => homepage())
                      );
                      },
                      color: Colors.red,
                      minWidth: 200.0,
                      elevation: 20.0,
                      padding: EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(5.0)
                      ),
                      splashColor: Colors.red,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white
                        ),
                      ),
                      ),
                      ),

                     InkWell(
                       onTap:(){
                         Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) => signup())
                         );
                       },
                       child:  Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Need An Account?",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),
                      ),)
,
                     )
                  ],
                ),
            )



          ],
        ),
      ),
    );
  }
}
