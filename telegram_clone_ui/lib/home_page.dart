import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/Nav_drawer/nav_drawer.dart';
import 'package:telegram_clone_ui/screens/new_message_screen.dart';
import 'package:telegram_clone_ui/users/users.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        elevation: 1,
        bottomOpacity: 0.0,
        backgroundColor: const Color(0xff527DA3),
        title: const Text("Telegram"),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
        ],
      ),
      body: Users(
        subtitle: 'Hello',
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.create,
            color: Colors.white,
          ),
          backgroundColor: const Color.fromARGB(255, 54, 149, 226),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const NewMessageScreen()),
            );
          }),
    );
  }
}
