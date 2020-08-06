import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () => print("Signed with Google"),
            child: Icon(
              FontAwesomeIcons.googlePlus,
              color: Color(0xffDC4E41),
              size: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Don\'t have an account'),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () => print("Signed up"),
                child: Text(
                  ' Sign Up ',
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
