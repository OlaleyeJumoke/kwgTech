import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:kwg_tech/utils/colors.dart';

class KwgWebView extends StatefulWidget {
  const KwgWebView({Key? key}) : super(key: key);

  @override
  _KwgWebViewState createState() => _KwgWebViewState();
}

class _KwgWebViewState extends State<KwgWebView> {
  
  @override
  Widget build(BuildContext context) {
    return  WebviewScaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColor.blue,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),),
         
          url: "https://www.kwgsoftworks.com/",
          debuggingEnabled: true,
        withZoom: true,
      withLocalStorage: true,
      //hidden: true,
      initialChild:  Container(
        color: CustomColor.white,
        child:  const Center(
          child: Text('Loading web page.....'),
        ),
      ),
      
    );
  }
}
