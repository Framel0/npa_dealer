import 'package:flutter/material.dart';
import 'package:npa_dealer/model/product.dart';
import 'package:npa_dealer/widget/product_list_item.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Product> products = [
    Product(name: "15 kg LPG"),
    Product(name: "45 kg LPG"),
    Product(name: "90 kg LPG"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: _buildProductList(products),
    );
  }

  Widget _buildProductListItems(
      BuildContext context, int position, Product product) {
    return ProductListItem(
      product: product,
    );
  }

  Widget _buildProductList(List<Product> products) {
    return ListView.separated(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildProductListItems(context, index, products[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: 2,
        );
      },
    );
  }
}
