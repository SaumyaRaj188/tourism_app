import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      isFullScreen: false,
      barHintText: 'Search Places',
      suggestionsBuilder: (BuildContext context, SearchController controller) {
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
    );
  }
}
