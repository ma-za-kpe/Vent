import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatelessWidget {
  static final route = "signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "SignUp",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () => print("Signed up with Google"),
            child: Icon(
              FontAwesomeIcons.googlePlus,
              color: Color(0xffDC4E41),
              size: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Already have an account'),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Text(
                  ' Log In ',
                  style: TextStyle(
                    color: Color(0xff930000),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
