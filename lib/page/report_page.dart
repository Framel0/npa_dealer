import 'package:flutter/material.dart';
import 'package:npa_dealer/model/report.dart';
import 'package:npa_dealer/widget/report_list_item.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  List<Report> reports = [
    Report(name: "Report A"),
    Report(name: "Report B"),
    Report(name: "Report C"),
    Report(name: "Report D"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reports"),
      ),
      body: _buildReportList(reports),
    );
  }

  Widget _buildReportListItems(
      BuildContext context, int position, Report report) {
    return ReportListItem(
      report: report,
    );
  }

  Widget _buildReportList(List<Report> reports) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return _buildReportListItems(context, index, reports[index]);
      },
      itemCount: reports.length,
    );
  }
}
