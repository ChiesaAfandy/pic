import 'package:flutter/material.dart';
import 'package:pic/history.dart';
import 'package:pic/profile.dart';
import 'package:pic/request.dart';
import 'package:pic/requestList.dart';

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
        appBar: AppBar(title: Text("Project Inventory Check"),actions: <Widget>[
            IconButton(
          icon: Icon(Icons.person), 
          onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                Profile()));
            }

            )
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
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
          new Container(margin: EdgeInsets.fromLTRB(40, 60, 40, 60),
              child: new Row(
            children: <Widget>[
              new Icon(
                icon,
                size: 50,
                color: iconColor,
              ),
              new Text(
                teks,
                style: new TextStyle(fontSize: 20),
              )
            ],
          ))
        ],
      ),
    );
  }
}
