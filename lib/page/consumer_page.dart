import 'package:flutter/material.dart';
import 'package:npa_dealer/color.dart';
import 'package:npa_dealer/routes/routes.dart';

class ConsumerPage extends StatefulWidget {
  @override
  _ConsumerPageState createState() => _ConsumerPageState();
}

class _ConsumerPageState extends State<ConsumerPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: _width,
              child: OutlineButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                ),
                borderSide: BorderSide(color: colorAccentYellow, width: 2),
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  "New Consumers",
                  style: TextStyle(fontSize: 20, color: colorPrimary),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(newConsumerRoute);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: _width,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                ),
                padding: EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  "Existent Consumers",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, existentConsumerRoute);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
