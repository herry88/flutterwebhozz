import 'package:flutter/material.dart';
import 'package:fooddelevery/src/widgets/categories.dart';
import 'package:fooddelevery/src/widgets/custom_widget.dart';
import 'package:fooddelevery/src/helper/style.dart';

// import 'package:fooddelevery/src/commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: <Widget>[
          //topNavigation
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  text: "Apa yang ingin kamu makan ?",
                  size: 18.0,
                ),
              ),
              Stack(
                children: [
                  IconButton(
                      icon: Icon(Icons.notifications_none), onPressed: () {}),
                  Positioned(
                    top: 12.0,
                    right: 12.0,
                    child: Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          //SearchInput
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 4.0),
              ]),
              child: ListTile(
                leading: Icon(
                  Icons.search,
                  color: red,
                ),
                title: TextField(
                  decoration: InputDecoration(
                      hintText: "Cari Makanan Dan Restaurant",
                      border: InputBorder.none),
                ),
                trailing: Icon(
                  Icons.filter_list,
                  color: red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Categories()
        ],
      ),
    );
  }
}
