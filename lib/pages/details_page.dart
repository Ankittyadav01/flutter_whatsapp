
import 'package:flutter/material.dart';
import 'package:flutter_book/models/content_models.dart';

class DetailsScreen extends StatelessWidget {
  final Questions data;
  DetailsScreen(this.data);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data.id + data.title),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: ListView(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: titleController,
                  style: TextStyle(fontSize: 5.0),
                  onChanged: (value) {
                    debugPrint("something change in Description");
                  },
                  decoration: InputDecoration(
                      labelText: "Description",
                      labelStyle: TextStyle(fontSize: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: titleController,
                  style: TextStyle(fontSize: 5.0),
                  onChanged: (value) {
                    debugPrint("something change in solution");
                  },
                  decoration: InputDecoration(
                      labelText: "Solution",
                      labelStyle: TextStyle(fontSize: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: titleController,
                  style: TextStyle(fontSize: 5.0),
                  onChanged: (value) {
                    debugPrint("something change in Code");
                  },
                  decoration: InputDecoration(
                      labelText: "Code",
                      labelStyle: TextStyle(fontSize: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextField(
                  controller: titleController,
                  style: TextStyle(fontSize: 5.0),
                  onChanged: (value) {
                    debugPrint("something change in output");
                  },
                  decoration: InputDecoration(
                      labelText: "Output",
                      labelStyle: TextStyle(fontSize: 5.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text("Save"),
                      onPressed: () {
                        setState() {
                          debugPrint("save button clicked");
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text("Delete"),
                      onPressed: () {
                        setState() {
                          debugPrint("Delete button clicked");
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          ]

              /*
             
              Text(data.code),
              const Text(
                    "output",
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Text(data.output),
                          ],
                        ),
                         */
              ),
        ));
  }
}
