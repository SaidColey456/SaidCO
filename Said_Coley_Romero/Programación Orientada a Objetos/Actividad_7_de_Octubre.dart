import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SENA',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SENA'),
        ),
        body: Column(
          children: [
            Text('ID:'),
            Text('Nombre:'),
            Text('Email:'),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: Text('BUSCAR'),
            ),
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
