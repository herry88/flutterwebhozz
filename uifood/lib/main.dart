import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Mobile Apps',
      home: MyHomePage(),
    );
  }
}

//tampung images
var meatImages =
    'https://images.unsplash.com/photo-1532597311687-5c2dc87fff52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var foodImages =
    'https://images.unsplash.com/photo-1520218508822-998633d997e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
var burgerImage =
    'https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var chickenImage =
    'https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

//warna
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyAppBar(),
      body: new Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            MyAppbar(),
            SizedBox(
              height: 16.0,
            ),
            FoodListView(),
            SizedBox(height: 16.0),
            // SelectionTypeSection(),
            SizedBox(
              height: 16.0,
            ),
            MenuItemList()
          ],
        ),
      ),
    );
  }
}

class MyAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.grid_on, color: Colors.grey),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Location',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                'Tangerang',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text(
                    'Home',
                    style: new TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  Text(
                    'Search',
                    style: new TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shop,
                    color: Colors.black,
                  ),
                  Text(
                    'WishList',
                    style: new TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  new Text(
                    'Cart',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,
        child: Container(
          color: iconYellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Menu',
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Popular Menu,',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(
            height: 16.0,
          ),
          MenuItem(),
          MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.network(
              burgerImage,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: iconYellow,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 15.0,
                              ),
                              Text('4.5')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Special Chicken Burger',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: 200.0,
                        child: Text(
                          'Chicken, Yogurt, Red Chilli, Ginger Paste, Carlic Paste..',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FoodListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
