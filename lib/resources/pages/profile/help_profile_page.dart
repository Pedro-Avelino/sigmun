import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/help_profile_controller.dart';

class HelpProfilePage extends NyStatefulWidget {
  final HelpProfileController controller = HelpProfileController();

  HelpProfilePage({Key? key}) : super(key: key);

  @override
  _HelpProfilePageState createState() => _HelpProfilePageState();
}

class _HelpProfilePageState extends NyState<HelpProfilePage> {
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
