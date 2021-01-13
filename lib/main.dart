import 'package:flutter/material.dart';
import 'package:grocaryapp/constant.dart';
import 'package:grocaryapp/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to hide debug banner
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',

      //to add theme to our  app
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primarySwatch: Colors.blue,
      ),

      home: HomeScreen(),
    );
  }
}
