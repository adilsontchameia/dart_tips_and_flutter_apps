import 'package:flutter/material.dart';
import 'package:yes_no_maybe/domain/entities/message.dart';

class AnotherUserMessageBubble extends StatelessWidget {
  final Message message;
  const AnotherUserMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: colors.secondary,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              message.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        _ImageBubble(message.imgUrl),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble([this.imageUrl]);
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        imageUrl!,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150.0,
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: const Center(
                child: Text(
              'Loading gif...',
              style: TextStyle(fontSize: 20.0),
            )),
          );
        },
        width: size.width * 0.7,
        height: 150.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
