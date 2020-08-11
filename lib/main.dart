import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vent_app/Home/home.dart';
import 'package:vent_app/signUp/SignUpScreen.dart';
import 'LogIn/LogInScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.portLligatSansTextTheme(),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}
