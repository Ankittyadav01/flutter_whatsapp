import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Text(
        "Camera",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
