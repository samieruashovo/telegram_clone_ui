import 'package:flutter/material.dart';
import 'package:telegram_clone_ui/users/users.dart';

class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff527DA3),
        elevation: 2,
        title: const Text("New Message"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          ListTile(
            leading: const Icon(Icons.group_outlined),
            title: const Text('New group'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock_outline_rounded),
            title: const Text('New Secrect Chat'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.campaign_outlined),
            title: const Text('New Channel'),
            onTap: () {},
          ),
          Container(
            height: 30,
            width: double.infinity,
            color: Colors.grey[300],
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "sorted by last seen time",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Users(
              subtitle: 'last seen recently',
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.person_add,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 54, 149, 226),
      ),
    );
  }
}
