//import 'package:ajeeb/models/eventManager.dart';
//
//import 'package:ajeeb/screens/EventManager/ViewProfile.dart';
import 'package:ajeeb/screens/EventManager/Nearest.dart';
////import 'package:ajeeb/screens/managerScreens/setProfile.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:flutter/material.dart';
//import 'package:ajeeb/screens/Customer/ViewListTileProfile.dart';
//import 'package:ajeeb/services/auth.dart';
//
//void main() => runApp(HomePage());
//
//class HomePage extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return _HomePageState();
//  }
//}
//
//class _HomePageState extends State<HomePage> {
//  Icon cusIcon = Icon(Icons.search);
//  Widget cusSearchBar = Text("PENTA EVENTS");
//  Widget widgetForBody;
//  int index;
//  String searchString;
//  String searchStringByArea;
//  String searchStringByCategory;
//  int selectedDrawerIndex;
//  final AuthService _auth = AuthService();
//
//  //int get selectedDrawerIndex => null;
//
//  navigateToDetail(DocumentSnapshot document) {
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return ProfilePage(document: document);
//    }));
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////        backgroundColor: Colors.grey[200],
//      //resizeToAvoidBottomPadding: false,
//        appBar: AppBar(
//          backgroundColor: Colors.teal,
//          actions: <Widget>[
//            IconButton(
//              onPressed: () {
//                // ignore: unnecessary_statements
//               // _onItemTapped;
//                setState(() {
//                  //widgetForBody = AnotherWidgetFromClass();
//                 // _selectedDrawerIndex = 0;
//                   index=0;
//                  if (this.cusIcon.icon == Icons.search) {
//                    this.cusIcon = Icon(Icons.arrow_back);
//                    this.cusSearchBar = TextField(
//                      onChanged: (value) {
//                        setState(() {
//                          searchString = value.toLowerCase();
//
//                        });
//                      },
//                      textInputAction: TextInputAction.go,
//                      decoration: InputDecoration(
//                        border: InputBorder.none,
////                      border: OutlineInputBorder(
////                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
//                        hintText: "Search",
//                      ),
//                      style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 16.0,
//                      ),
//                    );
//                  } else {
//                    this.cusIcon = Icon(Icons.search);
//                    this.cusSearchBar = Text("PENTA EVENTS");
//                    //selectedDrawerIndex=0;
//                  }
//                });
//              },
//              icon: cusIcon,
//            ),
//          ],
//          title: cusSearchBar,
//        ),
//
//        drawer: new Drawer(
//            child: new ListView(children: <Widget>[
//              new UserAccountsDrawerHeader(
//                decoration: BoxDecoration(color: Colors.teal),
//                accountName: new Text("Harper"),
//                accountEmail: new Text("harper@gmail.com"),
//                currentAccountPicture: new GestureDetector(
//                    child: new CircleAvatar(
//                      backgroundImage: new AssetImage('assets/cust.jpg'),
//                    )),
//              ),
//              new ListTile(
//                leading: Icon(Icons.phone_in_talk),
//                title: new Text("Contact us"),
//                onTap: () {
////                  Navigator.push(context, MaterialPageRoute(builder: (context) {
////                    return Contact();
////                  }));
//                },
//              ),
//              new ListTile(
//                leading: Icon(Icons.people),
//                title: new Text("About us"),
//                onTap: () {
////                  Navigator.push(context, MaterialPageRoute(builder: (context) {
////                    return About();
////                  }));
//                },
//              ),
//              new ListTile(
//                leading: Icon(Icons.comment),
//                title: new Text("Reviews"),
//                onTap: () {
////                  Navigator.push(context, MaterialPageRoute(builder: (context) {
////                    return AddReview();
////                  }));
//                },
//              ),
//              new ListTile(
//                leading: Icon(Icons.star),
//                title: new Text("Ratings"),
//                onTap: () {
////                  Navigator.push(context, MaterialPageRoute(builder: (context) {
////                    return Rate();
////                  }));
//                },
//              ),
//              new ListTile(
//                leading: Icon(Icons.perm_identity),
//                title: new Text("View Profile"),
//                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return View();
//                  }));
//                },
//              ),
//              new ListTile(
//                leading: Icon(Icons.edit),
//                title: new Text("Edit Credentials"),
//                onTap: () {
////                  Navigator.push(context, MaterialPageRoute(builder: (context) {
////                    return EditCredentials();
////                  }));
//                },
//              ),
//              new ListTile(
//                  leading: Icon(Icons.lock),
//                  title: new Text("Logout"),
//                  onTap: () async {
//                    await _auth.signOut();
//                  }),
//            ])),
//
//        body:
//
//        SingleChildScrollView(
//            child: Column(children: <Widget>[
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: <Widget>[
//                  RaisedButton.icon(
//                    onPressed: () {
//                      // ignore: unnecessary_statements
//
//                      setState(() {
//                        index = 1;
//                     //   _selectedDrawerIndex = 1;
//                        if (this.cusIcon.icon == Icons.search) {
//                          this.cusIcon = Icon(Icons.arrow_back);
//                          this.cusSearchBar = TextField(
//                            onChanged: (value) {
//                              setState(() {
//                                searchStringByArea = value.toLowerCase();
//                              });
//                            },
//                            textInputAction: TextInputAction.go,
//                            decoration: InputDecoration(
//                              border: InputBorder.none,
////                      border: OutlineInputBorder(
////                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
//                              hintText: "Search",
//                            ),
//                            style: TextStyle(
//                              color: Colors.white,
//                              fontSize: 16.0,
//                            ),
//                          );
//                        } else {
//                          this.cusIcon = Icon(Icons.search);
//                          this.cusSearchBar = Text("PENTA EVENTS");
//                        }
//                      });
//                    },
//                    shape: new RoundedRectangleBorder(
//                      borderRadius: new BorderRadius.circular(15.0),
//                    ),
//                    color: Colors.teal,
//                    icon: Icon(
//                      Icons.directions_run,
//                      color: Colors.white,
//                    ),
//                    label: Text('Nearest',
//                        style: TextStyle(
//                          color: Colors.white,
//                        )),
//                  ),
//
//
//                  RaisedButton.icon(
//                    onPressed: () {},
//                    shape: new RoundedRectangleBorder(
//                      borderRadius: new BorderRadius.circular(15.0),
//                    ),
//                    color: Colors.teal,
//                    icon: Icon(
//                      Icons.format_align_justify,
//                      color: Colors.white,
//                    ),
//                    label: Text('Categories',
//                        style: TextStyle(
//                          color: Colors.white,
//                        )),
//                  ),
//                ],
//              ),
//
//              index == 0 ? NameSearch() : NearestSearch(),
//
////              Row(children: [
////              Expanded(
////                  child: SizedBox(
////                      height: 725.0,
////
////                      child: StreamBuilder<QuerySnapshot>(
////                        //if (snapshot.hasData){
////                        stream: (searchString == null || searchString.trim() == "")
////                            ? Firestore.instance
////                            .collection("Event_manager")
////                            .snapshots()
////                            : Firestore.instance
////                            .collection("Event_manager")
////                            .where("SearchByOrgName", arrayContains: searchString)
////                            .snapshots(),
////                        // ignore: missing_return
////                        builder: (context, snapshot) {
////                          if (snapshot.hasError)
////                            return Text('Error: ${snapshot.error}');
////                          switch (snapshot.connectionState) {
////                            case ConnectionState.waiting:
////                              return Center(child: CircularProgressIndicator());
////
////                            default:
////                              return new ListView(
////                                physics: BouncingScrollPhysics(),
////                                children: snapshot.data.documents
////                                    .map((DocumentSnapshot document) {
////                                  return new Column(children: <Widget>[
////                                    Card(
////                                        elevation: 25.0,
////                                        margin: new EdgeInsets.symmetric(
////                                            horizontal: 10.0, vertical: 15.0),
////                                        child: Container(
////                                          //children: <Widget>[]
////                                          height: 150.0,
////
//////                                            aw2child: Column(
//////                                              children: <Widget>[
////                                          //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
////                                          child: Stack(
////                                            children: <Widget>[
////                                              Row(
////                                                children: <Widget>[
////                                                  Expanded(
////                                                    child: Container(
////                                                      height: 500.0,
////                                                      decoration: BoxDecoration(
////                                                          image: DecorationImage(
////                                                            fit: BoxFit.cover,
////                                                            image:
////                                                            new CachedNetworkImageProvider(
////                                                              document['Event_Cover'],
////                                                            ),
////                                                          )),
////                                                    ),
////                                                  )
////                                                ],
////                                              ),
////                                              ListTile(
////                                                onTap: () {
////                                                  navigateToDetail(document);
////                                                },
////                                              ),
////                                              Positioned(
////                                                top: 60.0,
////                                                child: Container(
////                                                  height: 80.0,
////                                                  width: 80.0,
////                                                  decoration: BoxDecoration(
////                                                      shape: BoxShape.circle,
////                                                      image: DecorationImage(
////                                                        fit: BoxFit.fill,
////                                                        image:
////                                                        new CachedNetworkImageProvider(
////                                                          document['Event_Logo'],
////                                                        ),
////                                                      ),
////                                                      border: Border.all(
////                                                          color: Colors.white,
////                                                          width: 3.0)),
////                                                ),
////                                              ),
////                                            ],
////                                          ),
//////
////                                        )),
////                                    Center(
////                                        child: Text(document['Event_orgName'],
////                                            style: TextStyle(
////                                              color: Colors.teal,
////                                              fontSize: 20.0,
////                                            ))),
////                                  ]);
////                                }).toList(),
////                              );
////                          }
////                        },
////                      )))
////    ])
//
////            else{
////              new NearestSearch();
////        }
//              //     _getSearchFilterWidget(_selectedDrawerIndex)
//            ])));
//  }
//
////  void _onItemTapped(int myIndex) {
////    if (myIndex == 0) {
////      setState(() {
////        index = 0;
////      });
////    }
////    if (myIndex == 1) {
////      setState(() {
////        index = 1;
////      });
////    }
////  }
//}
//
////class SearchButton extends StatefulWidget {
////  @override
////  State<StatefulWidget> createState() {
////    // TODO: implement createState
////    return _SearchButtonState();
////  }
////}
////
////class _SearchButtonState extends State<SearchButton> {
////  Icon cusIcon = Icon(Icons.search);
////  Widget cusSearchBar = Text("PENTA EVENTS");
////  Widget widgetForBody;
////  int _selectedDrawerIndex;
////  String searchString;
////  String searchStringByArea;
////  String searchStringByCategory;
////
////  @override
////  Widget build(BuildContext context) {
////    // TODO: implement build
////    return Scaffold(
//////      appBar: AppBar(
//////        backgroundColor: Colors.teal,
//////        actions: <Widget>[
//////          IconButton(
//////            onPressed: () {
//////              setState(() {
//////                //widgetForBody = AnotherWidgetFromClass();
//////                _selectedDrawerIndex = 0;
//////                if (this.cusIcon.icon == Icons.search) {
//////                  this.cusIcon = Icon(Icons.arrow_back);
//////                  this.cusSearchBar = TextField(
//////                    onChanged: (value) {
//////                      setState(() {
//////                        searchString = value.toLowerCase();
//////                        //searchStringByArea= value.toLowerCase();
//////                      });
//////                    },
//////                    textInputAction: TextInputAction.go,
//////                    decoration: InputDecoration(
//////                      border: InputBorder.none,
////////                      border: OutlineInputBorder(
////////                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
//////                      hintText: "Search",
//////                    ),
//////                    style: TextStyle(
//////                      color: Colors.white,
//////                      fontSize: 16.0,
//////                    ),
//////                  );
//////                } else {
//////                  this.cusIcon = Icon(Icons.search);
//////                  this.cusSearchBar = Text("PENTA EVENTS");
//////                  //selectedDrawerIndex=0;
//////                }
//////              });
//////            },
//////            icon: cusIcon,
//////          ),
//////        ],
//////        title: cusSearchBar,
//////      ),
////        body: SingleChildScrollView(
////            child: Column(children: <Widget>[
////      Row(
////        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////        crossAxisAlignment: CrossAxisAlignment.center,
////        children: <Widget>[
////          RaisedButton.icon(
////            onPressed: () {
////              setState(() {
////                //_selectedDrawerIndex = 1;
////                if (this.cusIcon.icon == Icons.search) {
////                  this.cusIcon = Icon(Icons.arrow_back);
////                  this.cusSearchBar = TextField(
////                    onChanged: (value) {
////                      setState(() {
////                        searchStringByArea = value.toLowerCase();
////                      });
////                    },
////                    textInputAction: TextInputAction.go,
////                    decoration: InputDecoration(
////                      border: InputBorder.none,
//////                      border: OutlineInputBorder(
//////                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
////                      hintText: "Search",
////                    ),
////                    style: TextStyle(
////                      color: Colors.white,
////                      fontSize: 16.0,
////                    ),
////                  );
////                } else {
////                  this.cusIcon = Icon(Icons.search);
////                  this.cusSearchBar = Text("PENTA EVENTS");
////                }
////              });
////            },
////            shape: new RoundedRectangleBorder(
////              borderRadius: new BorderRadius.circular(15.0),
////            ),
////            color: Colors.teal,
////            icon: Icon(
////              Icons.directions_run,
////              color: Colors.white,
////            ),
////            label: Text('Nearest',
////                style: TextStyle(
////                  color: Colors.white,
////                )),
////          ),
////          RaisedButton.icon(
////            onPressed: () {},
////            shape: new RoundedRectangleBorder(
////              borderRadius: new BorderRadius.circular(15.0),
////            ),
////            color: Colors.teal,
////            icon: Icon(
////              Icons.format_align_justify,
////              color: Colors.white,
////            ),
////            label: Text('Categories',
////                style: TextStyle(
////                  color: Colors.white,
////                )),
////          ),
////        ],
////      ),
////    ])));
////  }
////}
////
//////  _getSearchFilterWidget(int pos) {
//////    //int _selectedDrawerIndex = 0;
//////    switch (pos) {
//////      case 0:
//////        return new NameSearch();
//////      case 1:
//////        return new NearestSearch();
//////
//////
//////    }
//////  }
//////}
//
//class NameSearch extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return _NameSearchState();
//  }
//}
//
//class _NameSearchState extends State<NameSearch> {
//  Icon cusIcon = Icon(Icons.search);
//  Widget cusSearchBar = Text("PENTA EVENTS");
//  String searchString;
//  String searchStringByArea;
//
//  navigateToDetail(DocumentSnapshot document) {
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return ProfilePage(document: document);
//    }));
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//        body:
//        Expanded(
//            child: SizedBox(
//                height: 725.0,
//                child: StreamBuilder<QuerySnapshot>(
//                  //if (snapshot.hasData)
//                  stream: (searchString == null || searchString.trim() == "")
//                      ? Firestore.instance
//                          .collection("Event_manager")
//                          .snapshots()
//                      : Firestore.instance
//                          .collection("Event_manager")
//                          .where("SearchByOrgName", arrayContains: searchString)
//                          .snapshots(),
//                  // ignore: missing_return
//                  builder: (context, snapshot) {
//                    if (snapshot.hasError)
//                      return Text('Error: ${snapshot.error}');
//                    switch (snapshot.connectionState) {
//                      case ConnectionState.waiting:
//                        return Center(child: CircularProgressIndicator());
//
//                      default:
//                        return new ListView(
//                          physics: BouncingScrollPhysics(),
//                          children: snapshot.data.documents
//                              .map((DocumentSnapshot document) {
//                            return new Column(children: <Widget>[
//                              Card(
//                                  elevation: 25.0,
//                                  margin: new EdgeInsets.symmetric(
//                                      horizontal: 10.0, vertical: 15.0),
//                                  child: Container(
//                                    //children: <Widget>[]
//                                    height: 150.0,
//
////                                            aw2child: Column(
////                                              children: <Widget>[
//                                    //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
//                                    child: Stack(
//                                      children: <Widget>[
//                                        Row(
//                                          children: <Widget>[
//                                            Expanded(
//                                              child: Container(
//                                                height: 500.0,
//                                                decoration: BoxDecoration(
//                                                    image: DecorationImage(
//                                                  fit: BoxFit.cover,
//                                                  image:
//                                                      new CachedNetworkImageProvider(
//                                                    document['Event_Cover'],
//                                                  ),
//                                                )),
//                                              ),
//                                            )
//                                          ],
//                                        ),
//                                        ListTile(
//                                          onTap: () {
//                                            navigateToDetail(document);
//                                          },
//                                        ),
//                                        Positioned(
//                                          top: 60.0,
//                                          child: Container(
//                                            height: 80.0,
//                                            width: 80.0,
//                                            decoration: BoxDecoration(
//                                                shape: BoxShape.circle,
//                                                image: DecorationImage(
//                                                  fit: BoxFit.fill,
//                                                  image:
//                                                      new CachedNetworkImageProvider(
//                                                    document['Event_Logo'],
//                                                  ),
//                                                ),
//                                                border: Border.all(
//                                                    color: Colors.white,
//                                                    width: 3.0)),
//                                          ),
//                                        ),
//                                      ],
//                                    ),
////
//                                  )),
//                              Center(
//                                  child: Text(document['Event_orgName'],
//                                      style: TextStyle(
//                                        color: Colors.teal,
//                                        fontSize: 20.0,
//                                      ))),
//                            ]);
//                          }).toList(),
//                        );
//                    }
//                  },
//                )))
//      );
//
//  }
//}
//
//class NearestSearch extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return _NearestSearchState();
//  }
//}
//
//class _NearestSearchState extends State<NearestSearch> {
//  String searchStringByArea;
//  Icon cusIcon = Icon(Icons.search);
//  Widget cusSearchBar = Text("PENTA EVENTS");
//  String searchString;
//
////  Icon cusIcon = Icon(Icons.search);
////  Widget cusSearchBar = Text("PENTA EVENTS");
//
//  navigateToDetail(DocumentSnapshot document) {
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return ProfilePage(document: document);
//    }));
//  }
//
//  @override
//  Widget build(BuildContext context) {
////
//    // TODO: implement build
//    return Scaffold(
//        body: Expanded(
//              child: SizedBox(
//                  height: 725.0,
//                  child: StreamBuilder<QuerySnapshot>(
//                    //if (snapshot.hasData)
//                    stream: (searchStringByArea == null ||
//                        searchStringByArea.trim() == "")
//                        ? Firestore.instance.collection("Event_manager")
//                        .snapshots()
//                        : Firestore.instance
//                        .collection("Event_manager")
//                        .where(
//                        "SearchByArea", arrayContains: searchStringByArea)
//                        .snapshots(),
//                    // ignore: missing_return
//                    builder: (context, snapshot) {
//                      if (snapshot.hasError)
//                        return Text('Error: ${snapshot.error}');
//                      switch (snapshot.connectionState) {
//                        case ConnectionState.waiting:
//                          return Center(child: CircularProgressIndicator());
//
//                        default:
//                          return new ListView(
//                            physics: BouncingScrollPhysics(),
//                            children: snapshot.data.documents
//                                .map((DocumentSnapshot document) {
//                              return new Column(children: <Widget>[
//                                Card(
//                                    elevation: 25.0,
//                                    margin: new EdgeInsets.symmetric(
//                                        horizontal: 10.0, vertical: 15.0),
//                                    child: Container(
//                                      //children: <Widget>[]
//                                      height: 150.0,
//
////                                            aw2child: Column(
////                                              children: <Widget>[
//                                      //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
//                                      child: Stack(
//                                        children: <Widget>[
//                                          Row(
//                                            children: <Widget>[
//                                              Expanded(
//                                                child: Container(
//                                                  height: 500.0,
//                                                  decoration: BoxDecoration(
//                                                      image: DecorationImage(
//                                                        fit: BoxFit.cover,
//                                                        image:
//                                                        new CachedNetworkImageProvider(
//                                                          document['Event_Cover'],
//                                                        ),
//                                                      )),
//                                                ),
//                                              )
//                                            ],
//                                          ),
//                                          ListTile(
//                                            onTap: () {
//                                              navigateToDetail(document);
//                                            },
//                                          ),
//                                          Positioned(
//                                            top: 60.0,
//                                            child: Container(
//                                              height: 80.0,
//                                              width: 80.0,
//                                              decoration: BoxDecoration(
//                                                  shape: BoxShape.circle,
//                                                  image: DecorationImage(
//                                                    fit: BoxFit.fill,
//                                                    image:
//                                                    new CachedNetworkImageProvider(
//                                                      document['Event_Logo'],
//                                                    ),
//                                                  ),
//                                                  border: Border.all(
//                                                      color: Colors.white,
//                                                      width: 3.0)),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
////
//                                    )),
//                                Center(
//                                    child: Text(document['Event_orgName'],
//                                        style: TextStyle(
//                                          color: Colors.teal,
//                                          fontSize: 20.0,
//                                        ))),
//                              ]);
//                            }).toList(),
//                          );
//                      }
//                    },
//                  )))
//
//        );
//  }
//
//}
















import 'package:ajeeb/screens/EventManager/ViewProfile.dart';
//import 'package:ajeeb/screens/managerScreens/setProfile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ajeeb/screens/Customer/ViewListTileProfile.dart';
import 'package:ajeeb/services/auth.dart';
import 'package:ajeeb/screens/EventManager/Nearest.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AppBar Scaffold',
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
    home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  Icon cusIcon = Icon(Icons.search);
  Icon cusIcon1=Icon(Icons.search);
  Widget cusSearchBar = Text("PENTA EVENTS");
  Widget cusSearchBar1 = Text("PENTA EVENTS");
  String searchString;
  String searchStringByArea;
  String searchStringByCategory;
  int index=0;
  final AuthService _auth = AuthService();

  navigateToDetail(DocumentSnapshot document) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProfilePage(document: document);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        backgroundColor: Colors.grey[200],
      //resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.arrow_back);
                    this.cusSearchBar = TextField(
                      onChanged: (value) {
                        setState(() {
                          searchString = value.toLowerCase();
                          //searchStringByArea= value.toLowerCase();
                        });
                      },
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        border: InputBorder.none,
//                      border: OutlineInputBorder(
//                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
                        hintText: "Search",
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    );
                  } else {
                    this.cusIcon = Icon(Icons.search);
                    this.cusSearchBar = Text("PENTA EVENTS");
                  }
                });
              },
              icon: cusIcon,
            ),
          ],
          title: cusSearchBar,
        ),
        drawer: new Drawer(
            child: new ListView(children: <Widget>[
              new UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                accountName: new Text("Harper"),
                accountEmail: new Text("harper@gmail.com"),
                currentAccountPicture: new GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: new AssetImage('assets/cust.jpg'),
                    )),
              ),
              new ListTile(
                leading: Icon(Icons.phone_in_talk),
                title: new Text("Contact us"),
                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return Contact();
//                  }));
                },
              ),
              new ListTile(
                leading: Icon(Icons.people),
                title: new Text("About us"),
                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return About();
//                  }));
                },
              ),
              new ListTile(
                leading: Icon(Icons.comment),
                title: new Text("Reviews"),
                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return AddReview();
//                  }));
                },
              ),
              new ListTile(
                leading: Icon(Icons.star),
                title: new Text("Ratings"),
                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return Rate();
//                  }));
                },
              ),
              new ListTile(
                leading: Icon(Icons.perm_identity),
                title: new Text("View Profile"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return View();
                  }));
                },
              ),
              new ListTile(
                leading: Icon(Icons.edit),
                title: new Text("Edit Credentials"),
                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return EditCredentials();
//                  }));
                },
              ),
              new ListTile(
                  leading: Icon(Icons.lock),
                  title: new Text("Logout"),
                  onTap: () async {
                    await _auth.signOut();
                  }),
            ])),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: () {
                      //Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GoToNearest();
                  }));


                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    color: Colors.teal,
                    icon: Icon(
                      Icons.directions_run,
                      color: Colors.white,
                    ),
                    label: Text('Nearest',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
//                  RaisedButton.icon(
//                    onPressed: () {},
//                    shape: new RoundedRectangleBorder(
//                      borderRadius: new BorderRadius.circular(15.0),
//                    ),
//                    color: Colors.teal,
//                    icon: Icon(
//                      Icons.format_align_justify,
//                      color: Colors.white,
//                    ),
//                    label: Text('Categories',
//                        style: TextStyle(
//                          color: Colors.white,
//                        )),
//                  ),
                ],
              ),

              Row(children: [
                Expanded(
                    child: SizedBox(
                        height: 725.0,
                        child: StreamBuilder<QuerySnapshot>(
                          //if (snapshot.hasData)
                          stream: (searchString == null ||
                              searchString.trim() == "")
                          //||
                          // (searchStringByArea == null || searchStringByArea.trim() == "")
                              ? Firestore.instance
                              .collection("Event_manager")
                              .snapshots()
                              : Firestore.instance
                              .collection("Event_manager")
                              .where("SearchByOrgName",
                              arrayContains: searchString)
                          //.where("SearchByArea", arrayContains: searchStringByArea)
                              .snapshots(),
                          // ignore: missing_return
                          builder: (context, snapshot) {
                            if (snapshot.hasError)
                              return Text('Error: ${snapshot.error}');
                            switch (snapshot.connectionState) {
                              case ConnectionState.waiting:
                                return Center(child: CircularProgressIndicator());

                              default:
                                return new ListView(
                                  physics: BouncingScrollPhysics(),
                                  children: snapshot.data.documents
                                      .map((DocumentSnapshot document) {
                                    return new Column(children: <Widget>[
                                      Card(
                                          elevation: 25.0,
                                          margin: new EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 15.0),
                                          child: Container(
                                            //children: <Widget>[]
                                            height: 150.0,

//                                            aw2child: Column(
//                                              children: <Widget>[
                                            //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                                            child: Stack(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Expanded(
                                                      child: Container(
                                                        height: 500.0,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                              new CachedNetworkImageProvider(
                                                                document['Event_Cover'],
                                                              ),
                                                            )),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                ListTile(
                                                  onTap: () {
                                                    navigateToDetail(document);
                                                  },
                                                ),
                                                Positioned(
                                                  top: 60.0,
                                                  child: Container(
                                                    height: 80.0,
                                                    width: 80.0,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                          fit: BoxFit.fill,
                                                          image:
                                                          new CachedNetworkImageProvider(
                                                            document['Event_Logo'],
                                                          ),
                                                        ),
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 3.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
//
                                          )),
                                      Center(
                                          child: Text(document['Event_orgName'],
                                              style: TextStyle(
                                                color: Colors.teal,
                                                fontSize: 20.0,
                                              ))),
                                    ]);
                                  }).toList(),
                                );
                            }
                          },
                        )))


              ])
            ])));
  }

//  Future<void> _nearest(BuildContext context){
//
//
//
//    var alertDialog = AlertDialog(
//        title: Text("You are registered successfully!"),
//        content: Text("Now press Okay for going to login screen or press cancel for going to main screen. "),
//        actions: <Widget>[
//          RaisedButton(
//            shape: new RoundedRectangleBorder(
//              borderRadius: new BorderRadius.circular(15.0),
//            ),
//            child: Text('Ok'),
//            onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (context) {
//                return CustLogIn();
//              }));
//            },
//            elevation: 10.0,
//            color: Colors.teal,
//          ),
//          RaisedButton(
//            shape: new RoundedRectangleBorder(
//              borderRadius: new BorderRadius.circular(15.0),
//            ),
//            child: Text('Cancel'),
//            onPressed: () {
//              Navigator.push(context, MaterialPageRoute(builder: (context) {
//                return MyHomePage();
//              }));
//            },
//            elevation: 10.0,
//            color: Colors.teal,
//          )
//        ]
//    );
//    //Navigator.of(context).pop();
//    showDialog(
//        context: context,
//        builder: (BuildContext context) {
//          return alertDialog;
//        }
//    );

//    return showDialog(
//        context: context,
//        builder: (BuildContext context){
//          final manager = Provider.of<EventManager>(context);
//          return StreamBuilder<EventManager>(
//              stream: EventManager(uid: manager.uid).managerdata,
//              builder: (context, snapshot) {
//                if(snapshot.hasData){
//                  EventManager managerData=snapshot.data;
//                  return AlertDialog(
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(10.0))
//                    ),
//                    backgroundColor: Colors.white,
//                    title: Text(
//                      "Description",
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                        fontStyle: FontStyle.italic,
//                        fontSize: 25.0,
//                      ),
//                    ),
//                    content: SingleChildScrollView(
//                      child: Form(
//                        key: _formKey,
//                        child: ListBody(
//                          children: <Widget>[
//                            TextFormField(
//                              initialValue: managerData.description,
//                              //controller: _descriptionController,
//                              //focusNode: _descriptionFocusNode,
//                              autofocus: false,
//                              maxLines: 8 ,
//                              decoration: new InputDecoration(
//
//                                focusedBorder: OutlineInputBorder(
//                                  borderRadius:
//                                  BorderRadius.all(Radius.circular(1.0)),
//                                  borderSide: BorderSide(
//                                    color: Colors.teal,
//                                    //Color of the border
//                                    style: BorderStyle.solid,
//                                    //Style of the border
//                                    width: 2.5, //width of the border
//                                  ),
//                                ),
//                                border: OutlineInputBorder(
//                                  borderRadius: BorderRadius.circular(15.0),
//                                ),
//                              ),
//
//                              keyboardType: TextInputType.text,
//                              textInputAction: TextInputAction.next,
//                              validator: (val)=> val.isEmpty? 'Enter Description': null,
//                              onChanged: (val){
//                                setState(() => _description = val);
//                              },
//                            ),
//                            SizedBox(height: 35.0),
//                            RaisedButton(
//                              //color: Colors.teal[400],
//                                shape: new RoundedRectangleBorder(
//                                  borderRadius: new BorderRadius.circular(15.0),
//                                  side: BorderSide(
//                                    color: Colors.teal, //Color of the border
//                                    style: BorderStyle.solid, //Style of the border
//                                    width: 2.0, //width of the border
//                                  ),
//                                ),
//                                child: Text(
//                                  'Upload',
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 25.0,
//                                      color: Colors.white),
//                                ),
//                                elevation: 10.0,
//                                //splashColor: Colors.black12,
//                                color: Colors.teal,
//                                onPressed: ()async {
//                                  if(_formKey.currentState.validate()){
//                                    await UploadDescription(_description ?? managerData.description);
//                                    Navigator.of(context).pop();
//                                  }
//
//
//                                })
//                          ],
//                        ),
//                      ),
//                    ),
//                  );
//                }else{
//                  return Loading();
//                }
//
//              }
//          );
//        }
//    );

  }


//class Nearest extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return _NearestState();
//  }
//}
//
//class _NearestState extends State<Nearest> {
//  String searchStringByArea;
////  Icon cusIcon = Icon(Icons.search);
////  Widget cusSearchBar = Text("PENTA EVENTS");
//
//  navigateToDetail(DocumentSnapshot document) {
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return ProfilePage(document: document);
//    }));
//  }
//
//  @override
//  Widget build(BuildContext context) {
////    setState(() {
////      if (this.cusIcon.icon == Icons.search) {
////        this.cusIcon = Icon(Icons.arrow_back);
////        this.cusSearchBar = TextField(
////          onChanged: (value) {
////            setState(() {
////              searchStringByArea = value.toLowerCase();
////            });
////          },
////          textInputAction: TextInputAction.go,
////          decoration: InputDecoration(
////            border: InputBorder.none,
//////                      border: OutlineInputBorder(
//////                          borderRadius: BorderRadius.all(Radius.circular(25.0))),
////            hintText: "Search",
////          ),
////          style: TextStyle(
////            color: Colors.white,
////            fontSize: 16.0,
////          ),
////        );
////      } else {
////        this.cusIcon = Icon(Icons.search);
////        this.cusSearchBar = Text("PENTA EVENTS");
////      }
////    });
//    //icon: cusIcon,
//    // TODO: implement build
//    return Scaffold(
//        body: Row(children: [
//          Expanded(
//              child: SizedBox(
//                  height: 725.0,
//                  child: StreamBuilder<QuerySnapshot>(
//                    //if (snapshot.hasData)
//                    stream: (searchStringByArea == null ||
//                        searchStringByArea.trim() == "")
//                    //||
//                    // (searchStringByArea == null || searchStringByArea.trim() == "")
//                        ? Firestore.instance.collection("Event_manager").snapshots()
//                        : Firestore.instance
//                        .collection("Event_manager")
//                        .where("SearchByArea",
//                        arrayContains: searchStringByArea)
//                    //.where("SearchByArea", arrayContains: searchStringByArea)
//                        .snapshots(),
//                    // ignore: missing_return
//                    builder: (context, snapshot) {
//                      if (snapshot.hasError)
//                        return Text('Error: ${snapshot.error}');
//                      switch (snapshot.connectionState) {
//                        case ConnectionState.waiting:
//                          return Center(child: CircularProgressIndicator());
//
//                        default:
//                          return new ListView(
//                            physics: BouncingScrollPhysics(),
//                            children: snapshot.data.documents
//                                .map((DocumentSnapshot document) {
//                              return new Column(children: <Widget>[
//                                Card(
//                                    elevation: 25.0,
//                                    margin: new EdgeInsets.symmetric(
//                                        horizontal: 10.0, vertical: 15.0),
//                                    child: Container(
//                                      //children: <Widget>[]
//                                      height: 150.0,
//
////                                            aw2child: Column(
////                                              children: <Widget>[
//                                      //decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
//                                      child: Stack(
//                                        children: <Widget>[
//                                          Row(
//                                            children: <Widget>[
//                                              Expanded(
//                                                child: Container(
//                                                  height: 500.0,
//                                                  decoration: BoxDecoration(
//                                                      image: DecorationImage(
//                                                        fit: BoxFit.cover,
//                                                        image:
//                                                        new CachedNetworkImageProvider(
//                                                          document['Event_Cover'],
//                                                        ),
//                                                      )),
//                                                ),
//                                              )
//                                            ],
//                                          ),
//                                          ListTile(
//                                            onTap: () {
//                                              navigateToDetail(document);
//                                            },
//                                          ),
//                                          Positioned(
//                                            top: 60.0,
//                                            child: Container(
//                                              height: 80.0,
//                                              width: 80.0,
//                                              decoration: BoxDecoration(
//                                                  shape: BoxShape.circle,
//                                                  image: DecorationImage(
//                                                    fit: BoxFit.fill,
//                                                    image:
//                                                    new CachedNetworkImageProvider(
//                                                      document['Event_Logo'],
//                                                    ),
//                                                  ),
//                                                  border: Border.all(
//                                                      color: Colors.white,
//                                                      width: 3.0)),
//                                            ),
//                                          ),
//                                        ],
//                                      ),
////
//                                    )),
//                                Center(
//                                    child: Text(document['Event_orgName'],
//                                        style: TextStyle(
//                                          color: Colors.teal,
//                                          fontSize: 20.0,
//                                        ))),
//                              ]);
//                            }).toList(),
//                          );
//                      }
//                    },
//                  )))
//        ]));
//  }
//}


