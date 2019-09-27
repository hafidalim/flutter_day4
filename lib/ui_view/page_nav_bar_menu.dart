import 'package:flutter/material.dart';

class PageNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Nav Bar'),
        backgroundColor: Colors.brown,
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Welcome'),
            ),

            Divider(),
            ListTile(
              title: Text('About'),
              trailing: Icon(Icons.info),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/about');
                
              },
            ),
            
            
            ListTile(
              title: Text('Contact'),
              trailing: Icon(Icons.phone),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/contact');
                
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Text('Home Page', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),),
      ),
    );
  }
}