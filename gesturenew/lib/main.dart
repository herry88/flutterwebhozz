import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Gesture Detector',
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title;

  @override
  void initState() {
    super.initState();
    _title = 'Ini gesture detector';
  }

  void _changeTitle(String title) {
    setState(() {
      _title = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _changeTitle("onTap Clicked");
            },
            child: _buildItem("Click with tap"),
          ),
          GestureDetector(
            onDoubleTap: () {
              _changeTitle("onDoubleTap Clicked");
            },
            child: _buildItem("Click with Double tap"),
          ),
          GestureDetector(
            onLongPress: () {
              _changeTitle("onLongPress Clicked");
            },
            child: _buildItem("Click With onLongPress"),
          ),
          GestureDetector(
            onVerticalDragDown: (dragDetails) {
              _changeTitle("Vertical Drag Clicked");
            },
            child: _buildItem("Click With Vertical drag"),
          ),
          GestureDetector(
              onHorizontalDragEnd: (dragDetails) {
                _changeTitle("Horizontal Drag Clicked");
              },
              child: _buildItem("Click With horizontal drag")),
          GestureDetector(
            onScaleEnd: (scaleDetails) {
              _changeTitle("Scale Clicked");
            },
            child: _buildItem("Click With Scale left"),
          )
        ],
      ),
    );
  }
}

Widget _buildItem(String title) {
  return Container(
    margin: EdgeInsets.all(8.0),
    padding: EdgeInsets.all(8.0),
    color: Colors.blue,
    child: Center(
      child: Text(
        title,
        style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
