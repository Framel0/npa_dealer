import 'package:flutter/material.dart';
import 'package:npa_dealer/widget/widget.dart';

class DispatchPage extends StatefulWidget {
  @override
  _DispatchPageState createState() => _DispatchPageState();
}

class _DispatchPageState extends State<DispatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dispatch"),
      ),
      body: Container(
        child: DispatchList(),
      ),
    );
  }
}
