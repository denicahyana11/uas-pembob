import 'package:flutter/material.dart';
import 'beranda.dart';

void main() {
  runApp(new MaterialApp(
    title: "Beranda",
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Halamanawal(),
    );
  }
}

class Halamanawal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset(
              'images/cover.jpeg',
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            color: Colors.white,
            child: Text(
              'LETS NOTE YOUR ACTIVITIES',
              style: TextStyle(fontSize: 18),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.deepOrange,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Halsatu()),
              );
            },
          ),
        ],
      ),
    );
  }
}
