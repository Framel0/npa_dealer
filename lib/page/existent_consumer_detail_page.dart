import 'package:flutter/material.dart';
import 'package:npa_dealer/model/models.dart';

import '../color.dart';

class ExistentConsumerDetailPage extends StatelessWidget {
  final Consumer consumer;

  const ExistentConsumerDetailPage({Key key, this.consumer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          children: <Widget>[
            Text(
              "Date of registration",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: colorPrimary),
            ),
            Text("21/10/2019",
                style: TextStyle(
                  fontSize: 16,
                )),
            _space(),
            Text(
              "Name",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: colorPrimary),
            ),
            Text("John Doe",
                style: TextStyle(
                  fontSize: 16,
                )),
            _space(),
            Text(
              "Residential Address",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: colorPrimary),
            ),
            Text("East Legon",
                style: TextStyle(
                  fontSize: 16,
                )),
            _space(),
            Text(
              "GPS Address",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: colorPrimary),
            ),
            Text("5.6425, -0.13895",
                style: TextStyle(
                  fontSize: 16,
                )),
            _space(),
            Text(
              "Phone Number",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: colorPrimary),
            ),
            Text("0245789369",
                style: TextStyle(
                  fontSize: 16,
                )),
          ],
        ),
      ),
    );
  }

  Widget _space() {
    return SizedBox(
      height: 15,
    );
  }
}
