import 'package:flutter/material.dart';
import 'package:flutter_day4/ui_view/ui_bottom_menu/page_widget.dart';
class PageHomeBottomMenu extends StatefulWidget {

  _PageHomeBottomMenuState createState() => _PageHomeBottomMenuState();
}

class _PageHomeBottomMenuState extends State<PageHomeBottomMenu> {
  int currentIndex = 0;
  final List<Widget> _listcolorMenu = [
    PageWidget(Colors.blue),
    PageWidget(Colors.deepOrange),
    PageWidget(Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:  Text('Page Bottom Bar'),
         backgroundColor: Colors.brown,
       ),

       body: _listcolorMenu[currentIndex],

       bottomNavigationBar: BottomNavigationBar(
         onTap: onTabTapped,
         currentIndex: currentIndex,
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text('Home') 
            ),
           
           BottomNavigationBarItem(
             icon: Icon(Icons.message),
             title: Text('Message') 
            ),
           
           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             title: Text('Profile') 
            ),
         ],
       ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }
}