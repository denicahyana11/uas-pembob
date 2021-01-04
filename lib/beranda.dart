import 'package:flutter/material.dart';
import 'DBHelper.dart';
import 'crud.dart';
import 'Listnote.dart';
import 'about.dart';
import 'profile.dart';
import 'qrcode.dart';

class Halsatu extends StatefulWidget {
  @override
  _HalsatuState createState() => _HalsatuState();
}

class _HalsatuState extends State<Halsatu> {
  var db = new DBHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("NOTES"),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('humas@undiksha.ac.id'),
              accountName: Text('Universitas Pendidikan Ganesha'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/home'),
              title: Text('Home'),
              leading: CircleAvatar(
                child: Icon(Icons.home),
                backgroundColor: Colors.deepOrange,
              ),
            ),
            ListTile(
              //   onTap: () => Navigator.of(context).pushNamed('/profil'),
              title: Text('Profil'),
              leading: CircleAvatar(
                child: Icon(Icons.person_outline),
                backgroundColor: Colors.deepOrange,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) => new Profil()));
              },
            ),
            ListTile(
              title: Text('Settings'),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
                backgroundColor: Colors.deepOrange,
              ),
            ),
            Divider(),
            ListTile(
              //  onTap: () => Navigator.of(context).pushNamed('/help'),
              title: Text('About'),
              leading: CircleAvatar(
                child: Icon(Icons.help),
                backgroundColor: Colors.deepOrange,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) => new About()));
              },
            ),
            ListTile(
              title: Text('QR Scan'),
              leading: CircleAvatar(
                child: Icon(Icons.center_focus_weak),
                backgroundColor: Colors.deepOrange,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext) => new Qrcode()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[400],
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepOrange,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => new NotePage(null, true))),
      ),
      body: FutureBuilder(
        future: db.getNote(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          var data = snapshot.data;

          return snapshot.hasData
              ? new NoteList(data)
              : Center(
                  child: Text("No Data"),
                );
        },
      ),
    );
  }
}
