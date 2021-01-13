import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocaryapp/constant.dart';
import 'package:grocaryapp/screens/componants/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Body(),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 4,
      title: Text(
        'TakeGreen',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Merri',
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
        color: Colors.black,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.black,
        ),
        IconButton(
          icon: Icon(Icons.shopping_bag),
          onPressed: () {},
          color: Colors.black,
        ),
        SizedBox(
          width: kDefaultPaddin,
        ),
      ],
    );
  }
}
