import 'package:flutter/material.dart';

class EnclaveArticlePage extends StatefulWidget {
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