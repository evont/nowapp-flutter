import 'package:flutter/material.dart';
import 'dart:math';
import 'package:nowapp_flutter/widget/slider.dart';
import 'package:nowapp_flutter/model/HomeModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  var data = new HomeModel.fromJson({
    "lYear": 2019,
    "lMonth": 1,
    "lDay": 29,
    "Animal": "猪",
    "IMonthCn": "正月",
    "IDayCn": "廿九",
    "cYear": 2019,
    "cMonth": 3,
    "cDay": 5,
    "gzYear": "己亥",
    "gzMonth": "丙寅",
    "gzDay": "辛丑",
    "isToday": true,
    "isLeap": false,
    "nWeek": 2,
    "ncWeek": "火曜日",
    "isTerm": false,
    "Term": "草木萌动",
    "astro": "双鱼座",
    "monthAlias": "霞初月",
    "phase": {
      "fraction": 0.022881766015456606,
      "phase": 0.750000001,
      "phaseName": "晓月",
      "angle": 1.0624470443293312
    }
  });
  final GlobalKey<ContainerState> _slideKey = GlobalKey<ContainerState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: const Color(0xFF444444),
        child: SafeArea(
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
    return SlideStack(
      child: SlideContainer(
        key: _slideKey,
        transform: Matrix4.translationValues(0, _height - 180, 0),
        slideDirection: SlideDirection.bottom,
        drawerSize: _height - 180,
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: Container(
            margin: const EdgeInsets.all(20.0),
            width: _width,
            height: _height,
            child: new Text('discover'),
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
          painter: Phase(phase: data.phase.phase),
        ),
      ],
    ),
  );
}

class Phase extends CustomPainter{
  final double phase;
  Phase({ this.phase });
  @override
  void paint(Canvas canvas, Size size) {
    Color shadowColor = Colors.black54;
    MaskFilter _filter = MaskFilter.blur(BlurStyle.normal, 3);

    if (phase <= 0.25) {
      // left
      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        -pi / 2,
        -pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
      double _shadowWidth = size.width - phase / 0.25 * size.width;
      // right
      canvas.drawArc(
        Rect.fromLTWH((size.width - _shadowWidth)/ 2, 0, _shadowWidth, size.height),
        -pi / 2,
        pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
    } else if (phase <= 0.5) {
      double _shadowWidth = size.width - (0.5 - phase) / 0.25 * size.width;
      Path path = Path()
                    ..moveTo(size.width / 2, 0)
                    ..arcTo(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2), -pi / 2, -pi, false)
                    ..cubicTo((size.width - _shadowWidth) / 2, size.height / 4 * 3, (size.width - _shadowWidth) / 2, size.height / 4, size.width / 2, 0);
      canvas.drawPath(path, Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter);
    } else if (phase <= 0.75) {
      
      double _shadowWidth = size.width - (0.75 - phase) / 0.25 * size.width;
      Path path = Path()
                  ..moveTo(size.width / 2, 0)
                  ..arcTo(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2), -pi / 2, pi, true)
                  ..cubicTo(size.width - _shadowWidth / 2, size.height / 4 * 3, size.width - _shadowWidth / 2, size.height / 4, size.width / 2, 0);

      canvas.drawPath(path, 
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter);
    } else {
      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        -pi / 2,
        pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
      double _shadowWidth = size.width - (1 - phase) / 0.25 * size.width;
      // right
      canvas.drawArc(
        Rect.fromLTWH((size.width - _shadowWidth)/ 2, 0, _shadowWidth, size.height),
        -pi / 2,
        -pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
    }
    
    
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}