import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterBook",
      theme: ThemeData(
        primaryColor: const Color(0xff075E54), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xff25D366)),
      ),
      home: const FlutterBookHome(),
    );
  }
}
