import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageDropDown extends StatefulWidget {

  _PageDropDownState createState() => _PageDropDownState();
}

class _PageDropDownState extends State<PageDropDown> {
  List<String> listKota = ["DKI Jakarta", "Tanggerang", "Bogor", "Bandung"];
  String nKota = "DKI Jakarta";

  void pilihKota(String value){
    setState(() {
      nKota = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Page Drop Down Menu'),
         backgroundColor: Colors.brown,
       ),

       body: Form(
         child: ListView(
           children: <Widget>[
             Container(
               margin: EdgeInsets.fromLTRB(15.0, 45.0, 15.0, 15.0),
               child: Image.asset('gambar/mlogo.jpeg',height: 100.0, width: 100.0,),
             ),
             
             Container(
               child: Row(
                 children: <Widget>[
                   Text("Lokasi    ", style: TextStyle(fontSize: 18.0, color: Colors.brown),),
                   DropdownButton(
                     onChanged: (String value){
                       pilihKota(value);
                     },
                     value: nKota,
                     items: listKota.map((String value){
                       return new DropdownMenuItem(child: new Text(value),
                       value: value,
                       );
                     }).toList(),
                   ),
                 ],
               ),
             ),

             Container(
               child: MaterialButton(
                 onPressed: (){
                   Fluttertoast.showToast(
                      msg: "Anda Memilih Kota: "+nKota.toString(),
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                 },
                 color: Colors.brown,
                 textColor: Colors.white,
                 child: Text('Submmit'),
               ),
             )
           ],
         ),
       ),
    );
  }
}
