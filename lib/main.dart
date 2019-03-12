import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

import 'package:nowapp_flutter/home.dart';
import 'package:nowapp_flutter/model/HomeModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() {
  runApp(new MainApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor:Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MainApp extends StatelessWidget {
  get future async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var initData = prefs.getString('home') != null ? jsonDecode(prefs.getString('home')) : {
      "lYear": 1900,
      "lMonth": 1,
      "lDay": 1,
      "Animal": "",
      "IMonthCn": "",
      "IDayCn": "",
      "cYear": 1900,
      "cMonth": 1,
      "cDay": 1,
      "gzYear": "",
      "gzMonth": "",
      "gzDay": "",
      "isToday": false,
      "isLeap": false,
      "nWeek": 1,
      "ncWeek": "",
      "isTerm": false,
      "Term": "",
      "astro": "",
      "monthAlias": "",
      "phase": {
      "fraction": 0,
      "phase": 0,
      "phaseName": "",
      "angle": 0
      }
    };
    return HomeModel.fromJson(initData);
  }
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: future,
      builder:  (_, AsyncSnapshot snapshot) {
        return MaterialApp(
          home: HomePage(snapshot.data),
        );
      }
    );
  }
}