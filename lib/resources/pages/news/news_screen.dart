import 'package:flutter/material.dart';
import 'package:sigmun/core/constants.dart';
import 'package:sigmun/core/router.dart';
import 'package:sigmun/resources/pages/news/components/news_menu.dart';
import 'package:sigmun/resources/widgets/notice/notice_list_widget.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter News',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new NoticeList(),
    );
  }
}
