import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //deklarasikan variable
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  //user defined function
  void _showDialog(BuildContext context) {
    //flutter definisikan function
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //return object of type dialog
          return AlertDialog(
            title: new Text("Pesan"),
            content: new Text("Hello World"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text('Tutup'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: new Center(
        child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
