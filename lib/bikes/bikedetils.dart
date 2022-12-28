
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/provider.dart';


class BikesDetils extends StatefulWidget {
  const BikesDetils({Key? key}) : super(key: key);

  @override
  State<BikesDetils> createState() => _BikesDetilsState();
}


class _BikesDetilsState extends State<BikesDetils> {
  @override


  var firstproviderfalse;
  var firstprovidertrue;

  @override
  Widget build(BuildContext context) {
    firstproviderfalse = Provider.of<first_provider>(context, listen: false);
    firstprovidertrue = Provider.of<first_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebView( javascriptMode: JavascriptMode.unrestricted,
         initialUrl:("${firstproviderfalse.selectv.url}"),
        ),
      ),
    );
  }
}
