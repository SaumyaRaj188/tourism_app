import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chatopher Columbus',
          style: TextStyle(color: Colors.blue.shade50),
        ),
        backgroundColor: Colors.blue.shade600,
      ),
    );
  }
}
