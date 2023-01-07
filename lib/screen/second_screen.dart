import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:pornhubs/provider/provider.dart';
import 'package:provider/provider.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  var webviewT;
  var webviewF;

  String url = "";
  double progress = 0;
  late InAppWebViewController webViewController;
  // @override
  // void initState() {
  //   super.initState();
  //   if(Platform.isAndroid){
  //     WebView.platform= AndroidWebView();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    webviewF = Provider.of<first_provider>(context,listen: false);
    webviewT = Provider.of<first_provider>(context,listen: true);
    return WillPopScope(
      onWillPop: ()async{
        if(await webViewController.canGoBack())
        {
          webViewController.goBack();
          return false;
        }
        else
        {
          return true;
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: InAppWebView(
            initialUrlRequest: URLRequest(url:Uri.parse('${webviewF.Datapick.url}') ),
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                disableHorizontalScroll: true,
                disableContextMenu: true,
              ),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              webViewController = controller;
            },
            onLoadStart: (InAppWebViewController controller,url) {
              setState(() {
                this.url = url as String;
              });
            },
            onLoadStop:
                (InAppWebViewController controller,url) async {
              setState(() {
                this.url = url as String;
              });
            },
            onProgressChanged:
                (InAppWebViewController controller, int progress) {
              setState(() {
                this.progress = progress / 100;
              });
            },
          ),
        ),
      ),
    );
  }
}