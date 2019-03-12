import 'package:flutter/material.dart';
import 'package:nowapp_flutter/widget/slider.dart';
import 'package:nowapp_flutter/widget/phase.dart';
import 'package:nowapp_flutter/widget/tab.dart';
import 'package:nowapp_flutter/util/Api.dart';
import 'package:nowapp_flutter/model/HomeModel.dart';

import 'package:nowapp_flutter/pages/poem.dart';
import 'package:nowapp_flutter/pages/enclave.dart';
import 'package:nowapp_flutter/pages/totheend.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert';

class HomePage extends StatefulWidget {
  final HomeModel initalData;
  HomePage(this.initalData);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  HomeModel data;
  Future future;
  @override
  void initState() {
    super.initState();
    future = loadData();
  }
  loadData() async {
    var _result = await ApiClient.request(Api.HOME);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('home', _result is String ? _result : new JsonEncoder().convert(_result));
    HomeModel result = new HomeModel.fromJson(_result);
    return result;
  }
  final GlobalKey<ContainerState> _slideKey = GlobalKey<ContainerState>();
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      future: future,
      initialData: widget.initalData,
      builder: (_, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.active ||
            snapshot.connectionState == ConnectionState.waiting) {
          return new Center(
            child: new CircularProgressIndicator(),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          var data = snapshot.data;
          if (snapshot.hasData) {
            return Scaffold(
              body: Material(
                color: const Color(0xFF444444),
                child: SafeArea(
                  bottom: false,
                  child: new Column(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
                        child: _header(context, data),
                      ),
                      new Expanded(child: new _Body(
                        child: new Column(
                            children: <Widget>[
                              _date(context, data),
                              _moonPhase(context, data),
                            ],
                          ),
                        )
                      ),
                    ],
                  ),
                )
              )
            );
          } else {
            return new Center(
              child: new CircularProgressIndicator(),
            );
          }
        }
      }
    );
  }
}

Widget _header(BuildContext context, HomeModel data) {
  return Row(
    children: <Widget>[
      new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text('${data.monthAlias} · ${data.term}', style: new TextStyle( color: Colors.white, fontSize: 24, fontFamily: 'Syst' )),
          ],
        ),
      ),
    ],
  );
}

class _Body extends StatelessWidget {
  final Widget child;
  _Body({
    @required this.child
  });
  final GlobalKey<ContainerState> _slideKey = GlobalKey<ContainerState>();
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    final double _diffSize = 200;
    return SlideStack(
      child: SlideContainer(
        key: _slideKey,
        transform: Matrix4.translationValues(0, _height - _diffSize, 0),
        slideDirection: SlideDirection.bottom,
        drawerSize: _height - _diffSize,
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: Container(
            margin: const EdgeInsets.all(10.0),
            width: _width,
            height: _height,
            child: new TabContainer(
              tabTexts: ['搜韵', '飞地', '观止'], 
              tabViews: [new PoemPage(), new EnclavePage(), new TotheendPage()], 
              title: new Column(
                children: <Widget>[
                  new Container(
                    height: 5,
                    width:_width * 0.3,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: new Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: new Text('发现', style: TextStyle(fontSize: 18)),
                        ),
                        new Expanded(child: new Container()),
                        Container(
                          padding: EdgeInsets.only(right: 20),
                          child: new Text('今年进度：$daysPercent%', style: TextStyle(color: Colors.black54, fontSize: 12)),
                        ),  
                      ],
                    ),
                  )
                ],
              )
            ),
          )
        ),
      ),
      drawer: Container(
        child: new Column(
          children: <Widget>[
            new Container(
              child: child,
            )
          ],
        )
      )
    );
  }
  get daysPercent {
    DateTime now = new DateTime.now();
    int nowYear = now.year;
    DateTime startOfYear = new DateTime(nowYear);
    bool isLeap = nowYear % 4 == 0 ? true : false;
    int fullDays = isLeap ? 366 : 365;
    Duration duration = now.difference(startOfYear);
    return ((duration.inDays + 1) / fullDays * 100).toStringAsFixed(2);
  }
}

Widget _date(BuildContext context, HomeModel data) {
  return new Container(
    width: 220,
    padding: const EdgeInsets.all(20),
    child: Column(
      children: <Widget>[
        new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              width: 80,
              child: new Text('${data.cYear}', style: new TextStyle( fontFamily: 'DIN Alternate', fontSize: 80, height: 0.9, fontWeight: FontWeight.w400, color: Colors.white )),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(data.ncWeek, style: new TextStyle( fontFamily: 'Syst', fontSize: 20, color: Colors.white )),
                  new Text('${data.cMonth}月${data.cDay}日', textAlign: TextAlign.justify, style: new TextStyle( fontFamily: 'Syst', fontSize: 14, color: Colors.white ))
                ],
              ),
            )
          ],
        ),
        new Container(color: Colors.white, width: 200, height: 8, margin: const EdgeInsets.only(top: 10, bottom: 10),),
        new Container(
          width: 220,
          child: new Text('${data.iMonthCn}${data.iDayCn} / ${data.phase.phaseName}', style: new TextStyle(fontFamily: 'Syst', fontSize: 22, color: Colors.white )),
        ),
      ],
    )
  );
}

Widget _moonPhase(BuildContext context, HomeModel data) {
  return new Container(
    child: new Stack(
      children: <Widget>[
        new Image(image: new AssetImage('assets/moon.png'), width: 240),
        new CustomPaint(
          size: Size(240, 240), 
          painter: new MoonPhase(phase: data.phase.phase),
        ),
      ],
    ),
  );
}

