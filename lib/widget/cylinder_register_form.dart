import 'package:flutter/material.dart';
import 'package:npa_dealer/color.dart';
import 'package:npa_dealer/page/pages.dart';
import 'package:npa_dealer/util/input_util.dart';

class CylinderRegisterForm extends StatefulWidget {
  @override
  _CylinderRegisterFormState createState() => _CylinderRegisterFormState();
}

class _CylinderRegisterFormState extends State<CylinderRegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextStyle style = TextStyle(fontSize: 18.0, color: Colors.black);
  final TextStyle checkboxTextStyle =
      TextStyle(fontSize: 18.0, color: colorPrimary);
  final TextStyle quantityTextStyle =
      TextStyle(fontSize: 18.0, color: colorPrimary);

  bool _val3kg = false;
  bool _val6kg = false;
  bool _val14kg = false;
  bool _val190 = false;
  bool _val226 = false;
  bool _val454 = false;

  int _quantity3kg = 0;
  int _quantity6kg = 0;
  int _quantity14kg = 0;
  int _quantity190 = 0;
  int _quantity226 = 0;
  int _quantity454 = 0;

  final _controller3kg = TextEditingController();
  final _controller6kg = TextEditingController();
  final _controller14kg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _buildField3kg(),
          _divider(),
          _buildField6kg(),
          _divider(),
          _buildField14kg(),
          _divider(),
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
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                "Procced to Summary",
                style: TextStyle(fontSize: 18, color: Colors.white),
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

  Widget _buildField3kg() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox3kg(), _buildQuantity3kg()],
              ),
            ),
            _buildCylinderSerialNumberField3kg()
          ]),
    );
  }

  Widget _checkBox3kg() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val3kg,
          onChanged: (bool value) {
            if (!value) {
              setState(() {
                _quantity3kg = 0;
                _controller3kg.text = "";
              });
            }
            setState(() {
              _val3kg = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("3 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _buildQuantity3kg() {
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
              if (_val3kg) {
                if (_quantity3kg != 0) {
                  setState(() {
                    _quantity3kg -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity3kg",
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
              if (_val3kg) {
                setState(() {
                  _quantity3kg += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCylinderSerialNumberField3kg() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextFormField(
        validator: (String value) {
          if (value.trim().isEmpty) {
            return 'Please enter Cylinder Serial Number.';
          }
          return null;
        },
        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: inputDecoration('Cylinder Serial Number'),
        controller: _controller3kg,
        enabled: _val3kg,
      ),
    );
  }

  Widget _buildField6kg() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox6kg(), _buildQuantity6kg()],
              ),
            ),
            _buildCylinderSerialNumberField6kg()
          ]),
    );
  }

  Widget _checkBox6kg() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val6kg,
          onChanged: (bool value) {
            if (!value) {
              setState(() {
                _quantity6kg = 0;
                _controller6kg.text = "";
              });
            }
            setState(() {
              _val6kg = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("6 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _buildQuantity6kg() {
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
              if (_val6kg) {
                if (_quantity6kg != 0) {
                  setState(() {
                    _quantity6kg -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity6kg",
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
              if (_val6kg) {
                setState(() {
                  _quantity6kg += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCylinderSerialNumberField6kg() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextFormField(
        validator: (String value) {
          if (value.trim().isEmpty) {
            return 'Please enter Cylinder Serial Number.';
          }
          return null;
        },
        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: inputDecoration('Cylinder Serial Number'),
        controller: _controller6kg,
        enabled: _val6kg,
      ),
    );
  }

  Widget _buildField14kg() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[_checkBox14kg(), _buildQuantity14kg()],
              ),
            ),
            _buildCylinderSerialNumberField14kg()
          ]),
    );
  }

  Widget _checkBox14kg() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: _val14kg,
          onChanged: (bool value) {
            if (!value) {
              setState(() {
                _quantity14kg = 0;
                _controller14kg.text = "";
              });
            }
            setState(() {
              _val14kg = value;
            });
          },
          activeColor: colorPrimaryYellow,
        ),
        Text("14.5 Kg", style: checkboxTextStyle),
      ],
    );
  }

  Widget _buildQuantity14kg() {
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
              if (_val14kg) {
                if (_quantity14kg != 0) {
                  setState(() {
                    _quantity14kg -= 1;
                  });
                }
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "$_quantity14kg",
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
              if (_val14kg) {
                setState(() {
                  _quantity14kg += 1;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCylinderSerialNumberField14kg() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextFormField(
        validator: (String value) {
          if (value.trim().isEmpty) {
            return 'Please enter Cylinder Serial Number.';
          }
          return null;
        },
        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: inputDecoration('Cylinder Serial Number'),
        controller: _controller14kg,
        enabled: _val14kg,
      ),
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
            _build190CylinderSerialNumberField()
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

  Widget _build190CylinderSerialNumberField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextFormField(
        validator: (String value) {
          if (value.trim().isEmpty) {
            return 'Please enter Cylinder Serial Number.';
          }
          return null;
        },
        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: inputDecoration('Cylinder Serial Number'),
      ),
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
            _build226CylinderSerialNumberField()
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

  Widget _build226CylinderSerialNumberField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextFormField(
        validator: (String value) {
          if (value.trim().isEmpty) {
            return 'Please enter Cylinder Serial Number.';
          }
          return null;
        },
        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: inputDecoration('Cylinder Serial Number'),
      ),
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
            _build454CylinderSerialNumberField()
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

  Widget _build454CylinderSerialNumberField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextFormField(
        validator: (String value) {
          if (value.trim().isEmpty) {
            return 'Please enter Cylinder Serial Number.';
          }
          return null;
        },
        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: inputDecoration('Cylinder Serial Number'),
      ),
    );
  }
}
