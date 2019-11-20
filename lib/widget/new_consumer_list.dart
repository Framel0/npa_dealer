import 'package:flutter/material.dart';
import 'package:npa_dealer/model/models.dart';
import 'package:npa_dealer/widget/widget.dart';

class NewConsumerList extends StatefulWidget {
  @override
  _NewConsumerListState createState() => _NewConsumerListState();
}

class _NewConsumerListState extends State<NewConsumerList> {
  List<Consumer> consumers = [Consumer(),Consumer(),Consumer(),Consumer(),Consumer(),];
  @override
  Widget build(BuildContext context) {
    return _buildConsumerList(consumers);
  }

  Widget _buildConsumerListItems(BuildContext context, int position, Consumer consumer) {
    return NewConsumerListItem();
  }

  Widget _buildConsumerList(List<Consumer> consumers) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return _buildConsumerListItems(context, index, consumers[index]);
      },
      itemCount: consumers.length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          thickness: 2,
        );
      },
    );
  }
}
