import 'package:flutter/material.dart';
import 'package:flutter_application_test/profile.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.lightBlue[700],
      ),
      backgroundColor: Colors.lightBlueAccent[100],
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Ngademin",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0)),
              accountEmail: new Text("Ngademin@admin.co.jp"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://akcdn.detik.net.id/community/media/visual/2017/12/06/6414c1ae-fcd1-49a6-8316-4a71c29f93ff_43.jpg?w=700&q=90'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Call center"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              title: Text("Exit"),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(crossAxisCount: 2, children: const <Widget>[
          MyMenu(
            title: "Product",
            icon: Icons.discount,
            warna: Colors.blueGrey,
          ),
          MyMenu(
            title: "Cart",
            icon: Icons.trolley,
            warna: Colors.orange,
          ),
          MyMenu(
            title: "Payment",
            icon: Icons.monetization_on_outlined,
            warna: Colors.green,
          ),
          MyMenu(
            title: "Information",
            icon: Icons.info_outline_rounded,
            warna: Colors.blue,
          ),
        ]),
      ),
    );
  }
}

// class LayoutNavigationBar extends StatefulWidget {
//   @override
//   _LayoutNavigationBarState createState() => _LayoutNavigationBarState();
// }

// class _LayoutNavigationBarState extends State<LayoutNavigationBar> {
//   BottomNavigationBar: BottomNavigationBar(
//     currentIndex: 0,
//     items: [
//       BottomNavigationBarItem(
//         icon: new Icon(Icon.dashboard),
//         label: 'profile'),
//     ]
//   )
// }

class MyMenu extends StatelessWidget {
  const MyMenu(
      {super.key,
      required this.title,
      required this.icon,
      required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
