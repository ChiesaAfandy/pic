import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("History"),),
        body: Container(
        padding: new EdgeInsets.only(top: 10.0, right: 5.0,left: 5.0),
        margin: new EdgeInsets.symmetric(vertical: 1.0),
        child:
        ListTile(
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
      
    ),));
  }
}

