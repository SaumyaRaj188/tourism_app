import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back)),
          Text("Chatopher Columbus"),
        ]),
        backgroundColor: Color.fromARGB(255, 108, 226, 118),
      ),
      // bottomSheet: TextField(),
    );
  }
}
