import 'package:flutter/material.dart';

class UserAccountDrawer extends StatefulWidget {
  @override
  _UserAccountDrawerState createState() => _UserAccountDrawerState();
}

class _UserAccountDrawerState extends State<UserAccountDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //remove all padding from listview
        padding: const EdgeInsets.all(0.0),
        children: [
          UserAccountsDrawerHeader(
            margin: EdgeInsets.only(
              bottom: 20.0,
            ),
            accountName: Text(
              "Dasun",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "mwdasun@gmail.com",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "D",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://image.freepik.com/free-vector/abstract-wallpaper-concept_23-2148479714.jpg'),
                fit: BoxFit.fitWidth,
              ),
              color: Colors.white,
            ),
          ),
          DrawerListTile(
            icon: Icons.done,
            onPress: () {},
            title: "first",
          ),
          DrawerListTile(
            icon: Icons.email,
            onPress: () {},
            title: "second",
          ),
          DrawerListTile(
            icon: Icons.work,
            onPress: () {},
            title: "third",
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  final String title;

  const DrawerListTile({Key key, this.icon, this.onPress, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.red,
        size: 36.0,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
      onTap: onPress,
    );
  }
}
