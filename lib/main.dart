import 'package:flutter/material.dart';
import 'package:start_app/base/RandowWords.dart';
import 'package:start_app/base/base_material.dart';
import 'package:start_app/base/base_widget.dart';
import 'package:start_app/base/button_widget.dart';
import 'package:start_app/base/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Startup Name Generator',
        theme: new ThemeData(
          primaryColor: Colors.red
        ),
        debugShowCheckedModeBanner: false,
        home: new ShoppingList(products: <Product>[
          new Product(name: 'fdsfsd'),
          new Product(name: 'adfass'),
          new Product(name: 'easdfsa'),
        ],));
  }
}


