import 'package:flutter/material.dart';

class PageContact extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Colors.brown,
      ),backgroundColor: Colors.red,

      body: new Center(
        child: Text('Page Halaman Contact', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),),
      ),
    );
  }
}