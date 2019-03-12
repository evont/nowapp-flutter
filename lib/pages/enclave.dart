import 'package:flutter/material.dart';
import 'package:nowapp_flutter/model/EnclaveListModel.dart';
import 'package:nowapp_flutter/util/Api.dart';
import 'package:nowapp_flutter/widget/loadmore.dart';

import 'package:nowapp_flutter/pages/enclaveArticle.dart';

class EnclavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _EnclaveFuture();
  }
}

class _EnclaveFuture extends StatefulWidget {
  @override
  _EnclaveFutureState createState() => _EnclaveFutureState();
}

class _EnclaveFutureState extends State<_EnclaveFuture> {
  EnclaveListModel model;
  bool isLoading = true;
  List enclaveList = [];
  var pageInfo;
  int get count => enclaveList.length;
  int prevPage = 0;
  @override
  void initState() {
    super.initState();
    loadData();
  }
  @override
  dispose() {
    super.dispose();
  }
  loadData() async {
    DateTime now = new DateTime.now();
    DateTime today = DateTime.utc(now.year, now.month, now.day);
    String todayMill = today.millisecondsSinceEpoch.toString();
    String timestamp = todayMill.substring(0, todayMill.length - 3);
    if (model != null) {
      var result = model.result;
      if (result.article != null && result.article.length != 0) {
        var firstArticle = result.article.last;
        timestamp = firstArticle.artTime.toString();
      }
    }
    int page = pageInfo == null ? 1 : int.parse(pageInfo.currentPage) + 1;
    
    if (prevPage != page) {
      final data = await ApiClient.request(Api.ENCLAVE, { 'page': page, 'timestamp': timestamp });
      EnclaveListModel enclave = new EnclaveListModel.fromJson(data);
      if (enclave.result.articleRecommend != null && page == 1) {
        enclaveList = enclave.result.articleRecommend;
      }
      
      enclaveList.addAll(enclave.result.article);
      setState(() {
        model = enclave;
        isLoading = false;
        pageInfo = enclave.result.pageInfo;
        prevPage = page;
      });
    }
  }
  Future<bool> _loadMore() async{
    await loadData();
    return true;
  }
  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return new Center(
        child: new CircularProgressIndicator(),
      );
    } else {

      return new Container(
        padding: const EdgeInsets.all(20),
        child: LoadMore(
          isFinish: num.parse(pageInfo.currentPage) == pageInfo.total,
          onLoadMore: _loadMore,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: enclaveBook(context, enclaveList[index]),
                );
            },
            itemCount: count,
          ),
        )
      );
    }
    
}}

Widget enclaveBook(BuildContext context, data) {
  double _width = MediaQuery.of(context).size.width;
  return GestureDetector(
    behavior: HitTestBehavior.translucent,
    onTap: () {
      Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
        return Scaffold(
          body: Material(
            color: const Color(0xFFFFFF),
            child: SafeArea(
              bottom: false,
              child: new EnclaveArticlePage(articleId: data.artId),
            ),
          ),
        );
      }));
    },
    child: new Column(
      children: <Widget>[
        new Stack(
          children: <Widget>[
            new Container(
              width: _width,
              height: _width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: new NetworkImage(data.artThumb),
                  fit: BoxFit.fitWidth,
                )
              ),
            ),
            Positioned(
              left: 10,
              bottom: 6,
              child: new Container(
                padding: const EdgeInsets.only(left: 8, top: 3, bottom: 3, right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Color(0xFFfddd6a),
                ),
                child: new Text(data.cateName),
              ),
            )
          ],
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: new Text(data.artTitle, style: TextStyle( fontWeight: FontWeight.w700, fontSize: 18 ),),
            ),
            new Container(
              alignment: Alignment.bottomRight,
              child: new Text(data.artEditor, textAlign: TextAlign.right, style: TextStyle( fontWeight: FontWeight.w300, fontSize: 12),),
            )
          ],
        )
        
      ],
    ),
  );
}