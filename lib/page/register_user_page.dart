import 'package:flutter/material.dart';
import 'package:npa_dealer/page/home_page.dart';
import 'package:npa_dealer/util/input_util.dart';

class RegisterUserPage extends StatefulWidget {
  @override
  _RegisterUserPageState createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextStyle style = TextStyle(fontSize: 18.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register User"),
      ),
      body: new SingleChildScrollView(
          child: new Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.05), BlendMode.dstATop),
            image: AssetImage('assets/images/mountains.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildSignUpWidget(_formKey, context: context),
              ],
            ),
          ),
        ]),
      )),
    );
  }

  Form _buildSignUpWidget(GlobalKey formkey, {context: BuildContext}) {
    Widget _buildNameField() {
      return TextFormField(
        // autovalidate: true,
        validator: (String value) {
          if (!isEmail(value) || value.trim().isEmpty)
            return 'Please enter a valid email.';
        },

        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration("Name"),
      );
    }

    Widget _buildEmailField() {
      return TextFormField(
        // autovalidate: true,
        validator: (String value) {
          if (!isEmail(value) || value.trim().isEmpty)
            return 'Please enter a valid email.';
        },

        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration('Email Address'),
      );
    }

    Widget _buildPhoneNumberField() {
      return TextFormField(
        // autovalidate: true,
        validator: (String value) {
          if (!isEmail(value) || value.trim().isEmpty)
            return 'Please enter a valid email.';
        },

        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration('Phone Number'),
      );
    }

    Widget _buildPasswordField() {
      return TextFormField(
        obscureText: true,
        initialValue: '', // used to set the initial value
        validator: (String value) {
          if (value.trim().isEmpty) return 'Please enter your password.';
        },
        style: style,
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration('Password'),
      );
    }

    Widget _buildField({@required String label, String validation}) {
      return TextFormField(
        validator: (String value) {
          if (!isEmail(value) || value.trim().isEmpty) return validation;
        },
        style: style,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.emailAddress,
        decoration: textDecoration(label),
        onSaved: (String value) {},
      );
    }

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _buildNameField(),
          SizedBox(
            height: 20,
          ),
          _buildEmailField(),
          SizedBox(
            height: 20,
          ),
          _buildPhoneNumberField(),
          SizedBox(
            height: 20,
          ),
          _buildField(label: "Type of vehicle"),
          SizedBox(
            height: 20,
          ),
          _buildField(label: "Capacity"),
          SizedBox(
            height: 20,
          ),
          _buildField(label: "Cost per km"),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  side: BorderSide(color: Colors.white)),
              padding: EdgeInsets.symmetric(vertical: 12.0),
              // color: Theme.of(context).buttonColor,
              textColor: Colors.white,
              child: Text(
                'Register',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    // replcet the curent layout unlike push that just creates new page
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext cotext) => HomePage()));

                // Using Routes

                _formKey.currentState.save();

                if (!_formKey.currentState.validate()) {
                  return;
                } else {
                  Navigator.pushReplacementNamed(context, '/main');
                }
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
