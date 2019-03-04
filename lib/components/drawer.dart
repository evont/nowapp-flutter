import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    final double _width = MediaQuery.of(context).size.width;
    return ConstrainedBox(
      constraints: BoxConstraints.expand(width: _width),
      child: new Material(
        elevation: 16,
        child: Container(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(left: 15, top: 30, right: 15),
                child: _navigationBarItem(context)
              ),
              new Container(
                padding: const EdgeInsets.only(top: 60),
                width: 240,
                height: 460,
                child: _navList(context),
              ),
            ],
          ),
        )
      ),
    );
  }
}

Widget _navigationBarItem(BuildContext context) {
  return Row(
    children: <Widget>[
      new Container(
        width: 45,
        height: 45,
        child: new IconButton(
          icon: Image.asset('assets/icon-close.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      )
    ],
  );
}

Widget _navList(BuildContext context) {
  return new Column(
    children: <Widget>[
      new Expanded(
        child: new FlatButton(
          child: _btnContent('首页', '只争朝夕'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      new Expanded(
        child: new FlatButton(
          child: _btnContent('搜韵', '让诗词融入生活'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      new Expanded(
        child: new FlatButton(
          child: _btnContent('飞地', '独立思考的精神'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      new Expanded(
        child: new FlatButton(
          child: _btnContent('万古', '深度、多元与价值'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      new Expanded(
        child: new FlatButton(
          child: _btnContent('观止', '只为简单的纯净的阅读而生'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    ],
  );
}

Widget _btnContent(String title, String desc) {
  return new Column(children: <Widget>[
    _titleAnimatedText(title),
    _descAnimatedText(desc)
  ], crossAxisAlignment: CrossAxisAlignment.start);
}
Widget _titleAnimatedText(String str){
  return new SizedBox(
    height: 42.0,
    child: new RotateAnimatedTextKit(
      text: [str],
      isRepeatingAnimation: false,
      duration: Duration(microseconds: 1000),
      textStyle: TextStyle(
        fontSize: 24,
        color: Colors.black87,
      ),
    )
  );
}

Widget _descAnimatedText(String str){
  return new SizedBox(
    child: new FadeAnimatedTextKit(
      text: [str],
      isRepeatingAnimation: false,
      duration: Duration(microseconds: 1000),
      textStyle: TextStyle(
        fontSize: 16,
        color: Colors.black26,
      ),
    )
  );
}