import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // ignore: avoid_print
    Timer(const Duration(seconds: 2), () => print("Splash Done"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 44, 90, 28))),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60.0,
                        child: Icon(
                          Icons.chat,
                          color: Color.fromARGB(255, 44, 90, 28),
                          size: 50.0,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    const Text(
                      "Flutter Book",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "LeetCode \n Questions & Solution",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
