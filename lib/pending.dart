import 'package:flutter/material.dart';

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
        IconButton(icon: Icon(Icons.access_time, color: Colors.red), onPressed: () {Navigator.pop(context);},),

        IconButton(icon: Icon(Icons.camera), onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                Barcode()));},)]),
        body: Container(
           child: ListTile(
          leading:
          new Container(
            child: Text("#" + '1', style: TextStyle(color: Colors.blue)),
          ),
          title: Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text('Perusahaan X', style: TextStyle(color: Colors.black,
                   fontSize: 18.0))
          ),
          subtitle: Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text('Kezia Marpaung', style: TextStyle(color: Colors.black, 
                   fontSize: 16.0)),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text('Some times ago', style: TextStyle(color: Colors.black, 
                   fontSize: 15.0)),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
      ),
                  
          ),
        ),
      
    );
  }
}