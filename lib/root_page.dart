import 'package:flutter/material.dart';
import 'package:flutter_up/pages/login/login.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  dynamic _carregarUsuario() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement<dynamic, dynamic>(
          MaterialPageRoute<dynamic>(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    _carregarUsuario();

    return Scaffold(
      body:  Container(
          padding: const EdgeInsets.fromLTRB(8.0, 60.0, 8.0, 8.0),
          width: double.infinity,
          decoration: BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/images/splash_screen.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 300.0,
              ),
              CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.black87)),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Please, wait...",
                style: TextStyle(color: Colors.black87,),
              ),
            ],
          ),
        ),
    );
  }
}
