import 'package:flutter/material.dart';
import 'package:npa_dealer/color.dart';
import 'package:npa_dealer/model/models.dart';
import 'package:npa_dealer/routes/routes.dart';
import 'package:npa_dealer/util/input_util.dart';

class RequestStockPage extends StatefulWidget {
  @override
  _RequestStockPageState createState() => _RequestStockPageState();
}

class _RequestStockPageState extends State<RequestStockPage> {
  final TextStyle checkboxTextStyle =
      TextStyle(fontSize: 18.0, color: colorPrimary);
  final TextStyle quantityTextStyle =
      TextStyle(fontSize: 18.0, color: Colors.black);
  final TextStyle headerTextStyle =
      TextStyle(color: colorPrimary, fontSize: 20, fontWeight: FontWeight.w600);

  List<Cylinder> _cylinders = [
    Cylinder(id: 1, code: "", name: "3 Kg", quantity: 0),
    Cylinder(id: 2, code: "", name: "6 Kg", quantity: 0),
    Cylinder(id: 3, code: "", name: "14 Kg", quantity: 0),
  ];

  List<Cylinder> _selecteCylinders = [];

  TextEditingController _controller = new TextEditingController();

  void onChange() {
    String text = _controller.text;
    //do your text transforming
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(onChange);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Request Stock"),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Refill Type",
                style: headerTextStyle,
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _cylinders.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildField(_cylinders[index], _controller);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 2,
                );
              },
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.0,
                ),
                onPressed: () => {
                  if (_selecteCylinders.isNotEmpty)
                    {
                      Navigator.pushNamed(context, summaryRoute,
                          arguments: _selecteCylinders),
                    }
                  else
                    {_showSnackbar(context)}
                },
                child: Text(
                  "Proceed To Summary",
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
      ),
    );
  }

  _showSnackbar(BuildContext _context) {
    final snackBar = SnackBar(
      content: Text('Please Select Refill Type and Quantity',
          style: TextStyle(
            color: Colors.white,
          )),
      backgroundColor: Colors.redAccent,
      elevation: 10,
    );

    Scaffold.of(_context).showSnackBar(snackBar);
  }

  _onCylinderSelected(bool selected, Cylinder cylinder) {
    if (selected == true) {
      setState(() {
        _selecteCylinders.add(cylinder);
        final item = _selecteCylinders.firstWhere((c) => c.id == cylinder.id);
        item.quantity = 1;
        print(_selecteCylinders);
      });
    } else {
      setState(() {
        final item = _selecteCylinders.firstWhere((c) => c.id == cylinder.id);
        item.quantity = 0;
        _selecteCylinders.remove(cylinder);
        print(_selecteCylinders);
      });
    }
  }

  Widget _buildField(Cylinder cylinder, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _checkBox(cylinder),
          _buildCylinderQuantity(cylinder, controller)
        ],
      ),
    );
  }

  Widget _checkBox(
    Cylinder cylinder,
  ) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _selecteCylinders.contains(cylinder),
          onChanged: (bool selected) {
            _onCylinderSelected(selected, cylinder);
          },
          activeColor: colorPrimaryYellow,
        ),
        Text(cylinder.name, style: checkboxTextStyle),
      ],
    );
  }

  Widget _buildCylinderQuantity(
      Cylinder cylinder, TextEditingController controller) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: TextFormField(
        validator: (String value) {
          if (value.trim().isEmpty) {
            return 'Please enter Quantity.';
          }
          return null;
        },
        style: quantityTextStyle,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.number,
        decoration: inputDecoration('Quantity'),
        controller: controller,
        onChanged: (text) {
          if (_selecteCylinders.isNotEmpty) {
            final item =
                _selecteCylinders.firstWhere((c) => c.id == cylinder.id);

            if (_selecteCylinders.contains(item)) {
              setState(() {
                item.quantity = int.parse(text);
              });
            }
          }
          print("Quantity text field: $text");
        },
      ),
    );
  }
}
