import 'package:flutter/material.dart';
class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff598FBA),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: AssetImage('assets/user.jpg')),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Samier Shovo",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          Text(
                            "+8801234567890",
                            style:
                                TextStyle(color: Colors.white54, fontSize: 12),
                          )
                        ],
                      ))
                    ],
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.brightness_2_outlined,
                          color: Colors.white,
                        ),
                      )),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_downward_rounded,
                                color: Colors.white,
                              )))
                    ],
                  )),
                ],
              )),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text("New Group"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.person_outline,
            ),
            title: const Text("Contacts"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.call_outlined),
            title: const Text("Calls"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.place_outlined),
            title: const Text("People Nearby"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text("Saved Message"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
            onTap: () {},
          ),
          const Divider(
            height: 2,
          ),
          ListTile(
            leading: const Icon(Icons.person_add_outlined),
            title: const Text("Invite Friends"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text("Telegram Features"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
// appbar rgb(81,125,163)
