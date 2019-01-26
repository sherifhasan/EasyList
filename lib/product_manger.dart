import 'package:flutter/material.dart';
import 'package:flutter_course/products.dart';

class ProductManger extends StatefulWidget {
  final String startingProduct;
  ProductManger(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductManger();
  }
}

class _ProductManger extends State<ProductManger> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Add Product'),
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
          ),
        ),
        Products(_products),
      ],
    );
  }
}
