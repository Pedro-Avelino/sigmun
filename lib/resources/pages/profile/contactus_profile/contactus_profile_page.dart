import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../../../../app/controllers/contactus_profile_controller.dart';
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
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            title: Text('Email'),
            subtitle: Text('ti@prefeiturademossoro.com.br'),
            trailing: Icon(
              Icons.email_outlined,
              color: kPrimaryColor,
            ),
          ),
          ListTile(
            title: Text('Telefone'),
            subtitle: Text('(84) 3333-3333'),
            trailing: Icon(
              Icons.phone_outlined,
              color: kPrimaryColor,
            ),
          ),
          ListTile(
              title: Text('WhatsApp'),
              subtitle: Text('(84) 99999-9999'),
              trailing: Icon(
                Icons.whatsapp,
                color: kPrimaryColor,
              )),
        ],
      )),
    );
  }
}
