import 'package:flutter/material.dart';
import '../widgets/custom_widget.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;

  const BottomNavIcon({Key key, this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            "images/$image",
            width: 20.0,
            height: 20.0,
          ),
          SizedBox(
            height: 2.0,
          ),
          CustomText(
            text: name,
          )
        ],
      ),
    );
  }
}
