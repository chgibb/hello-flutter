import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("EasyList")),
            body: Column(children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      onPressed: () {
                        if (_products.length < 2) {
                          this.setState(() {
                            _products.add("item "+(_products.length + 1).toString());
                          });
                        }
                      },
                      child: Text("Add Product"))),
              Column(
                  children: _products.length > 0
                      ? _products
                          .map((el) => Card(
                                  child: Column(
                                children: <Widget>[
                                  Image.asset("assets/food.jpg"),
                                  Text(el)
                                ],
                              )))
                          .toList()
                      : []),
              /*  Card(
                  child: Column(
                children: <Widget>[
                  Image.asset("assets/food.jpg"),
                  Text("Food Paradise")
                ],
              ))*/
            ])));
  }
}
