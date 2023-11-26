import 'package:flutter/material.dart';

class MessageFilledBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFilledBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    //OutlineBorder
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40.0));

    //InputDecoration
    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      hintText: 'Pls, end your message with ??',
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final message = textController.value.text;
          onValue(message);
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      controller: textController,
      focusNode: focusNode,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}
