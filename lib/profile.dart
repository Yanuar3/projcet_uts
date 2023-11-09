import 'package:flutter/material.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text("Home Screen"),
          backgroundColor: Colors.lightBlue[700],
        ),
        backgroundColor: Colors.blueAccent[700],
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
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://akcdn.detik.net.id/community/media/visual/2017/12/06/6414c1ae-fcd1-49a6-8316-4a71c29f93ff_43.jpg?w=700&q=90'),
            ),
            Text(
              'Ngademin',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.grey[800]),
            ),
            Text(
              'Ngademin@admin.co.jp',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  color: Colors.grey.shade500),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                  leading: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.indigoAccent[400],
                  ),
                  title: Text(
                    'terakota.co.id',
                    style: TextStyle(
                      color: Colors.indigoAccent[400],
                    ),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
