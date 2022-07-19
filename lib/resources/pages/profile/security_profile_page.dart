import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/security_profile_controller.dart';

class SecurityProfilePage extends NyStatefulWidget {
  final SecurityProfileController controller = SecurityProfileController();

  SecurityProfilePage({Key? key}) : super(key: key);

  @override
  _SecurityProfilePageState createState() => _SecurityProfilePageState();
}

class _SecurityProfilePageState extends NyState<SecurityProfilePage> {
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
