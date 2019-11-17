import 'package:flutter/material.dart';
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


              Spacer(),
              Align(alignment: Alignment.bottomCenter, 
                child: FlatButton(padding: EdgeInsets.only(left: 100,right: 100,top: 10,bottom: 10),
                  child: Text("Confirm",style: TextStyle(fontSize: 21),), color: Colors.blue, onPressed: () {},)),
                  Text("")
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