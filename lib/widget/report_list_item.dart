import 'package:flutter/material.dart';
import 'package:npa_dealer/model/report.dart';

class ReportListItem extends StatelessWidget {
  final Report report;

  const ReportListItem({Key key, this.report}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(report.name, style: Theme.of(context).textTheme.title),
        subtitle:
            Text("By: John Doe", style: Theme.of(context).textTheme.subtitle),
      ),
    );
  }
}
