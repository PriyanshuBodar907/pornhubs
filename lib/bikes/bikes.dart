import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:webview_flutter/webview_flutter.dart';

import '../model/model.dart';
import '../provider/provider.dart';



class Bikes extends StatefulWidget {
  const Bikes({Key? key}) : super(key: key);

  @override
  State<Bikes> createState() => _BikesState();
}

class _BikesState extends State<Bikes> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  var firstproviderfalse;
  var firstprovidertrue;

  @override
  Widget build(BuildContext context) {
    firstproviderfalse = Provider.of<first_provider>(context, listen: false);
    firstprovidertrue = Provider.of<first_provider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Bank"),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: firstproviderfalse.l1.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                firstproviderfalse.selectv = Modeldata(
                  url: firstproviderfalse.l1[index].url,
                );
                Navigator.pushNamed(context, 'bikesdetils');
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                   alignment: Alignment.center,
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(10),
                     child: Image.asset(firstproviderfalse.l1[index].image,
                         fit: BoxFit.contain)),
                    ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
