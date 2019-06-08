import 'package:flutter/material.dart';

class PasswordRecovery extends StatefulWidget {
  @override
  _PasswordRecoveryState createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget buttonRecoveryPassword() {
    return Container(
      width: 200,
      height: 60,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: GestureDetector(
        onTap: () {
          _requestPassword();
        },
        child: Text(
          "Reset Password",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Future<bool> _requestPassword() {
    showDialog<dynamic>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("You want to reset your password ?"),
            content:
            const Text("An email will be sent to you with instructions to reset your password."),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.pop(context);
                  _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text(
                      "Check your email",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    duration: Duration(seconds: 3),
                  ));
                },
              ),
            ],
          );
        });
    return Future.value(false);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            "Recover Password",
            style: TextStyle(fontSize: 16.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 90.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10.0,
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
                    maxLength: 60,
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
                        labelText: "Confirm email",
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
                    maxLength: 60,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              buttonRecoveryPassword(),
            ],
          ),
        ));
  }
}
