import 'package:flutter/material.dart';
import 'package:npa_dealer/color.dart';
import 'package:npa_dealer/page/pages.dart';

class CashRegisterForm extends StatefulWidget {
  @override
  _CashRegisterFormState createState() => _CashRegisterFormState();
}

class _CashRegisterFormState extends State<CashRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextStyle style = TextStyle(fontSize: 18.0, color: Colors.black);
  final TextStyle checkboxTextStyle =
      TextStyle(fontSize: 15.0, color: colorPrimary);
  final TextStyle quantityTextStyle =
      TextStyle(fontSize: 18.0, color: colorPrimary);

  int _quantity15 = 0;
  int _quantity45 = 0;
  int _quantity90 = 0;
  int _quantity190 = 0;
  int _quantity226 = 0;
  int _quantity454 = 0;

  bool _val15 = false;
  bool _val45 = false;
  bool _val90 = false;
  bool _val190 = false;
  bool _val226 = false;
  bool _val454 = false;

  double _total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _build15Field(),
          _divider(),
          _build45Field(),
          _divider(),
          _build90Field(),
          _divider(),
          _build190Field(),
          _divider(),
          _build226Field(),
          _divider(),
          _build454Field(),
          _divider(),
          Card(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total: ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("GHC $_total"),
                ],
              ),
            ),
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
              padding: EdgeInsets.symmetric(vertical: 14.0),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      thickness: 2,
    );
  }

  Widget _build15Field() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox15(), _build15Quantity()],
              ),
            ),
//            _build15CylinderSerialNumberField()
          ]),
    );
  }

  Widget _checkBox15() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val15,
          onChanged: (bool value) {
            if (!value) {
              setState(() {
                _quantity15 = 0;
              });
            }
            setState(() {
              _val15 = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("15 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _build15Quantity() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text(
              "-",
              style: TextStyle(fontSize: 35, color: colorPrimaryYellow),
            ),
            onPressed: () {
              if (_val15) {
                if (_quantity15 != 0) {
                  setState(() {
                    _quantity15 -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity15",
            style: quantityTextStyle,
          ),
        ),
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text("+",
                style: TextStyle(fontSize: 30, color: colorPrimaryYellow)),
            onPressed: () {
              if (_val15) {
                setState(() {
                  _quantity15 += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _build45Field() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox45(), _build45Quantity()],
              ),
            ),
//            _build45CylinderSerialNumberField()
          ]),
    );
  }

  Widget _checkBox45() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val45,
          onChanged: (bool value) {
            if (!value) {
              setState(() {
                _quantity45 = 0;
              });
            }
            setState(() {
              _val45 = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("45 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _build45Quantity() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text(
              "-",
              style: TextStyle(fontSize: 35, color: colorPrimaryYellow),
            ),
            onPressed: () {
              if (_val45) {
                if (_quantity45 != 0) {
                  setState(() {
                    _quantity45 -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity45",
            style: quantityTextStyle,
          ),
        ),
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text("+",
                style: TextStyle(fontSize: 30, color: colorPrimaryYellow)),
            onPressed: () {
              if (_val45) {
                setState(() {
                  _quantity45 += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _build90Field() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox90(), _build90Quantity()],
              ),
            ),
//            _build90CylinderSerialNumberField()
          ]),
    );
  }

  Widget _checkBox90() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val90,
          onChanged: (bool value) {
            if (!value) {
              setState(() {
                _quantity90 = 0;
              });
            }
            setState(() {
              _val90 = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("90 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _build90Quantity() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text(
              "-",
              style: TextStyle(fontSize: 35, color: colorPrimaryYellow),
            ),
            onPressed: () {
              if (_val90) {
                if (_quantity90 != 0) {
                  setState(() {
                    _quantity90 -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity90",
            style: quantityTextStyle,
          ),
        ),
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text("+",
                style: TextStyle(fontSize: 30, color: colorPrimaryYellow)),
            onPressed: () {
              if (_val90) {
                setState(() {
                  _quantity90 += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _build190Field() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox190(), _build190Quantity()],
              ),
            ),
//            _build190CylinderSerialNumberField()
          ]),
    );
  }

  Widget _checkBox190() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val190,
          onChanged: (bool value) {
            if (!value) {
              _quantity190 = 0;
            }
            setState(() {
              _val190 = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("190 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _build190Quantity() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text(
              "-",
              style: TextStyle(fontSize: 35, color: colorPrimaryYellow),
            ),
            onPressed: () {
              if (_val190) {
                if (_quantity190 != 0) {
                  setState(() {
                    _quantity190 -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity190",
            style: quantityTextStyle,
          ),
        ),
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text("+",
                style: TextStyle(fontSize: 30, color: colorPrimaryYellow)),
            onPressed: () {
              if (_val190) {
                setState(() {
                  _quantity190 += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _build226Field() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox226(), _build226Quantity()],
              ),
            ),
//            _build226CylinderSerialNumberField()
          ]),
    );
  }

  Widget _checkBox226() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val226,
          onChanged: (bool value) {
            if (!value) {
              _quantity226 = 0;
            }
            setState(() {
              _val226 = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("266 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _build226Quantity() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text(
              "-",
              style: TextStyle(fontSize: 35, color: colorPrimaryYellow),
            ),
            onPressed: () {
              if (_val226) {
                if (_quantity226 != 0) {
                  setState(() {
                    _quantity226 -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity226",
            style: quantityTextStyle,
          ),
        ),
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text("+",
                style: TextStyle(fontSize: 30, color: colorPrimaryYellow)),
            onPressed: () {
              if (_val226) {
                setState(() {
                  _quantity226 += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _build454Field() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox454(), _build454Quantity()],
              ),
            ),
//            _build454CylinderSerialNumberField()
          ]),
    );
  }

  Widget _checkBox454() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val454,
          onChanged: (bool value) {
            if (!value) {
              setState(() {
                _quantity454 = 0;
              });
            }
            setState(() {
              _val454 = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("454 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _build454Quantity() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text(
              "-",
              style: TextStyle(fontSize: 35, color: colorPrimaryYellow),
            ),
            onPressed: () {
              if (_val454) {
                if (_quantity454 != 0) {
                  setState(() {
                    _quantity454 -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity454",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          width: 50,
          child: FlatButton(
            shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: Text("+",
                style: TextStyle(fontSize: 30, color: colorPrimaryYellow)),
            onPressed: () {
              if (_val454) {
                setState(() {
                  _quantity454 += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }
}
