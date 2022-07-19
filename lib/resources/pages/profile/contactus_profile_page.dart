import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/contactus_profile_controller.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class ContactUsProfilePage extends NyStatefulWidget {
  final ContactUsProfileController controller = ContactUsProfileController();

  ContactUsProfilePage({Key? key}) : super(key: key);

  @override
  _ContactUsProfilePageState createState() => _ContactUsProfilePageState();
}

class _ContactUsProfilePageState extends NyState<ContactUsProfilePage> {
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
          'Fale conosco',
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
