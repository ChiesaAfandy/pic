import 'package:flutter/material.dart';
import 'package:pic/history.dart';
import 'package:pic/request.dart';
import 'package:pic/requestList.dart';

import 'login.dart';

class MainPage extends StatefulWidget {
final String name, pass;

  MainPage(this.name, this.pass);

  @override
  _MainPageState createState() => _MainPageState(this.name, this.pass);
}

class _MainPageState extends State<MainPage> {
  final String name, pass;
  _MainPageState(this.name, this.pass);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("Project Inventory Check")),
        body: Center(       
          child: Column(
            children: <Widget>[
              Data( title: "Project Name", isi: "proyek 1"),
              Data(title: "Project Address", isi: "lorem ipsum",),
              Data(title: "Admin Name", isi: "Kezia Marpaung",),
              FlatButton(
                child: MyCard(icon: Icons.receipt, teks: "Request",iconColor: Colors.black,), 
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                Request()));
                },
              ),
              FlatButton(
                child: MyCard(icon: Icons.format_list_numbered, teks: "Request List",iconColor: Colors.black,), 
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                RequestList()));
                },
              ),
              FlatButton(
                child: MyCard(icon: Icons.history, teks: "Request History",iconColor: Colors.black,), 
                onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                History()));
                                },
              ),
              FlatButton(
                          child: Container(child: MyCard(icon: Icons.exit_to_app, iconColor: Colors.red, teks: "Log Out",),),
                          onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context) =>
                                Login()));},
                          )

            ],
            
          ),
        ),
      )
    );
  }
}

class MyCard extends StatelessWidget {

  MyCard ({this.icon,this.teks,this.iconColor});

  final IconData icon;
  final String teks;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Card(color: Colors.white,
              child: new Row(
            children: <Widget>[
              new Icon(
                icon,
                size: 60,
                color: iconColor,
              ),
              Text("  ")
              ,
              new Text(
                teks,
                style: new TextStyle(fontSize: 21),
              )
            ],
          ))
        ],
      ),
    );
  }
}

class Data extends StatelessWidget {

  Data ({this.icon,this.title,this.isi,});

  final IconData icon;
  final String title, isi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Container(margin: EdgeInsets.fromLTRB(40, 15, 40, 15),
              child: new Column(
            children: <Widget>[
              new Text(
                title,
                style: new TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
              new Text(
                isi,
                style: new TextStyle(fontSize: 21,),
              )
              
            ],
          ))
        ],
      ),
    );
  }
}