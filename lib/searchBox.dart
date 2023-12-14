import 'package:flutter/material.dart';

class MySearchBox extends StatefulWidget {
  const MySearchBox({super.key});

  @override
  State<MySearchBox> createState() => _MySearchBoxState();
}

class _MySearchBoxState extends State<MySearchBox> {
  final myController = TextEditingController();

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
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  // Retrieve the text that the user has entered by using the
                  // TextEditingController.
                  content: Text(myController.text),
                );
              },
            );
          },
        ),
        hintText: 'Search',
      ),
    );
  }
}
