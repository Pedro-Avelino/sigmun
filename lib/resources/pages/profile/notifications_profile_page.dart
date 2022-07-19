import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/notifications_profile_controller.dart';

class NotificationsProfilePage extends NyStatefulWidget {
  final NotificationsProfileController controller =
      NotificationsProfileController();

  NotificationsProfilePage({Key? key}) : super(key: key);

  @override
  _NotificationsProfilePageState createState() =>
      _NotificationsProfilePageState();
}

class _NotificationsProfilePageState extends NyState<NotificationsProfilePage> {
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
