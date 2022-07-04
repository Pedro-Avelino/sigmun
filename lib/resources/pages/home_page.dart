import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../app/controllers/home_controller.dart';

class HomePage extends NyStatefulWidget {
  final HomeController controller = HomeController();

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends NyState<HomePage> {
  @override
  init() async {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Container()),
    );
  }
}
