import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../../app/controllers/about_profile_controller.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

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
      appBar: AppBar(
        title: Text(
          'Sobre',
        ),
        titleTextStyle: TextStyle(color: kPrimaryColor, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          color: kPrimaryColor,
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
          child: Container(
        child: ListTile(
          title: Text('Versão'),
          subtitle: Text('1.0.0'),
        ),
      )),
    );
  }
}
