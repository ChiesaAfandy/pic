import 'package:flutter/material.dart';
import 'package:pic/barcode.dart';
import 'package:pic/pending.dart';
import 'package:pic/requestListDetail.dart';

class RequestList extends StatefulWidget {
  @override
  _RequestListState createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: <Widget>[
        IconButton(icon: Icon(Icons.access_time, ), onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                Pending()));},),

        IconButton(icon: Icon(Icons.camera), onPressed: () {Navigator.push(context,MaterialPageRoute(
                                builder: (context) =>
                                Barcode()));},)]),
        body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new RequestListDetail(
            id: data[index]['id'],
            requester: data[index]['requester'],
            company: data[index]['company'],
            timestamp: data[index]['timestamp'],
            notes: data[index]['notes'],
            request_list: data[index]['request_list'],
          );
        },
        itemCount: data.length,
      ),
      ),
      
    );
  }

   List data = [
    {
      "id": "1",
      "requester": "Kezia Marpaung",
      "company": "Perusahaan X",
      "timestamp": "2019-08-26 11:12",
      "notes": "Pergilah pergi saja dari hidupku",
      "request_list": [
        {
          "item": "Besi Baja",
          "unit": "KG",
          "qty": "23"
        }
      ]
    },
    {
      "id": "2",
      "requester": "Kezia Marpaung",
      "company": "Perusahaan Y",
      "timestamp": "2019-08-26 11:12",
      "notes": "Pergilah pergi saja dari hidupku",
      "request_list": [
        {
          "item": "Besi Baja",
          "unit": "KG",
          "qty": "23"
        }
      ]
    },
    {
      "id": "3",
      "requester": "Kezia Marpaung",
      "company": "Perusahaan X",
      "timestamp": "2019-08-26 11:12",
      "notes": "Pergilah pergi saja dari hidupku",
      "request_list": [
        {
          "item": "Besi Baja",
          "unit": "KG",
          "qty": "23"
        }
      ]
    },
  ];
}