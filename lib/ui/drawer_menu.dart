import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('Kasım Doğruyol'),
            accountEmail: const Text('kasimdogruyol17@gmail.com'),
            
            currentAccountPicture: Image.asset(
                'assets/images/ben.jpeg'),
            otherAccountsPictures: const <Widget>[
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text('KD'),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text('FP'),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children:  <Widget>[
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Ana Sayfa'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Ara'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text('Profil'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const Divider(),
                InkWell(
                  onTap: () {
                    debugPrint('asdsad');
                  },
                  splashColor: Colors.cyan,
                  child: const ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Ana Sayfa'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                const AboutListTile(
                  applicationName: 'Flutter Dersleri',
                  applicationIcon: Icon(Icons.save),
                  applicationVersion: '2.0',
                  child: Text('ABOUT US'),
                  applicationLegalese: 'asdasdasd',
                  icon: Icon(Icons.keyboard),
                  aboutBoxChildren: <Widget>[
                    Text('Child 1'),
                    Text('Child 2'),
                    Text('Child 3'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
