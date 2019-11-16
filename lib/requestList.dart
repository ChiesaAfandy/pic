import 'package:flutter/material.dart';
import 'package:pic/barcode.dart';
import 'package:pic/pending.dart';

class RequestList extends StatefulWidget {
  @override
  _RequestListState createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: <Widget>[
        IconButton(icon: Icon(Icons.access_time, ), onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                Pending()));},),

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