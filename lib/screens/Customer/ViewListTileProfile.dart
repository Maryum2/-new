import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePage()));
}
class ProfilePage extends StatefulWidget {

  final DocumentSnapshot document;
  ProfilePage({this.document});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  DocumentSnapshot document;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Penta Events'),
        backgroundColor: Colors.teal,
      ),


      body:  Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/background3.jpg')),
          ),

          child:new ListView(
            children: <Widget>[
          new Column(
          children: <Widget>[

          Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                      height: 230.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                          new CachedNetworkImageProvider(
                            widget.document.data['Event_Cover'],
                          ),),
                      ),
                    )
                )
              ],
            ),
            Positioned(
              top: 130.0,
              child: Container(
                height: 95.0,
                width: 95.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                      new CachedNetworkImageProvider(
                        widget.document.data['Event_Logo'],
                      ),),
                    border:
                    Border.all(color: Colors.white, width: 3.0)),
              ),
            ),
          ],
        ),

            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(widget.document.data['Event_orgName'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 28.0))
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        widget.document.data['Event_address'],
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        widget.document.data['Event_phone'],
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.mail),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        widget.document.data['Event_email'],
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '11:00 AM to 9:00PM',
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_city),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        widget.document.data['Event_serving_areas'],
                        style: TextStyle(fontSize: 18.0),
                      )
                    ],
                  ),
                ],
              ),
            ),


      ],)
]
          )
          )
    );
  }
}
