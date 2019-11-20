import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:npa_dealer/model/models.dart';
import 'package:npa_dealer/routes/routes.dart';

import '../color.dart';

class SummaryPage extends StatefulWidget {
  final List<Cylinder> cylinders;

  const SummaryPage({Key key, @required this.cylinders}) : super(key: key);
  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  final TextStyle headerTextStyle =
      TextStyle(color: colorPrimary, fontSize: 20, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Order",
                    style: headerTextStyle,
                  ),
                ),
                Card(
                    elevation: 4,
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Subtotal",
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 17),
                              ),
                              RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .copyWith(fontSize: 17),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'GHC ',
                                    ),
                                    TextSpan(text: "10,000"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Total",
                                style: Theme.of(context)
                                    .textTheme
                                    .title
                                    .copyWith(fontSize: 17),
                              ),
                              RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  style: Theme.of(context).textTheme.title
                                    ..copyWith(fontSize: 17),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'GHC ',
                                    ),
                                    TextSpan(text: "10,000"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Details",
                    style: headerTextStyle,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Name: ",
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(fontSize: 17),
                        ),
                        Text(
                          "ALO Gas",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Location: ",
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(fontSize: 17),
                        ),
                        Text(
                          "East Legon",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Phone Number: ",
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(fontSize: 17),
                        ),
                        Text(
                          "+233247894562",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Products",
                    style: headerTextStyle,
                  ),
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.cylinders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        widget.cylinders[index].name,
                        style: TextStyle(),
                      ),
                      subtitle: Text(
                        "x ${widget.cylinders[index].quantity.toString()}",
                        style: TextStyle(),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      height: 1,
                      thickness: 1.5,
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              onPressed: () =>
                  {Navigator.popUntil(context, ModalRoute.withName(homeRoute))},
              child: Text(
                "Confirm",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
