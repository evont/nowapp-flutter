import 'package:flutter/material.dart';

import 'package:nowapp_flutter/model/PoemModel.dart';


class PoemPage extends StatefulWidget {
  @override
  _PoemPageState createState() => _PoemPageState();
}

class _PoemPageState extends State<PoemPage> {
  var data = new PoemModel.fromJson({
    "Date": "己亥 二月初四　3月10日",
    "ContentType": "poem",
    "Content": {
      "Poem": {
        "Id": 143322,
        "GroupIndex": 0,
        "Dynasty": "宋",
        "Author": "陆游",
        "Type": "绝句",
        "Rhyme": "尤",
        "Title": {
        "Content": "二月四日作",
        "Comments": []
        },
        "Clauses": [
        {
        "Content": "早春风力已轻柔，"
        },
        {
        "Content": "瓦雪消残玉半沟。"
        },
        {
        "Content": "飞蝶鸣鸠俱得意，"
        },
        {
        "Content": "东风应笑我闲愁。"
        }
        ],
        "IsTwoClausesPerSentence": true
      }
    },
    "Index": 0,
    "Total": 35
  });
  @override
  Widget build(BuildContext context) {
    var _date = data.date;
    
    return Center(
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Text(_date),
            new Container(
              child: _poemClauses(context, data),
            )
          ],
        )
      ),
    );
  }
}

Widget _poemClauses(BuildContext context, PoemModel data) {
  bool isInlineComment(content) {
    bool inline = true;
    for (int i = 0; i < content.length; i++) {
        if (content[i] >= "㐀" && content[i] <= "﨩") {
            inline = false;
            break;
        }
    }

    return inline;
  }
  String formatClause(clause) {
      String content = clause.content;
      if (clause.comments != null) {
        for (int j = clause.comments.length - 1; j >= 0; j-=1) {
          var comment = clause.comments[j];
          if (comment.type != 'Text') {
            continue;
          }
          if (isInlineComment(comment.content)) {
            content = content.substring(0, comment.index) + comment.content + content.substring(comment.index);
          }
        }
      }
      return content;
  }
  var _poem = data.content.poem;
  var _clauses = _poem.clauses;
  List<Widget> _poems = [];
  List<Text> _poemClauses = [];
  if (_clauses != null) {
    for (int i = 0, len = _clauses.length; i < len; i += 1) {
      var _clause = _clauses[i];
      var content = formatClause(_clause);
      _poemClauses.add(new Text(content));
      
      bool isBreak = _clause.breakAfter != null && _clause.breakAfter != false;
      bool isDivided = _poem.isTwoClausesPerSentence && i % 2 == 1;
      bool isEndMark = '。；！？'.indexOf(_clause.content.substring(_clause.content.length - 1)) >= 0;
      if ((isDivided || isEndMark)|| isBreak)
      {
        _poems.add(new Row(
          children: _poemClauses,
        ));
        _poemClauses = [];
      }
    }
  }
  return new Column(
    children: _poems,
  );
}