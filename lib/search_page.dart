import 'package:flutter/material.dart';
import 'package:tourism_app/city_map.dart';
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
        floatingActionButton: GetLocation(),
        // appBar: AppBar(
        //   title: Text("Pikachu"),
        //   actions: <Widget>[
        //     IconButton(
        //       icon: const Icon(Icons.assistant),
        //       tooltip: 'Open Assistant',
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => ChatPage()),
        //         );
        //         // handle the press
        //       },
        //     ),
        //   ],
        // ),
        body: const Stack(
          children: [
            MyMap(),
            Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: MySearchBar(),
            ),
          ],
        ));
  }
}
