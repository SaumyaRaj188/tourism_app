import 'package:flutter/material.dart';

class MySearchBox extends StatefulWidget {
  const MySearchBox({super.key});

  @override
  State<MySearchBox> createState() => _MySearchBoxState();
}

class _MySearchBoxState extends State<MySearchBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a search term',
      ),
    );
  }
}
