import 'package:flutter/material.dart';
class MesssageTextField extends StatelessWidget {
  const MesssageTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          textCapitalization: TextCapitalization.sentences,
          textInputAction: TextInputAction.send,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: 'Send a message'
          ),
        ),
      ),
    );
  }
}