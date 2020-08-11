import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vent_app/Home/home.dart';
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
              Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 20,
              ),
              FlatButton(
                color: Color(0xffDC4E41),
                onPressed: () {
                  navigateToSignUpScreen(context);
                },
                child: Text(
                  ' Sign Up ',
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

  navigateToSignUpScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpScreen(),
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
