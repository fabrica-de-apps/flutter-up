import 'package:flutter/material.dart';

import '../project_description.dart';

class LastProjectsTile extends StatefulWidget {
  Map<String, dynamic> info;

  LastProjectsTile(this.info);

  @override
  _LastProjectsTileState createState() => _LastProjectsTileState();
}

class _LastProjectsTileState extends State<LastProjectsTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      builder: (context) => ProjectDescription(false)),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.grey[600],
                  Colors.grey[500],
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
                                    size: 15.0,
                                    color: Colors.yellow[700],
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    widget.info["rating"],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.0,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.info["projectName"],
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[800]),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.info["projectCategory"],
                                style: TextStyle(color: Colors.white),
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
                            children: <Widget>[
                              Text(
                                widget.info["numberVotes"],
                                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[800]),
                              ),
                              Text(" vote(s)", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey[800]),)
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
          gradient: LinearGradient(
              colors: [
                Colors.grey[600],
                Colors.grey[500],
                Colors.grey[400],
                Colors.grey[300],
                Colors.grey[200]
              ]),
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
    );
  }
}
