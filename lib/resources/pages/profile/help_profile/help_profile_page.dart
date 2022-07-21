import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../../app/controllers/help_profile_controller.dart';
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
          icon: Icon(Icons.close),
          color: kPrimaryColor,
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text('SIGMun'),
              subtitle: Text('Sobre o aplicativo'),
              trailing: Icon(
                Icons.chevron_right,
                color: kPrimaryColor,
              ),
            ),
            ListTile(
              title: Text('Como altero a minha senha?'),
              subtitle: Text('Seus dados de acesso'),
              trailing: Icon(
                Icons.chevron_right,
                color: kPrimaryColor,
              ),
            ),
            ListTile(
                title: Text('Como marcar uma consulta?'),
                subtitle: Text('Saúde'),
                trailing: Icon(
                  Icons.chevron_right,
                  color: kPrimaryColor,
                )),
          ],
        ),
      ),
    );
  }
}
