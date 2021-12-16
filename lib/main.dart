import 'package:flutter/material.dart';
import 'package:secondapp/pages/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Computer's Today",
      home: HomePage(),
    );
  }
}
