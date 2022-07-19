import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/help_profile_controller.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

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
      appBar: AppBar(
        title: Text(
          'Ajuda',
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
