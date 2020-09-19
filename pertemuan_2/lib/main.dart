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
  String _valGender; //ini untuk value data gender
  String _valFriends; //ini untuk value data friend

  List _listGender = ["Male", "Female"]; //array friend
  List _listFriend = [
    "Clara",
    "John",
    "Rizal",
    "Steve",
    "Laurel",
    "Michael"
  ]; //array friend

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Menu"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            DropdownButton(
                hint: Text("select your friend"),
                value: _valFriends,
                items: _listFriend.map((value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _valFriends =
                        value; //untuk memberitahu _valFriend bahwa isinya akan di ubah sesuai yang dipilih
                  });
                }),
            DropdownButton(
                hint: Text("select your gender"),
                value: _valGender,
                items: _listGender.map((value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _valGender =
                        value; //untuk memberitahu _valgender bahwa isinya akan di ubah sesuai yang dipilih
                  });
                }),
            Text("My Friend is $_valFriends, the gender is $_valGender"),
          ],
        ),
      ),
    );
  }
}
