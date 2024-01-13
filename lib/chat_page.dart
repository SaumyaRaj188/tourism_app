import 'package:flutter/material.dart';
import 'chat_bar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Chatopher Columbus', style: TextStyle(color: Colors.white)),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 16),
        child: ChatBar(),
      ),
    );
  }
}
