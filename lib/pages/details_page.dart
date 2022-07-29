import 'package:flutter/material.dart';
import 'package:flutter_book/models/content_models.dart';

class DetailsScreen extends StatelessWidget {
  final Questions data;
   DetailsScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Title",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Text(data.title)
            ],
          ),
        ));
  }
}
