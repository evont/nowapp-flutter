import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  final List<String> tabTexts;
  final List<Widget> tabViews;
  final Widget title;
  TabContainer({this.tabTexts, this.tabViews, this.title });
  @override
  Widget build(BuildContext contenxt) {
    List<Tab> _tabs = tabTexts.map((item) {
      return Tab(
        text: item,
      );
    }).toList();
    return new DefaultTabController(
      length: tabTexts.length,
      child: Column(
        children: <Widget>[
          title,
          Container(
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black45,
              indicatorColor: Colors.black87,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: _tabs,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: tabViews,
            ),
          )
        ],
      ),
    );
  }
}