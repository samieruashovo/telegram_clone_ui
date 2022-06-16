import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/data/data.dart';
import 'package:telegram_clone_ui/model/user_model.dart';
import 'package:telegram_clone_ui/screens/chat_screen.dart';

class Users extends StatelessWidget {
  final List<User> users = onlineUsers;
  final String subtitle;
  Users({Key? key, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 4.0,
      ),
      itemCount: users.length,
      itemBuilder: (context, index) {
        final User user = users[index];
        return Column(
          children: [
            ListTile(
              horizontalTitleGap: 10.0,
              leading: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(user.imageUrl)),
              subtitle: Text(subtitle),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => ChatScreen(user: user)),
                );
              },
              trailing: _trailing(),
              title: Text(
                user.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}

Widget? _trailing() {
  return Container(
    child: Column(
      children: [
        Text(
          "10:56 PM",
          style: TextStyle(color: Colors.grey[500], letterSpacing: -1),
        ),
      ],
    ),
  );
}
