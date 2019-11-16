import 'package:flutter/material.dart';
import 'package:pic/mainPage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
final emailText = TextEditingController();
final passText = TextEditingController();

final _formKey = GlobalKey<FormState>();
class _LoginState extends State<Login> {
 
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

            //background color
            body: Container(
              color: Colors.blue,
              //kotak dalam
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  stops: [0.3,0.9],
                  colors: [
                    Colors.white,
                    Colors.lightBlue[50],
                  ]
                ),
                boxShadow: [
                  BoxShadow( blurRadius: 20.0,
                  color: Colors.transparent.withOpacity(0.5),
                  spreadRadius: 2
                    )
                  ]
                ),

                //batas ukuran kotak dalam
                margin: EdgeInsets.fromLTRB(40, 100, 40, 50),

                //isian kotak
                child: Column(
                  children: <Widget>[

                    //bacaan login
                    Container(
                      margin: EdgeInsets.only( bottom: 45, top: 15),
                      child: Column(
                        children: <Widget>[
                          Text("Project Inventory Check",
                          style: TextStyle(
                            
                            fontSize: 24 ,
                            fontWeight: FontWeight.bold),
                            )
                        ],
                      )
                    ),

                    //kotak input
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 20),

                    child: Form(
                      key: _formKey,
                      child:Column(
                      
                      //input email
                      children: <Widget>[
                        Text("Username"),
                      
                        Container(
                          margin: EdgeInsets.only(top: 10,bottom: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,

                            validator: (String value){
                              Pattern pattern = r'^[a-z0-9_-]{3,15}$';
                              RegExp regex = new RegExp(pattern);
                              if(value.isEmpty){
                                return "Please enter your username";
                              }
                              else if (!regex.hasMatch(value)) {
                                return "Invalid username";
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "Username",
                              prefixIcon: Icon(Icons.message),
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              )
                            ),
                            controller: emailText,
                          ),
                        ),

                        //input pass
                        Text("Password"),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 8),
                          child: TextFormField(
                            obscureText: true,
                            validator: (String value){

                              if(value.isEmpty){
                                return "Please enter your Password";
                              }
                              else if (value.length < 6) {
                                return "Password need more than 6 character";
                              }
                              
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "password",
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            controller: passText,
                          ),
                        ),

                        //tombol Log In
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text("Log In"),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context) =>
                                MainPage(emailText.text,passText.text)
                              ));
                            }
                              return false;
                            
                          },
                          ),

                          //tombol forgot pass
                          FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          color: Colors.black12,
                          textColor: Colors.black,
                          child: Text("Forgot Password"),
                          onPressed: (){},
                          )

                      ]
                    ),
                    ),
                  )
                ],
              ),    
          ),   
        ),
      );
  }
}