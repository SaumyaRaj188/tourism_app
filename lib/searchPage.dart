import 'package:flutter/material.dart';
import 'searchBox.dart';
import 'ChatPage.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({super.key});

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pikachu"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.assistant),
            tooltip: 'Open Assistant',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
          ),
        ],
      ),
      body: Column(children: <Widget>[MySearchBox()]),
    );
  }
}
