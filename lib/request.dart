import 'package:flutter/material.dart';
import 'package:pic/requestList.dart';


class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

final itemText = TextEditingController();
final unitText = TextEditingController();
final amountText = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text("Request"),),
        floatingActionButton: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                  return AlertDialog(
                    content: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text("Item"),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: itemText,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Text("Unit"),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: unitText,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Text("Amount"),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: amountText,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter some text';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              child: Text("Submit"),
                              onPressed: () async {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();
                                }


                                _dataItem.add({
                                  "unit": unitText.text,
                                  "amount": amountText.text,
                                  "item": itemText.text,
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                });
              },
              child: Icon(Icons.plus_one),
              backgroundColor: Colors.lightBlue,
            ),
        body: Container(margin: EdgeInsets.all(20),
         child: ListView(
           children: <Widget>[
   
           Text("Company : "),
           Container(padding: EdgeInsets.only(bottom: 40),child: TextField(decoration: InputDecoration(
             hintText: "Insert Company Name"
           ),

           ),),

           Text("Requester : "),
           Container(padding: EdgeInsets.only(bottom: 40),child: TextField(decoration: InputDecoration(
             hintText: "Admin Name"
           ),

           ),),

           Text("Order Date : "),
           Container(padding: EdgeInsets.only(bottom: 40),child: TextField(decoration: InputDecoration(
             hintText: "Insert Order Date"
           )

           ),),
           
           Text("Description : "),
           Container(padding: EdgeInsets.only(bottom: 40),child: TextField(keyboardType: TextInputType.multiline,
            maxLines: null,
  
           ),),
           Text(""),
           Text("Order List" ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),

           _buildPostList(),

           Padding(padding: EdgeInsets.only(
             bottom: MediaQuery.of(context).viewInsets.bottom
           ),),

           FlatButton(color: Colors.blue, child: Text("Confirm",style: TextStyle(fontSize: 21),), onPressed: () 
           {Navigator.pushReplacement(context,MaterialPageRoute(
                                builder: (context) =>
                                RequestList()));},)

           ],
         ),
        ),
      ),
    );
  } 



List _dataItem = [];

Widget _buildPostList() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Padding(
                child: new ListTile(
                  title: Text(_dataItem[index]["item"]),
                  subtitle: Text(_dataItem[index]["amount"] + _dataItem[index]["unit"]),
                  ),
                padding: EdgeInsets.all(10.0),
              ),
              Divider(
                height: 5.0,
              )
            ],
          );
        },
        itemCount: _dataItem.length,
  );
  }
}

