import 'package:flutter/material.dart';
import 'package:nowapp_flutter/pages/enclave.dart';
import 'package:nowapp_flutter/pages/poem.dart';
import 'package:nowapp_flutter/pages/totheend.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children:<Widget>[
          new Container(
            padding: const EdgeInsets.only(left: 15,top: 30, right: 15),
            child: PoemPage(),
          ),
          new Container(
            padding: const EdgeInsets.only(left: 15,top: 30, right: 15),
            child: EnclavePage(),
          ),
          new Container(
            padding: const EdgeInsets.only(left: 15,top: 30, right: 15),
            child: TotheendPage(),
          ),
        ]
      ),
    );
  }
}