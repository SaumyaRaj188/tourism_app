import 'package:flutter/material.dart';
import 'search_bar.dart';
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
      appBar: AppBar(
        title: Text("Pikachu"),
        //backgroundColor: Color(Color.fromARGB(255, 111, 69, 165)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.assistant),
            tooltip: 'Open Assistant',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: <Widget>[MySearchBar()])),
      floatingActionButton: GetLocation(),
    );
  }
}
