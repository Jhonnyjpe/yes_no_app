import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messagesList = [
    Message(text: 'Hola', fromWho: FromWho.mine),
    Message(text: 'Ya regresaste?', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messagesList.add(newMessage);

    notifyListeners();
  }
}
