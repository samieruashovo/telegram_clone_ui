import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/data/data.dart';
import 'package:telegram_clone_ui/model/message_model.dart';

class ChatMessage extends StatelessWidget {
  final List<Message> messages = messagesList;

  ChatMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _chatBackgroundColor = Color(0xffDCF8C6);
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final _message = messages[index];
        return Align(
          alignment: _message.isMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Card(elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: _message.isMe?_chatBackgroundColor : Colors.white,
          child: Stack(
            children: [
               Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text(
                    _message.text,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        _message.time,
                        style:const TextStyle(
                          fontSize: 10,
                          color: Colors.black38,
                          //letterSpacing: -1,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                       Icon(
                        Icons.done_all,
                        size: 20,
                        color: Colors.green[300],
                      ),
                    ],
                  ),
                ),
            ],
          ),
          ),
        );
      },
    );
  }
}