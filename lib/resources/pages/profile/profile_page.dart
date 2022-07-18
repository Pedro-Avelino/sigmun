import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/profile_controller.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';
import 'package:sigmun/resources/pages/profile/components/profile_menu.dart';
import 'package:sigmun/routes/router.dart';
import 'package:sigmun/resources/shared/label_button.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class ProfilePage extends NyStatefulWidget {
  final ProfileController controller = ProfileController();

  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends NyState<ProfilePage> {
  @override
  init() async {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            leading: IconButton(
              icon: Icon(Icons.close),
              color: kPrimaryColor,
              iconSize: 30,
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'public/assets/images/profile_icon.png',
                    height: 100,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Pepeu',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '132.662.824-00',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    'pedroavelino@alu.uern.br',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(height: 1, color: kLineColor),
          Column(
            children: [
              ProfileMenu(
                'Editar dados do Perfil',
                Icons.person_outline,
                onTap: () {},
              ),
              ProfileMenu('Notificações', Icons.notifications_outlined),
              ProfileMenu('Segurança', Icons.shield_outlined),
              ProfileMenu('Ajuda', Icons.help_outline),
              ProfileMenu('Fale Conosco', Icons.ring_volume),
              ProfileMenu('Sobre', Icons.description_outlined),
              ProfileMenu('Sair do Aplicativo', Icons.logout),
            ],
          ),
          Container(height: 1, color: kLineColor),
        ],
      ),
    );
  }
}
