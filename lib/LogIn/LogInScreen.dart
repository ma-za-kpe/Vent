import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vent_app/signUp/SignUpScreen.dart';

class LogInScreen extends StatelessWidget {
  static final route = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Login",
            style: TextStyle(fontSize: 72, fontWeight: FontWeight.w600),
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
              Text('Don\'t have an account' ,style: TextStyle(fontSize: 18),),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context,SignUpScreen.route),
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
