import 'package:flutter/material.dart';
import 'package:flutter_up/components/foto_upload.dart';
import 'package:flutter_up/components/textbox.dart';

class ProjectsAdd extends StatefulWidget {
  @override
  _ProjectsAddState createState() => _ProjectsAddState();
}

class _ProjectsAddState extends State<ProjectsAdd> {
  List<String> _photo;

  void onNewPhoto(String name) {
    _photo.add(name);
  }

  @override
  void initState() {
      _photo = new List<String>(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add a project",
          style: TextStyle(fontSize: 18.0),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.save),
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
                Textbox(
                  label: "Project Name",
                ),
                Textbox(
                  label: "Project Description",
                ),
                Textbox(
                  label: "Project Link",
                ),
                FotoUpload(
                  foto: _photo[0],
                  titulo: "Send picture 1",
                ),
                FotoUpload(
                  foto: _photo[1],
                  titulo: "Send picture 2",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
