import 'package:flutter/material.dart';
import 'package:yes_no_maybe/domain/entities/message.dart';
import 'package:yes_no_maybe/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();
  //Controller to scroll on message send/received
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: 'Hi sister !', fromWho: FromWho.me),
    Message(text: 'Did you go to school ?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      anotherPersonReply();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> anotherPersonReply() async {
    final anotherPersonReply = await getYesNoAnswer.getAnswer();
    messageList.add(anotherPersonReply);
    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
