import 'package:flutter/material.dart';
import 'package:flutter_book/models/content_models.dart';
import 'package:flutter_book/pages/details_page.dart';
import 'pages/calls_screen.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';
import 'package:flutter_book/models/content_models.dart';
import 'package:flutter_book/pages/details_page.dart';
import '../models/content_models.dart';

class FlutterBookHome extends StatefulWidget {
  const FlutterBookHome({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FlutterBookHomeState createState() => _FlutterBookHomeState();
}

class _FlutterBookHomeState extends State<FlutterBookHome>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: const Text("FlutterBook"),
              elevation: 0.7,
              bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.white,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: <Widget>[
                    const Tab(icon: Icon(Icons.camera_alt)),
                    const Tab(text: ("CHATS")),
                    const Tab(
                      text: "STATUS",
                    ),
                    const Tab(
                      text: "STATUS",
                    )
                  ]),
              // ignore: prefer_const_literals_to_create_immutables
              actions: [
                const Icon(Icons.search),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
                const Icon(Icons.more_vert)
              ]),
          body: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            // ignore: avoid_print
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                var index = 1;
                return DetailsScreen(data[index]);
              }));
            },
          ),
        ));
  }
}
