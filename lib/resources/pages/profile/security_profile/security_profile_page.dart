import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../../app/controllers/security_profile_controller.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

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
      appBar: AppBar(
        title: Text(
          'Segurança',
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
            title: Text('Alterar senha'),
            subtitle: Text('Senha usada para acessar o aplicativo'),
            trailing: Icon(
              Icons.chevron_right,
              color: kPrimaryColor,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/security_senha_page');
            }),
      )),
    );
  }
}
