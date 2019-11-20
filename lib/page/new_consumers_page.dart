import 'package:flutter/material.dart';
import 'package:npa_dealer/widget/widget.dart';

class NewConsumersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New Consumers"),),
      body: Container(
        child: NewConsumerList()
      ),
    );
  }
}
