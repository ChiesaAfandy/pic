import 'package:flutter/material.dart';

import 'history.dart';

class Print extends StatefulWidget {
  @override
  _PrintState createState() => _PrintState();
}

class _PrintState extends State<Print> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Stack(children: <Widget>[Align(alignment: Alignment.center,child: Align(
          alignment: Alignment.center,child: Icon(Icons.print,size: 200,),),),
          Align(alignment: AlignmentDirectional(0, 0.8),child: FlatButton(color: Colors.blue, child: Text("Print Receipt", style: TextStyle(fontSize: 21),), onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context) =>
                                History()));},)
      )],
      
    )),
      ),

    );
}}