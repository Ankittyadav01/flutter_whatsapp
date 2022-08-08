
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  final appDocument = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocument.path);
  runApp(const MyApp());
  final questionsBox = await Hive.openBox('questions');
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FlutterBook",
        theme: ThemeData(
          primaryColor: const Color(0xff075E54),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xff25D366)),
        ),
        home: FutureBuilder(
          future: Hive.openBox("questions"),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else
                return AppHomePage();
            }
            return Scaffold();
          },
        ));
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
