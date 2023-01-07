import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pornhubs/model/model.dart';
import 'package:pornhubs/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../utils/ads.dart';

class webView_Screen extends StatefulWidget {
  @override
  State<webView_Screen> createState() => webView_ScreenState();
}

class webView_ScreenState extends State<webView_Screen> {
  @override
  void initState() {
    super.initState();
    bannerAds();
    // interAds();
    // rewardAds();
    // interVideoAds();
  }

  var webviewT;
  var webviewF;
  @override
  Widget build(BuildContext context) {
    webviewF = Provider.of<first_provider>(context,listen: false);
    webviewT = Provider.of<first_provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Bank"),
        ),
        backgroundColor: Colors.white,
        body: GridView.custom(
          gridDelegate: SliverStairedGridDelegate(
            tileBottomSpace: 0,
            startCrossAxisDirectionReversed: true,
            pattern: [
              StairedGridTile(1.0, 5),
              StairedGridTile(0.5, 0.8),
              StairedGridTile(0.5, 0.8),
              StairedGridTile(1.0, 5),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
              bannerAds();
              if(webviewF.l1[index] == null)
              {
                return AdWidget(
                  ad: bannerAd!,
                );
              }

              else
              {
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      webviewF.Datapick = Modeldata(url: webviewF.l1[index].url,);
                      Navigator.pushNamed(context, 'sec');
                    },
                    child: Container(color: Colors.black,child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset(webviewF.l1[index].image,fit: BoxFit.cover,))),
                  ),
                );
              }
            },
            childCount: webviewF.l1.length,
          ),
        ),
      ),
    );
  }
}