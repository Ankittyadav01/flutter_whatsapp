import 'package:flutter/material.dart';
import 'package:flutter_book/models/content_models.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(data[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    data[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    data[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  )
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  data[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ))
        ],
      ),
    );
  }
}
