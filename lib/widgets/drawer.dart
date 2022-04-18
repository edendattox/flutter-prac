// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://exploringbits.com/wp-content/uploads/2021/11/anime-girl-pfp-2.jpg?ezimgfmt=ng%3Awebp%2Fngcb3%2Frs%3Adevice%2Frscb3-1";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Color.fromARGB(125, 94, 239, 195),
              ),
              accountName: Text('john doe'),
              accountEmail: Text(
                'test@test.com',
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ))),
          ListTile(
              leading: Icon(
                CupertinoIcons.search,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              title: Text("search",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ))),
          ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              title: Text("email",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  )))
        ],
      ),
    );
  }
}
