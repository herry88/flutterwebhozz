import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Abous Us'),
      ),
      body: Center(
        child: new Text(
          'Belajar flutter',
          style: new TextStyle(fontSize: 20.0, color: Colors.green),
        ),
      ),
    );
  }
}
