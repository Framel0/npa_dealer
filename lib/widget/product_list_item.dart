import 'package:flutter/material.dart';
import 'package:npa_dealer/color.dart';
import 'package:npa_dealer/model/product.dart';

class ProductListItem extends StatelessWidget {
  final Product product;

  const ProductListItem({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(
          product.name,
          style: TextStyle(color: colorPrimary, fontSize: 18),
        ),
      ),
    );
  }
}
