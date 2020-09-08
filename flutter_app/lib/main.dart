import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //variable
  String _value = 'Hello World';

  //function
  void _onPressed() {
    setState(() {
      _value = 'nama saya herry prasetyo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: new Text('Raisebutton'),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            new Text(_value),
            new RaisedButton(
              onPressed: _onPressed,
              child: new Text('Klik Saya!'),
            )
          ],
        ),
      ),
    );
  }
}
