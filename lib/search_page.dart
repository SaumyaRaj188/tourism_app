import 'package:flutter/material.dart';
import 'search_bar.dart';
import 'chat_page.dart';
import 'get_current_location.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({super.key});

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GetLocation(),
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
              // handle the press
            },
          ),
        ],
      ),
      body: Column(children: <Widget>[MySearchBar()]),
    );
  }
}
