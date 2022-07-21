import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class InactivePage extends StatefulWidget {
  InactivePage({Key? key}) : super(key: key);

  @override
  _InactivePageState createState() => _InactivePageState();
}

class _InactivePageState extends NyState<InactivePage> {
  @override
  init() async {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'INATIVO',
        ),
        titleTextStyle: TextStyle(color: kPrimaryColor, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.close),
          color: kPrimaryColor,
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Text('PÁGINA EM CONSTRUÇÃO'),
      )),
    );
  }
}
