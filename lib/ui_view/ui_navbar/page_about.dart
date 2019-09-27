import 'package:flutter/material.dart';

class PageAbout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.brown,
      ),backgroundColor: Colors.green,

      body: new Center(
        child: Text('Page Halaman About', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),),
      ),
    );
  }
}