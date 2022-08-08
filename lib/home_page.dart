import 'package:flutter/material.dart';
import 'pages/calls_screen.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';
import 'pages/content_page.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage>
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
                return ContentPage();
              }));
            },
          ),
        ));
  }
}
