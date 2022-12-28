
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pornhubs/provider/provider.dart';

import 'package:provider/provider.dart';


import 'bikes/bikedetils.dart';
import 'bikes/bikes.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<first_provider>(
          create: (context) => first_provider(),
        ),
      ],
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        routes: {

          '/': (context) => Bikes(),
          'bikesdetils': (context) => BikesDetils(),



        },
      ),
    ),
  );
}
