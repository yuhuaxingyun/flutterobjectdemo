import 'package:flutter/material.dart';
import 'package:flutterobjectdemo/HomePage.dart';
import 'package:flutterobjectdemo/ActPage.dart';
import 'package:flutterobjectdemo/PersonPage.dart';
import 'TopAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      theme: ThemeData.light(),//主题
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NavigationState();
  }
}

class NavigationState extends State<NavigationPage> with TickerProviderStateMixin {
  List<Widget> pageData;
  int currentPosition = 0;
  BottomNavigationBarType animType = BottomNavigationBarType.fixed;

  @override
  Widget build(BuildContext context){

    final BottomNavigationBar botNavBar = new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(

//            icon: Image(image: AssetImage('images/tab_home_normal.png')),
//              AssetImage("images/tab_home_normal.png"),
//              color: currentPosition == 0 ? Colors.green : Colors.black87,),
//            icon: currentPosition == 0 ? new Image.asset("assets/images/tab_eye_normal.png"):new Image.asset("assets/images/tab_eye_normal.png"),
            icon: new Icon (
              Icons.home,
              color: currentPosition == 0 ? Colors.green : Colors.black87,),
            title: new Text(
              '主页',
              style: new TextStyle(
                color: currentPosition == 0 ? Colors.green : Colors.black87,
              ),
            ),
          ),

          new BottomNavigationBarItem(
            icon: new Icon (
              Icons.local_activity,
              color: currentPosition == 1 ? Colors.green : Colors.black87,),
            title: new Text(
              '活动',
              style: new TextStyle(
              color: currentPosition == 1 ? Colors.green : Colors.black87,
            ),
          ),
        ),
          new BottomNavigationBarItem(
            icon: new Icon (
              Icons.person,
              color: currentPosition == 2 ? Colors.green : Colors.black87,),
            title: new Text(
              '我的',
              style: new TextStyle(
                color: currentPosition == 2 ? Colors.green : Colors.black87,
              ),
            ),
          ),
        ],
      currentIndex: currentPosition,
      type: animType,
      onTap: (index) {
          setState(() {
            currentPosition = index;
          });
      },
    );
    
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("navigationBar"),
//      ),
      body: pageData[currentPosition],
      bottomNavigationBar: botNavBar,
    );
  }

  @override
  void initState() {
    super.initState();
    pageData = new List();
    pageData..add(HomePage())..add(ActPage())..add(PersonalPage());
  }
}





