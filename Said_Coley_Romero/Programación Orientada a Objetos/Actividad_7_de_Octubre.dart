import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto',
      home: Scaffold(
       appBar: AppBar(title: Text('Sena'),)
      )
    )
  }
}
