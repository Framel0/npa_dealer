import 'package:flutter/material.dart';
import 'package:npa_dealer/model/models.dart';
import 'package:npa_dealer/routes/routes.dart';

class ConsumerListItem extends StatelessWidget {
  final Consumer consumer;

  const ConsumerListItem({Key key, this.consumer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, existentConsumerDetailRoute);
        },
        title: Text("John Doe", style: Theme.of(context).textTheme.title),
        subtitle: Text("location", style: Theme.of(context).textTheme.subtitle),
      ),
    );
  }
}
