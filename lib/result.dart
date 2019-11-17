import 'package:flutter/material.dart';
import 'package:pic/history.dart';
import 'package:pic/print.dart';
import 'package:pic/request.dart';
class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Request #1"),),
        body: Container(
          child: Column(
            children: <Widget>[
              Kata(title: "Company : ", isi: "Perusahaan X",),
              Kata(title: "Requester : ", isi: "Kezia Marpaung",),
              Kata(title: "Order Date : ", isi: "2019-08-26 11:12",),
              Kata(title: "Description : ", isi: "Lorem ipsum",),
              Text(""),
              Text("Order List" ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ListTile(title: Text("Semen"),subtitle: Text("100 Sac"),),
              Divider(
                height: 5.0,
              ),
              ListTile(title: Text("Besi"),subtitle: Text("200 Kg")),
              Divider(
                height: 5.0,
              ),
              ListTile(title: Text("Cat"),subtitle: Text("5 Pail")),
              Divider(
                height: 5.0,
              ),
              


              Spacer(),
              Align(alignment: Alignment.bottomCenter, 
                child: FlatButton(padding: EdgeInsets.only(left: 100,right: 100,top: 10,bottom: 10),
                  child: Text("Confirm",style: TextStyle(fontSize: 21),), color: Colors.blue, onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context) =>
                                Print()));},)),
                  Text(""),
                  Align(alignment: Alignment.bottomCenter, 
                child: FlatButton(padding: EdgeInsets.only(left: 100,right: 100,top: 10,bottom: 10),
                  child: Text("Re-Request",style: TextStyle(fontSize: 21),), color: Colors.red, onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context) =>
                                Request()));},)),
            ],
          ),
        ),
      ),
    );
  }
}

class Kata extends StatelessWidget {
  Kata ({this.title,this.isi});
  final String title, isi;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(title , style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
        Text(isi , style: TextStyle(fontSize: 21))
      ],
      
    );
  }
}