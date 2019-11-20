import 'package:flutter/material.dart';
import 'package:npa_dealer/widget/widget.dart';

class ConsumerRegisterCylinderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cylinder Deposit"),),
      body: SafeArea(

        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10),
          children: <Widget>[CylinderRegisterForm()],
        ),
      ),
    );
  }
}
