import 'package:flutter/material.dart';

class RequestList extends StatefulWidget {
  @override
  _RequestListState createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
           child: ListView(
                  children: <Widget>[
                    Card(child: Isi(title:"Request #1" ,admin: "Lorem" ,perusahaan: "Lorem Ipsum" ,tanggal: "13 april 2020" ,),)
                  ],
          ),
        ),
      ),
      
    );
  }
}


class Isi extends StatelessWidget {

  Isi ({this.title, this.admin, this.perusahaan, this.tanggal,});

  final String title, admin, perusahaan, tanggal;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Container(margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
              child: new Column(
            children: <Widget>[
              new Text(
                title,
                style: new TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
              ),
              new Text(
                admin,
                style: new TextStyle(fontSize: 18,),
              ),
              new Text(
                perusahaan,
                style: new TextStyle(fontSize: 18,),
              ),
              new Text(
                tanggal,
                style: new TextStyle(fontSize: 18,),
              )
            ],
          ))
        ],
      ),
    );
  }
}