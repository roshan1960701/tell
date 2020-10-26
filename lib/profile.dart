import 'package:flutter/material.dart';
import 'package:tell/mydrawer.dart';
import 'package:form_field_validator/form_field_validator.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> with SingleTickerProviderStateMixin {
  Animation myani;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate(){
    if(formKey.currentState.validate()){
      print("Validate");
    }
    else{
       print("Not Validate");
       
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile"
        ),
      ),
      body: Form(
        key: formKey,
        autovalidate: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                validator: MultiValidator(
                  [
                  RequiredValidator(errorText: "Requird*"),
                  EmailValidator(errorText: "Valid Email"),
                  
                  ]
                ),
            decoration: InputDecoration(
              labelText: "Username",
              
              labelStyle: TextStyle(
                fontSize: 18.0
              ),
              border: OutlineInputBorder()
            ),
            
            ),),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: "Requird*"),
                    MinLengthValidator(6, errorText: "Should be 6"),
                    MaxLengthValidator(8, errorText: "MAximum should be 8")
                  ]
                ),
            decoration: InputDecoration(
              labelText: "Password",
              
              labelStyle: TextStyle(
                fontSize: 18.0
              ),
              border: OutlineInputBorder()
            ),
            ),),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                width: 200.0,
                child: MaterialButton(onPressed: validate,
              color: Colors.purple,
              elevation: 10.0,
              splashColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)
              ),
              child: Text(
                "Login",

                style: TextStyle(
                  
                  color:Colors.white
                  
                ),
              ),
              
              )),
              ),

             Image.network('https://picsum.photos/250?image=9',)
          ],
        )),
      drawer: mydrawer(),
      
    );
  }
}