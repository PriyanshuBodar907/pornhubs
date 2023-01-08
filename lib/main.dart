
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pornhubs/provider/provider.dart';
import 'package:pornhubs/screen/TWO.dart';
import 'package:pornhubs/screen/second_screen.dart';
import 'package:pornhubs/screen/view.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
      Sizer(builder: (context,orient,divetype){
        return MultiProvider(
          providers: [
            ListenableProvider(create: (context)=>first_provider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/':(context)=>Galaxy_Planets_Screen(),
              'two':(context)=>webView_Screen(),
              'sec':(context)=>Second_Screen(),
            },
          ),
        );
      }
      )
  );

}