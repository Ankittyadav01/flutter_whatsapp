import 'package:flutter/material.dart';
import 'pages/calls_screen.dart';
import 'pages/camera_screen.dart';
import 'pages/chat_screen.dart';
import 'pages/status_screen.dart';

class FlutterBookHome extends StatefulWidget {
  @override
  _FlutterBookHomeState createState() => _FlutterBookHomeState();
}

class _FlutterBookHomeState extends State<FlutterBookHome>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("FlutterBook"),
            elevation: 0.7,
            bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: ("CHATS")),
                  Tab(
                    text: "STATUS",
                  ),
                  Tab(
                    text: "STATUS",
                  )
                ]),
            actions: [
              Icon(Icons.search),
              Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
              Icon(Icons.more_vert)
            ]),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            onPressed: () => print("AddContent")),
      ),
    );
  }
}
