import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProjectDescription extends StatefulWidget {
  final bool openedToVote;

  ProjectDescription(this.openedToVote);

  @override
  _ProjectDescriptionState createState() => _ProjectDescriptionState();
}

class _ProjectDescriptionState extends State<ProjectDescription> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "GPOL",
          style: TextStyle(fontSize: 18.0),
        ),
        centerTitle: true,
      ),
      floatingActionButton: widget.openedToVote
          ? FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () => goToRating(),
              child: Icon(
                Icons.star,
                color: Colors.amber,
              ),
            )
          : Container(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fundo.jpg"),
              fit: BoxFit.cover,
            )),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 90.0),
              child: Column(
                children: <Widget>[
                  /*

Row(
                    children: <Widget>[
                      !widget.openedToVote
                          ? Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                width: 90.0,
                                height: 70.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 25.0,
                                      left: 12.0,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            size: 25.0,
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(fontSize: 25.0),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 0.3, color: Colors.white)),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 25.0,
                                      left: 22.0,
                                      child: Text(
                                        "15h",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Container(
                          color: Colors.grey[300],
                          height: 60.0,
                          width: 0.5,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "UX/UI",
                            style: new TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "1.503",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(" vote(s)")
                                ],
                              ),
                              Container()
                            ],
                          ),
                          widget.openedToVote
                              ? Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              size: 15.0,
                                              color: Colors.yellow,
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              "4.5",
                                              style: new TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              : Container()
                        ],
                      )
                    ],
                  ),

                  */
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Container(
                      width: double.infinity,
                      child: Card(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProjectDescription(true)),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.grey[600],
                                Colors.grey[500],
                                Colors.grey[400],
                                Colors.grey[300],
                                Colors.grey[200]
                              ])),
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      width: 70.0,
                                      height: 70.0,
                                      decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1.0,
                                            color: Colors.grey[300]),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 25.0,
                                            left: 21.0,
                                            child: Text(
                                              "15h",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.0),
                                    child: Container(
                                      color: Colors.grey[300],
                                      height: 60.0,
                                      width: 0.5,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "GPOL - Gestão Politica",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey[800]),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "UI/UX",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_right,
                                              size: 18.0,
                                              color: Colors.grey[700],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.star,
                                                    size: 12.0,
                                                    color: Colors.yellow[700]),
                                                SizedBox(
                                                  width: 5.0,
                                                ),
                                                Text(
                                                  "4.5",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 14.0,
                                                      color: Colors.grey[800]),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "1503",
                                                  style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.grey[800]),
                                                ),
                                                Text(
                                                  " vote(s)",
                                                  style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.grey[800]),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.grey[600],
                          Colors.grey[500],
                          Colors.grey[400],
                          Colors.grey[300],
                          Colors.grey[200]
                        ]),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: new Offset(0.0, 1.0),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 13.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "GPOL - Gestão Política Online, é uma aplicativo criado para gerenciar toda a agenda de um político, seus acessores, seus projeots e suas solicitaçoes. Sendo possivel escalar o nivel e o acesso de seus funcionários e acessores por meio do app.",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      gallery(),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
//              gallery()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static List<String> imgList = [
  "https://imagizer.imageshack.com/img921/6291/D8zRb1.jpg",
  "https://imagizer.imageshack.com/img921/3153/D5s6vB.jpg",
  "https://imagizer.imageshack.com/img923/2223/rxgGXa.jpg",
  "https://imagizer.imageshack.com/img922/4618/lUh9Al.jpg"
  ];

  static List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  List child = map<Widget>(
    imgList,
    (index, i) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(children: <Widget>[
            Image.network(i, fit: BoxFit.cover, width: 500.0),
          ]),
        ),
      );
    },
  ).toList();

  Widget gallery() {
    return CarouselSlider(
      height: 500.0,
      items: child,
    );
  }

  void goToRating(){
    Navigator.pushNamed(context, "/rating");
  }
}
