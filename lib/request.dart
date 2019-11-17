import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("Request"),),
        body: Container(margin: EdgeInsets.all(20),
         child: ListView(
           children: <Widget>[
   
           Text("Company : "),
           Container(child: TextField(decoration: InputDecoration(
             hintText: "Insert Company Name"
           ),

           ),),

           Text("Requester : "),
           Container(child: TextField(decoration: InputDecoration(
             hintText: "Admin Name"
           ),

           ),),

           Text("Order Date : "),
           Container(child: TextField(decoration: InputDecoration(
             hintText: "Insert Order Date"
           )

           ),),
           
           Text("Description : "),
           Container(child: TextField(keyboardType: TextInputType.multiline,
            maxLines: null,
  
           ),),
           Text(""),
           Text("Order List" ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),

           Container(
             
           ),

           Padding(padding: EdgeInsets.only(
             bottom: MediaQuery.of(context).viewInsets.bottom
           ),)

           ],
         ),
        ),
      ),
    );
  }
}

