import 'package:flutter/material.dart';
import 'package:flutter_up/pages/projects/tiles/last_projects.dart';
import 'package:flutter_up/pages/projects/tiles/recent_projects.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "My Projects",
          style: TextStyle(fontSize: 18.0),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.grey[400],
//          decoration: BoxDecoration(
//              image: DecorationImage(
//                image: AssetImage("assets/images/fundo_login.jpg"),
//                fit: BoxFit.cover,
//              )
//          ),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Recent projects",
                style: TextStyle(
                  fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 5.0,),
              RecentProjectsTile({
                "rating": "5.0",
                "projectName": "Hummingbird Test",
                "projectCategory": "Code Quality",
                "remainingTime": "23h",
                "numberVotes": "26"
              }),
              SizedBox(height: 5.0,),
              RecentProjectsTile({
                "rating": "4.7",
                "projectName": "Carry coins!",
                "projectCategory": "Perfomance",
                "remainingTime": "11h",
                "numberVotes": "104"
              }),
              Divider(color: Colors.grey[300],),
              Text(
                "Last projects",
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic
                ),
              ),
              SizedBox(height: 5.0,),
              LastProjectsTile({
                "rating": "4.9",
                "projectName": "GPOL - Gestão Política Online",
                "projectCategory": "Security",
                "numberVotes": "453"
              }),
              SizedBox(height: 5.0,),
              LastProjectsTile({
                "rating": "4.1",
                "projectName": "Anime animations",
                "projectCategory": "UI/UX",
                "numberVotes": "259"
              }),
              SizedBox(height: 5.0,),
              LastProjectsTile({
                "rating": "2.3",
                "projectName": "This is my city",
                "projectCategory": "UI/UX",
                "numberVotes": "198"
              }),
            ],
          ),
        ),
      ),
    );
  }
}
