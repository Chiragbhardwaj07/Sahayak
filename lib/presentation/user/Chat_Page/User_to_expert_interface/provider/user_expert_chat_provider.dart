import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class UserToExpertChatProvider extends ChangeNotifier {
  String title = 'NDA';
  String subtitle =
      'Create the NDA(Non - Disclosure Agreement under the ICA - 1965';
  final List<Map<String, dynamic>> _messageHistory = [
    {
      'type': 'chat.message',
      'content': 'Hello',
      'sender': 'Expert',
      'is_from_sender': false,
    },
    {
      'type': 'chat.message',
      'content': 'How can I help you?',
      'sender': 'Expert',
      'is_from_sender': false,
    },
    {
      'type': 'chat.message',
      'content': 'Draft a legal document for me from the chosen template',
      'sender': 'ankur',
      'is_from_sender': true,
    },
    {
      'type': 'chat.message',
      'content': 'Okay, Give me your basic Details',
      'sender': 'Expert',
      'is_from_sender': false,
    },
  ];
  // String _draft = '';
  // late IOWebSocketChannel _webSocketChannel;

  List<Map<String, dynamic>> get messageHistory => _messageHistory;

  // void addMessage(String message) {
  //   _messageHistory.insert(0, message);
  //   notifyListeners();
  // }

  // void updateDraft(String text) {
  //   _draft = text;
  // }

  // void sendMessage() {
  //   if (_draft.isNotEmpty) {
  //     final message = {
  //       'type': 'chat.message',
  //       'content': _draft,
  //       'is_from_user': true
  //     };
  //     _webSocketChannel.sink.add(json.encode(message));
  //     _draft = '';
  //     notifyListeners();
  //   }
  // }

  // @override
  // void dispose() {
  //   _webSocketChannel.sink.close();
  //   super.dispose();
  // }

  // AIChatProvider() {
  //   _webSocketChannel = IOWebSocketChannel.connect('w//<Us:RL>');
  //   _webSocketChannel.stream.listen((data) {
  //     // TODO : Handle incomming messages
  //     _messageHistory.add(data);
  //     notifyListeners();
  //   });
  // }
}
