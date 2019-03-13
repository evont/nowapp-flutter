import 'package:flutter/material.dart';

class EssayPage extends StatefulWidget {
  @override
  _EssayPageState createState() => _EssayPageState();
}

class _EssayPageState extends State<EssayPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Text('Essay'),
    );
  }
}