import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class AIChatProvider extends ChangeNotifier {
  final List<String> _messageHistory = [];
  String _draft = '';
  late IOWebSocketChannel _webSocketChannel;

  List<String> get messageHistory => _messageHistory;

  void addMessage(String message) {
    _messageHistory.insert(0, message);
    notifyListeners();
  }

  void updateDraft(String text) {
    _draft = text;
  }

  void sendMessage() {
    if (_draft.isNotEmpty) {
      final message = {
        'type': 'chat.message',
        'content': _draft,
        'is_from_user': true
      };
      _webSocketChannel.sink.add(json.encode(message));
      _draft = '';
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _webSocketChannel.sink.close();
    super.dispose();
  }

  AIChatProvider() {
    _webSocketChannel = IOWebSocketChannel.connect('w//<Us:RL>');
    _webSocketChannel.stream.listen((data) {
      // TODO : Handle incomming messages
      _messageHistory.add(data);
      notifyListeners();
    });
  }
}
