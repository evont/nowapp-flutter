import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nowapp_flutter/model/EnclaveDetailModel.dart';
import 'package:html/dom.dart' as dom;
import 'package:nowapp_flutter/util/Api.dart';

class EnclaveArticlePage extends StatefulWidget {
  final int articleId;
  EnclaveArticlePage({Key key, @required this.articleId}) : super(key: key);
  
  @override
  _EnclaveArticleFutureState createState() => _EnclaveArticleFutureState();
}

class _EnclaveArticleFutureState extends State<EnclaveArticlePage> {
  Future future;
  @override
  void initState() {
    super.initState();
    future = loadData();
  }

  Future<EnclaveDetailModel> loadData() async {
    Map<String, dynamic> query = { 'id': widget.articleId };
    final data = await ApiClient.request(Api.ENCLAVE_ARTICLE, query);
    EnclaveDetailModel article = new EnclaveDetailModel.fromJson(data);
    return article;
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
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
            var result = async.data.result;
            var artTime = result.artTime;
            var _realTime = new DateTime.fromMillisecondsSinceEpoch(artTime * 1000);
            var formatedTime = '${_realTime.year}-${_realTime.month}-${_realTime.day} ${_realTime.hour}${_realTime.minute}';
            return new SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    child: new Text(result.artTitle, style: TextStyle( fontSize: 24, fontWeight: FontWeight.w500 )),
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: new Text(result.artEditor, style: TextStyle(color: Color(0xFF9c323e))),
                      ),
                      new Container(
                        child: new Text(formatedTime, style: TextStyle(color: Color(0xFFaaaaaa))),
                      ),
                    ],
                  ),
                  new Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Html(
                      data: result.artContent,
                      defaultTextStyle: TextStyle( height: 1.2, fontSize: 16, fontWeight: FontWeight.w300 ),
                      // useRichText: true,
                      customRender: (node, children) {
                        if(node is dom.Element) {
                          switch(node.localName) {
                            case 'blockquote': return new Container(
                              margin: const EdgeInsets.only(top: 20, bottom: 20),
                              padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 0),
                              decoration: BoxDecoration(
                                border: Border(left: BorderSide(color: Color(0xFFaaaaaa), width: 4)),
                              ),
                              child: new Column(
                                children: children,
                              )
                            );
                            case 'h3': return DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF333333),
                                fontWeight: FontWeight.bold,
                              ),
                              child: new Container(
                                margin: EdgeInsets.only(top: 16),
                                child: Wrap(
                                  children: children,
                                )
                              ),
                            );
                            case 'h4': return new Container(
                              color: Color(0xFFF2F2F2),
                              padding: const EdgeInsets.all(10),
                              child: Wrap(
                                children: children,
                              )
                            );
                            case 'h5': return DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF3aaaaaa),
                                fontWeight: FontWeight.bold,
                              ),
                              child: Wrap(
                                children: children,
                              )
                            );
                            case 'hr': return new Container(
                              width: _width * 0.6,
                              margin: EdgeInsets.only(top: 20, bottom: 20, left:_width * 0.15),
                              child: new Divider(height: 2.0, color: Colors.black38),
                            );
                          }
                        }
                      },
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