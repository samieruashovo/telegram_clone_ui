import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/model/user_model.dart';
import 'package:telegram_clone_ui/screens/chat_message.dart';

class ChatScreen extends StatelessWidget {
  final User user;
  const ChatScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        backgroundColor: const Color(0xff527DA3),
        title: Row(
          children: [
            CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(user.imageUrl)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    user.name,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "last seen recently",
                    style: TextStyle(fontSize: 12, color: Colors.white54),
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call,)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatMessage()),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              //fillColor:
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  Icons.gif_box_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
              ),

              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.keyboard_voice_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          )
        ],
      ),
    );
  }
}
