import 'package:flutter/material.dart';

class EnclaveArticlePage extends StatefulWidget {
  final String article_id;
  EnclaveArticlePage({Key key, @required this.article_id}) : super(key: key);
  @override
  _EnclavePageArticleState createState() => _EnclavePageArticleState();
}

class _EnclavePageArticleState extends State<EnclaveArticlePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Text('enclave article'),
        ),
      ),
    ); 
  }
}