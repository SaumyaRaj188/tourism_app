import 'package:flutter/material.dart';
import 'searchBox.dart';
import 'getCurrentLocation.dart';

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
              // handle the press
            },
          ),
        ],
      ),
      body: Column(children: <Widget>[MySearchBox()]),
      floatingActionButton: GetLocation(),
    );
  }
}
