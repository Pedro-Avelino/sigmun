import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../../app/controllers/notifications_profile_controller.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

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
      appBar: AppBar(
        title: Text(
          'Notificações',
        ),
        titleTextStyle: TextStyle(color: kPrimaryColor, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          color: kPrimaryColor,
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(child: Container()),
    );
  }
}
