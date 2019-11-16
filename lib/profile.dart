import 'package:flutter/material.dart';
import 'package:pic/login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back), onPressed: () {Navigator.pop(context);},)
        ], title: Text("Profile"),),
        body: Center(
          child: Column(
            children: <Widget>[
              Data( title: "Nama Proyek", isi: "proyek 1"),
              Data(title: "Alamat Proyek", isi: "lorem ipsum",),
              Data(title: "Nama Admin", isi: "lorem",),

              FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          color: Colors.black12,
                          textColor: Colors.black,
                          child: Text("Log Out"),
                          onPressed: (){Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context) =>
                                Login()));},
                          )

            ],
          ),
        ),
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
          new Container(margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
              child: new Column(
            children: <Widget>[
              new Text(
                title,
                style: new TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
              ),
              new Text(
                isi,
                style: new TextStyle(fontSize: 18,),
              )
              
            ],
          ))
        ],
      ),
    );
  }
}