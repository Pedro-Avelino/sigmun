import 'package:flutter/material.dart';
import 'package:sigmun/core/constants.dart';
import 'package:sigmun/core/router.dart';
import 'package:sigmun/resources/pages/news/components/news_menu.dart';
import 'package:sigmun/resources/widgets/notice/notice_list_widget.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Notícias',
          ),
          titleTextStyle: TextStyle(color: kPrimaryColor, fontSize: 20),
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            color: kPrimaryColor,
            iconSize: 30,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: new NoticeList(),
        ));
  }
}
