import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Create Your Account",
            style: TextStyle(fontSize: 16.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 90.0),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintStyle: TextStyle(
                          decorationColor: Colors.black,
                          color: Colors.black,
                        )),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    maxLength: 30,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintStyle: TextStyle(
                          decorationColor: Colors.black,
                          color: Colors.black,
                        )),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    maxLength: 30,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintStyle: TextStyle(
                          decorationColor: Colors.black,
                          color: Colors.black,
                        )),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    maxLength: 20,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Github",
                        hintStyle: TextStyle(
                          decorationColor: Colors.black,
                          color: Colors.black,
                        )),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    maxLength: 40,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Phone",
                        hintStyle: TextStyle(
                          decorationColor: Colors.black,
                          color: Colors.black,
                        )),
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.numberWithOptions(),
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    maxLength: 20,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 60,
                //Mesma altura do end do Tween
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              )
            ],
          ),
        ));
  }
}
