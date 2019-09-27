import 'package:flutter/material.dart';
import 'package:flutter_day4/ui_view/page_bottom_menu.dart';
import 'package:flutter_day4/ui_view/page_dropdown_menu.dart';
import 'package:flutter_day4/ui_view/page_nav_bar_menu.dart';
import 'package:flutter_day4/ui_view/ui_navbar/page_about.dart';
import 'package:flutter_day4/ui_view/ui_navbar/page_contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),debugShowCheckedModeBanner: false,
      //deklarasi file yang akan di panggil
      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => new PageNavBar(),
        '/about' : (BuildContext context) => new PageAbout(),
        '/contact' : (BuildContext context) => new PageContact(),
      },
    );
  }
}

class PageHome extends StatelessWidget {
  const PageHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Home'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              color: Colors.brown, 
              textColor: Colors.white,
              child: Text ('Navigation Drawer'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageNavBar()));
              },
            ),

            
            MaterialButton(
              color: Colors.brown, 
              textColor: Colors.white,
              child: Text ('Bottom Bar Menu'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageHomeBottomMenu()));
              },
              
            ),
            
            
            MaterialButton(
              color: Colors.brown, 
              textColor: Colors.white,
              child: Text ('Dropdown Menu'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageDropDown()));
              },
              
            ),
          ],
        ),
      ),
    );
  }
}