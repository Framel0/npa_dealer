import 'package:flutter/material.dart';
import 'package:npa_dealer/widget/widget.dart';

class ExistentConsumersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Consumers"),),
      body: Container(
        child: ConsumerList(),
      ),
    );
  }
}
