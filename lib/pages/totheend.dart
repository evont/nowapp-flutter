import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nowapp_flutter/model/TotheendModel.dart';
import 'package:nowapp_flutter/util/Api.dart';

class TotheendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _TotheendFuture();
  }
}

class _TotheendFuture extends StatefulWidget {
  @override
  __TotheendFutureState createState() => __TotheendFutureState();
}

class __TotheendFutureState extends State<_TotheendFuture> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  Future future;
  @override
  void initState() {
    super.initState();
    future = loadData();
  }
  Future<TotheendModel> loadData() async {
    final data = await ApiClient.request(Api.TOTHEEND);
    TotheendModel poem = new TotheendModel.fromJson(data);
    return poem;
  }
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
      builder: (context, AsyncSnapshot async) {
        if (async.connectionState == ConnectionState.active ||
            async.connectionState == ConnectionState.waiting) {
          return new Center(
            child: new CircularProgressIndicator(),
          );
        }
        if (async.connectionState == ConnectionState.done) {
          if (async.hasError) {
            return new Center(
              child: new Text('服务器错误，请稍后重试'),
            );
          } else if (async.hasData) {
            var data = async.data;
            var _data = data.data;
            return new SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: new VerticalText(text: _data.author, size: 14),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: new VerticalText(text: _data.title, size: 24, fontWeight: FontWeight.w700)
                      ),
                    ],
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Html(
                      data: _data.content,
                      defaultTextStyle: TextStyle( height: 1.2 ),
                    ),
                  ),
                  new GestureDetector(
                    onTap: () {
                      setState(() {
                        future = loadData();
                      });
                    },
                    child: new Container(
                      margin: const EdgeInsets.only(top: 40, bottom: 20),
                      padding: const EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
                      decoration: new BoxDecoration(
                        border: new Border.all(color: Color(0xFF333333), width: 0.5),
                        borderRadius: new BorderRadius.all(Radius.circular(4)),
                      ),
                      child: new Text('看看新文章'),
                    ),
                  )
                ],
              ),
            );
          }
        }
      },
      future: future,
    );
  }
}

class VerticalText extends StatelessWidget {
  VerticalText({Key key, this.text, this.color, this.size, this.fontWeight = FontWeight.normal}) : super(key: key);

  final double size;
  final String text;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      child: Text(
        text,
        style: TextStyle(
          fontSize: size,
          color: color,
          height: 0.85,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}