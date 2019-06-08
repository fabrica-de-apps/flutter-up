import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  Widget formContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70, bottom: 20),
            child: FlutterLogo(
              size: 160.0,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
            child: TextFormField(
              obscureText: false,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                hintText: "Email",
                hintStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                contentPadding: const EdgeInsets.only(
                  top: 30.0,
                  right: 30.0,
                  bottom: 30.0,
                  left: 5.0,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
            child: TextFormField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.lock_outline,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                hintText: "Password",
                hintStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                contentPadding: const EdgeInsets.only(
                  top: 30.0,
                  right: 30.0,
                  bottom: 30.0,
                  left: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget forgotPassword() {
    return FlatButton(
      padding: const EdgeInsets.only(top: 10),
      onPressed: () {
        Navigator.pushNamed(context, "/register/password_recovery");
      },
      child: const Text(
        "Forgot Password?",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.blue,
            fontSize: 13,
            letterSpacing: 0.5),
      ),
    );
  }

  Widget registerButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Don`t have an account?",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 13,
                letterSpacing: 0.5),
          ),
          SizedBox(width: 5.0,),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/register/register");
            },
            child: const Text(
              "Sign Up now!",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                  fontSize: 13,
                  letterSpacing: 0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginButton(){
    return Container(
      padding: EdgeInsets.only(top: 40.0),
      child: ButtonTheme(
        minWidth: 270.0,
        height: 50.0,
        child: RaisedButton(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () async {
            Navigator.pushReplacementNamed(context, "/home");
          },
          padding: EdgeInsets.all(12),
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
            height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/fundo.jpg"),
                  fit: BoxFit.cover,
              )
          ),
          child: Column(
            children: <Widget>[
              formContainer(),
              loginButton(),
              forgotPassword(),
              registerButton(),
            ],
          ),
        ),
      ),
    );
  }
}
