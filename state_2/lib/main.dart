import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final String description;
  final int price;
  final String image;

  Product(this.name, this.description, this.price, this.image);

  static List<Product> getProduct() {
    List<Product> items = <Product>[];
    items.add(
      Product("Pixel", "Ini Pixel ", 800, "pixel.jpg"),
    );
    items.add(
      Product("laptop", "ini laptop", 2000, "laptop.jpg"),
    );
    items.add(
      Product("tablet", "ini tablet", 1500, "tablet.jpg"),
    );
    items.add(
      Product("Pendrive", "ini pendrive", 100, "pendrive.jpg"),
    );

    return items;
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product Navigation Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final items = Product.getProduct();

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.title,
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(item: items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(item: items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.item}) : super(key: key);
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140.0,
      child: new Card(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/" + this.item.image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.item.name,
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(this.item.description),
                    Text(
                      "Price" + this.item.price.toString(),
                    ),
                    RatingBox(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  final Product item;
  ProductPage({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(this.item.name),
      ),
      body: new Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/appimages/' + this.item.image),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        this.item.name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(this.item.description),
                      Text(
                        "Price : " + this.item.price.toString(),
                      ),
                      RatingBox(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RatingBox extends StatefulWidget {
  @override
  _RatingBoxState createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int _rating = 0;
  void _setRatingAsOne() {
    setState(() {
      _rating = 1;
    });
  }

  void _setRatingAsTwo() {
    setState(() {
      _rating = 2;
    });
  }

  void _setRatingAsThree() {
    setState(() {
      _rating = 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _size = 20;
    print(_rating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 1
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsOne,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 2
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsTwo,
            iconSize: _size,
          ),
        ),
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_rating >= 3
                ? Icon(
                    Icons.star,
                    size: _size,
                  )
                : Icon(
                    Icons.star_border,
                    size: _size,
                  )),
            color: Colors.red[500],
            onPressed: _setRatingAsThree,
            iconSize: _size,
          ),
        ),
      ],
    );
  }
}
