// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:industry/main.dart';
import 'package:industry/screens/InviteFriends.dart';
import 'package:industry/screens/profile.dart';
import 'package:industry/widgets/Setting.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Center(
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 40,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "Mkwasi Clothing Industry",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text("Home"),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                // ignore: empty_statements
                builder: (BuildContext context) => MyHomePage(title: '', key: const ValueKey(1),)));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("LogIn"),
            leading: IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {

              },
            ),
            onTap: () {Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>  const SignupScreen()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Setting"),
            leading: IconButton(
              icon: const Icon(Icons.settings_outlined),
              onPressed: () {

              },
            ),
            onTap: () {Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const Setting()));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text("Invite Friends"),
            leading: IconButton(
              icon: const Icon(Icons.share_outlined),
              onPressed: () {

              },
            ),
            onTap: () {Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const InviteFriendsPage()));
            },
          ),
          
          
        ],
      ) ,
    );
  }
}
