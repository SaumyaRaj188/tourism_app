import 'package:flutter/material.dart';
import 'chat_page.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: SearchAnchor.bar(
        barTrailing: [
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
          )
        ],
        isFullScreen: false,
        barHintText: 'Search Places',
        suggestionsBuilder:
            (BuildContext context, SearchController controller) {
          if (controller.text.isEmpty) {
            // if (searchHistory.isNotEmpty) {
            //   return getHistoryList(controller);
            // }
            return <Widget>[
              Center(
                  child: Text(
                'No search history.',
              ))
            ];
          }
          return <Widget>[
            Center(
                child: Text(
              'No search history.',
            ))
          ];
        },
      ),
    );
  }
}
