// import 'dart:io' as Io;
// import 'package:archive/archive.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter/services.dart' show rootBundle;

class BloomPlayerScreen extends StatelessWidget {
  final String zipfilePath;

  BloomPlayerScreen({@required this.zipfilePath});

  @override
  Widget build(BuildContext context) {
    /* TODO: take  this.zipfile path, unzip it somewhere, feed the path to its index.htm to the bloom-player */
    final htmPath =
        "C:/Users/hatto/AppData/Local/Temp/bloom-reader-2020526-3764-uwdoh0.bagrr/index.htm";
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloom Player"),
      ),
      body: WebView(
        //https://medium.com/flutter-community/loading-local-assets-in-webview-in-flutter-b95aebd6edad
        initialUrl:
            "file:///android_asset/flutter_assets/javascript/node_modules/bloom-player/dist/bloomplayer.htm" +
                "?url=file:///" +
                htmPath
        //"?url=https://s3.amazonaws.com/bloomharvest/librarian%40bloomlibrary.org%2f40efd104-3b32-44e0-b5a3-37ac2a00b11e/bloomdigital%2findex.htm&showBackButton=true&useOriginalPageSize=true"
        //+ bookHtmlFile.getAbsolutePath()+"&showBackButton=true&allowToggleAppBar=true&initiallyShowAppBar=false"
        ,
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (NavigationRequest request) {
          print('allowing navigation to $request');
          return NavigationDecision.navigate;
        },
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
