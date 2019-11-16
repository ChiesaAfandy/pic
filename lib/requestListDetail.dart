import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart';

class RequestListDetail extends StatelessWidget {
  final String id, company, notes, requester, timestamp;
  final List request_list;
  const RequestListDetail({Key key, this.id, this.requester, this.company, this.timestamp, this.notes, this.request_list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime dt = DateTime.parse(this.timestamp);

    return new Container(
        padding: new EdgeInsets.only(top: 10.0, right: 5.0,left: 5.0),
        margin: new EdgeInsets.symmetric(vertical: 1.0),
        child:
        ListTile(
          leading:
          new Container(
            child: Text("#" + this.id, style: TextStyle(color: Colors.blue)),
          ),
          title: Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(this.company, style: TextStyle(color: Colors.black,
                   fontSize: 18.0))
          ),
          subtitle: Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(this.requester, style: TextStyle(color: Colors.black, 
                   fontSize: 16.0)),
                ),
                new Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(timeAgo(dt), style: TextStyle(color: Colors.black, 
                   fontSize: 15.0)),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => JobDetail(this.title,
            //       this.images, this.company, this.location, this.timestamp
            //   )),
            // );
          },
        )
    );
  }
}