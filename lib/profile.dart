import 'package:flutter/material.dart';
import 'qrcode.dart';

class Profil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Column(children: <Widget>[
            Picture(),
            Name(),
            Alamat(),
            RowOne(),
            RowTwo(),
          ]),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
              image: AssetImage('images/undiksha.jpg'), fit: BoxFit.cover)),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Universitas Pendidikan Ganesha',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
      ),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class Alamat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Jl. Udayana No. 11 Banyuasri, Kec.Buleleng, Kab.Buleleng, Bali',
        style: TextStyle(
          color: Colors.black,
          fontSize: 10,
        ),
      ),
    );
  }
}

class RowOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.black12,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.monochrome_photos,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Instagram',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ]),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.black12,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.location_city,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ]),
              ),
            ),
          )
        ]);
  }
}

class RowTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.black12,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.live_tv,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Youtube',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ]),
              ),
            ),
          ),
          Container(
            width: 150,
            margin: const EdgeInsets.only(top: 20.0),
            child: Card(
              color: Colors.black12,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Text(
                    'Buleleng',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ]),
              ),
            ),
          )
        ]);
  }
}
