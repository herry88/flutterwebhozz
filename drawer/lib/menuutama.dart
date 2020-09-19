import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DrawerMenu',
      home: new MyHomePage(title: 'Flutter Drawer'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: Center(
        child: new Text(
          'selamat datang di menu utama',
          style: TextStyle(fontSize: 15.0),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: new Text('Halaman 1'),
              leading: Icon(Icons.list),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Home())),
            ),
            ListTile(
              title: new Text('Halaman 2'),
              leading: Icon(Icons.list),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => AboutUs())),
            ),
          ],
        ),
      ),
    );
  }
}
