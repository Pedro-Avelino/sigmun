import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/contactus_profile_controller.dart';

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
      appBar: AppBar(),
      body: SafeArea(child: Container()),
    );
  }
}
