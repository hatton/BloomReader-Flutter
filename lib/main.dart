import 'package:BloomReader/player.dart';
import 'package:flutter/material.dart';

void main() => runApp(BloomReaderApp());

class BloomReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloom Reader',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BookList(),
    );
  }
}

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Image.asset("images/header-logo.png", height: 42.0)),
        body: ListView(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.map),
                title: Text('Moon & Cap'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BloomPlayerScreen(
                            zipfilePath:
                                "sample books/The Moon and the Cap.bloomd")),
                  );
                }),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('I can do this!'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Grandma's Glasses"),
            ),
          ],
        ));
  }
}
