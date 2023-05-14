import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://yt3.googleusercontent.com/ytc/AL5GRJWhqXwZ-qTc8jflRtRqwuoz22OeJZ0K-VTU05D8fA=s900-c-k-c0x00ffffff-no-rj";
    return Drawer(
        child: Container(
      color: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Uday Garg",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                accountEmail: Text("udaygarg@hotmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(imageurl),
                ),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    ));
  }
}
