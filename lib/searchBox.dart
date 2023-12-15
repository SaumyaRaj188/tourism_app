import 'package:flutter/material.dart';

class MySearchBox extends StatefulWidget {
  const MySearchBox({super.key});

  @override
  State<MySearchBox> createState() => _MySearchBoxState();
}

class _MySearchBoxState extends State<MySearchBox> {
  final myController = TextEditingController();
  String text = "";

  void getValue(text) {
    text = this.text;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            getValue(myController.text);
          },
        ),
        hintText: 'Search',
      ),
    );
  }
}
