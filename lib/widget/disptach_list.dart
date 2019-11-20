import 'package:flutter/material.dart';
import 'package:npa_dealer/model/models.dart';
import 'package:npa_dealer/widget/widget.dart';

class DispatchList extends StatefulWidget {
  @override
  _DispatchListState createState() => _DispatchListState();
}

class _DispatchListState extends State<DispatchList> {
  List<Dispatch> dispatches = [
    Dispatch(),
    Dispatch(),
    Dispatch(),
    Dispatch(),
    Dispatch(),
  ];
  @override
  Widget build(BuildContext context) {
    return _buildDispatchList(dispatches);
  }

  Widget _buildDispatchListItems(
      BuildContext context, int position, Dispatch dispatch) {
    return DispatchListItem(
      dispatch: dispatch,
    );
  }

  Widget _buildDispatchList(List<Dispatch> dispatches) {
    return ListView.separated(
      itemCount: dispatches.length,
      itemBuilder: (BuildContext context, int index) {
        return _buildDispatchListItems(context, index, dispatches[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: 2,
        );
      },
    );
  }
}
