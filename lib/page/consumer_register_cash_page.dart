import 'package:flutter/material.dart';
import 'package:npa_dealer/widget/widget.dart';

class ConsumerRegisterCashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cash Deposit"),),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: CashRegisterForm(),
      ),
    );
  }
}
