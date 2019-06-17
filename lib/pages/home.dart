import 'package:flutter/material.dart';
import 'package:flutter_up/pages/projects/projects.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double containerWidth = 130.0;

    _context = context;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Flutter Up!"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/fundo.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            Positioned(
              top: 80.0,
              left: 10.0,
              right: 10.0,
              bottom: 10.0,
              child: Opacity(
                opacity: 0.4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            spreadRadius: 2.0,
                            blurRadius: 2.0)
                      ]),
                ),
              ),
            ),
            Positioned(
              top: 30.0,
              left: (size.width / 2) - (containerWidth / 2),
              child: Container(
                  width: containerWidth,
                  height: 130.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/joao.jpg")
                          //AssetImage("assets/flutter-icon-jpeg.jpg")
                          ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[600],
                            spreadRadius: 0.0,
                            blurRadius: 4.0,
                            offset: Offset(0.0, 4.0))
                      ])),
            ),
            Positioned(
              top: 170.0,
              child: Container(
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "João Henrique",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[800]),
                      ),
                      Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/image_user_default.png")
                                //AssetImage("assets/flutter-icon-jpeg.jpg")
                              )
                          )

                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "Goiânia, Goiás, Brasil",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 20.0,
              right: 20.0,
              child: Opacity(
                opacity: 0.4,
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Center(
                    child: Text(
                      "Mensagem",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 20.0,
              right: 20.0,
              child: Container(
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildCategories("Code Quality", "4.66"),
                    _buildCategories("UI/UX", "4.98"),
                  ],
                )),
              ),
            ),
            Positioned(
              top: 440,
              left: 20.0,
              right: 20.0,
              child: Container(
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    _buildCategories("Performance", "4.01"),
                    _buildCategories("Security", "3.11"),
                  ],
                )),
              ),
            )
          ],
        ));
  }

  void gotoProjects() {
    Navigator.pushNamed(_context, "/projects");
  }

  Widget _buildCategories(String title, String text) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style:
          TextStyle(fontWeight: FontWeight.w700, color: Colors.grey[700]),
        ),
        SizedBox(
          height: 8.0,
        ),
        InkWell(
          onTap: () => gotoProjects(),
          child: Container(
            width: 100.0,
            height: 60.0,
            decoration: new BoxDecoration(
                color: Colors.grey[100],
//                shape: BoxShape.circle,
//                border: Border.all(width: 0.3, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[600],
                      spreadRadius: 0.0,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 2.0))
                ]),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 5.0,
                  left: 10.0,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 13.0,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 0.7,
                        color: Colors.grey[400],
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 18.0,
                        color: Colors.grey[500],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
