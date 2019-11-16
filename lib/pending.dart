import 'package:flutter/material.dart';
import 'package:pic/requestList.dart';

import 'barcode.dart';

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Pending Request"), actions: <Widget>[
        IconButton(icon: Icon(Icons.access_time, color: Colors.red), onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                RequestList()));},),

        IconButton(icon: Icon(Icons.camera), onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                Barcode()));},)]),
        body: Container(
           child: ListView(
                  children: <Widget>[
                    
                  ],
          ),
        ),
      ),
      
    );
  }
}