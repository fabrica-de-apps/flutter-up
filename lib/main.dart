import 'package:flutter/material.dart';
import 'package:flutter_up/pages/home.dart';
import 'package:flutter_up/pages/login/login.dart';
import 'package:flutter_up/pages/projects/projects.dart';
import 'package:flutter_up/pages/register/password_recovery.dart';
import 'package:flutter_up/pages/register/register.dart';
import 'package:flutter_up/pages/rating/project_rate.dart';
import 'package:flutter_up/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlutterUp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: RootPage(),
        routes: <String, WidgetBuilder>{
          '/login/login': (BuildContext context) => Login(),
          '/register/register': (BuildContext context) => Register(),
          '/projects': (BuildContext context) => Projects(),
          '/register/password_recovery': (BuildContext context) =>
              PasswordRecovery(),
          '/home': (BuildContext context) => Home(),
          '/rating':(BuildContext context) => DriverRate()
        });
  }
}
