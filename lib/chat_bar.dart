import 'package:flutter/material.dart';

class ChatBar extends StatefulWidget {
  const ChatBar({super.key});

  @override
  State<ChatBar> createState() => _ChatBarState();
}

class _ChatBarState extends State<ChatBar> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: TextField(
          decoration: InputDecoration(hintText: 'Enter anything'),
          controller: _controller,
        ),
      ),
      IconButton(onPressed: () => {}, icon: Icon(Icons.send_outlined))
    ]);
  }
}
