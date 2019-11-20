import 'package:flutter/material.dart';
import 'package:npa_dealer/model/models.dart';

class DispatchListItem extends StatelessWidget {
  final Dispatch dispatch;

  const DispatchListItem({Key key, @required this.dispatch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        onTap: () {},
        title: Text(
          "John Doe",
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text("location", style: Theme.of(context).textTheme.subtitle),
      ),
    );
  }
}
