import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vent_app/Home/home.dart';
import 'package:vent_app/LogIn/LogInScreen.dart';

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
            onTap: () => {
              navigateToHomeScreen(context),
            },
            child: Icon(
              FontAwesomeIcons.googlePlus,
              color: Color(0xffDC4E41),
              size: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Already have an account?'),
              SizedBox(
                width: 20,
              ),
              FlatButton(
                color: Color(0xffDC4E41),
                onPressed: () {
                  navigateToLogInScreen(context);
                },
                child: Text(
                  ' Log In ',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  navigateToLogInScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LogInScreen(),
      ),
    );
  }

  navigateToHomeScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyHome(),
      ),
    );
  }
}
