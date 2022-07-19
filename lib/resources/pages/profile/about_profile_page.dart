import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/about_profile_controller.dart';

class AboutProfilePage extends NyStatefulWidget {
  final AboutProfileController controller = AboutProfileController();

  AboutProfilePage({Key? key}) : super(key: key);

  @override
  _AboutProfilePageState createState() => _AboutProfilePageState();
}

class _AboutProfilePageState extends NyState<AboutProfilePage> {
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
