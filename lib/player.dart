// import 'dart:io' as Io;
// import 'package:archive/archive.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter/services.dart' show rootBundle;

class BloomPlayerScreen extends StatelessWidget {
  final String path;

  BloomPlayerScreen({@required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloom Player"),
      ),
      body: WebView(
        //https://medium.com/flutter-community/loading-local-assets-in-webview-in-flutter-b95aebd6edad
        initialUrl:
            "file:///android_asset/flutter_assets/javascript/node_modules/bloom-player/dist/bloomplayer.htm"
        //+ bookHtmlFile.getAbsolutePath()+"&showBackButton=true&allowToggleAppBar=true&initiallyShowAppBar=false"
        ,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

// void main() {
//   // Read the Zip file from disk.
//   List<int> bytes = new Io.File('test.zip').readAsBytesSync();

//   // Decode the Zip file
//   Archive archive = new ZipDecoder().decodeBytes(bytes);

//   // Extract the contents of the Zip archive to disk.
//   for (ArchiveFile file in archive) {
//     String filename = file.name;
//     List<int> data = file.content;
//     new Io.File('out/' + filename)
//           ..createSync(recursive: true)
//           ..writeAsBytesSync(data);
//   }
