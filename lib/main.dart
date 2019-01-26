import 'package:flutter/material.dart';
import 'package:flutter_course/product_manger.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy List'),
        ),
        body: ProductManger('Food Tester'),
      ),
    );
  }
}
