import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_maybe/domain/entities/message.dart';
import 'package:yes_no_maybe/presentation/providers/chat_provider.dart';
import 'package:yes_no_maybe/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_maybe/presentation/widgets/chat/other_user_message_bubble.dart';
import 'package:yes_no_maybe/presentation/widgets/shared/message_filled_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://p16-sign-va.tiktokcdn.com/tos-maliva-avt-0068/5eb63855facfa36d7b9e812399a95b5b~c5_100x100.jpeg?x-expires=1701122400&x-signature=KVvH%2FgIl8vuA1uTiCg%2FenSU70nY%3D'),
          ),
        ),
        title: const Text('Dissiela ❤️'),
      ),
      body: const _ChatWidget(),
    );
  }
}

class _ChatWidget extends StatelessWidget {
  const _ChatWidget();

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.another)
                      ? AnotherUserMessageBubble(message: message)
                      : MyMessageBubble(message: message);
                },
              ),
            ),
            //Message Box: TextField
            MessageFilledBox(
              //onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}
