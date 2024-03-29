import 'package:flutter/material.dart'
    show BuildContext, Column, Expanded, StatelessWidget, Widget;

import './products.dart' show Products;

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [Expanded(child: Products(products))],
    );
  }
}
