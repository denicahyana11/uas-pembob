import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({this.nama});
  final String nama;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Detail Aplikasi"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(right: 16, left: 16, top: 16),
          color: Colors.grey[200],
          child: Column(
            children: <Widget>[
              Image.asset(
                'images/sampul.jpeg',
              ),
              Text(
                'Aplikasi ini merupakan aplikasi yang di rancang untuk mencatat diary, menambahkan catatan penting seperti tugas tugas kuliah, mengedit catatan diary dan menghapusnya. Dalam penggunaanya, aplikasi ini dapat di akses melalui android, aplikasi ini sangat memudahkan kita dalam menambah, mengedit dan menghapus diary yang akan di buat.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ));
  }
}
