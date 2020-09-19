import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        backgroundColor: Colors.deepPurple,
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            new Image.network(
                'https://cdn.idntimes.com/content-images/post/20191220/73017677-2248225938749972-2951715633794400605-n-1-9a82bb25cb27a28a5ba980bed5b11493_600x400.jpg'),
            new Image.network(
                'https://www.wisataliburan.com/wp-content/uploads/2019/11/Makanan-Malaysia-770x403.jpg')
          ],
        ),
      ),
    );
  }
}
