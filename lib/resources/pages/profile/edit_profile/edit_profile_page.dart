import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../../app/controllers/edit_profile_controller.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class EditProfilePage extends NyStatefulWidget {
  final EditProfileController controller = EditProfileController();

  EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends NyState<EditProfilePage> {
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
          'Editar perfil',
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
