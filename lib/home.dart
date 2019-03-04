import 'package:flutter/material.dart';
import 'package:nowapp_flutter/components/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar,
      drawer: SideDrawer(),
      body: Center(
        child: new Text('home'),
      ),
    );
  }
  get _appbar => AppBar(
    iconTheme: new IconThemeData(color: Colors.black),
    elevation: 2,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text('今历', style: TextStyle(color: Colors.black, fontSize: 20),),
    leading: Builder(
        builder: (BuildContext context) {
          return IconButton(icon: Image.asset('assets/icon-menu.png', width: 24), onPressed: (){
            Scaffold.of(context).openDrawer();
          });
        }),
  );
}