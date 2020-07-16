import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PersonalState();
  }
}

class PersonalState extends State<PersonalPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar (
          title: new Text("我的"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list), onPressed: null),
          ],
        ),
    );
  }
}
