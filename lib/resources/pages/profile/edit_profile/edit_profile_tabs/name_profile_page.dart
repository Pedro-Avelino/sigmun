import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class NameProfilePage extends StatefulWidget {
  NameProfilePage({Key? key}) : super(key: key);

  @override
  _NameProfilePageState createState() => _NameProfilePageState();
}

class _NameProfilePageState extends NyState<NameProfilePage> {
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
        titleTextStyle: TextStyle(color: kPrimaryColor, fontSize: 20),
        leading: IconButton(
          icon: Icon(Icons.close),
          color: kPrimaryColor,
          iconSize: 30,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Alterar nome do perfil',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 50),
              TextFormField(
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  labelText: 'Digite seu nome completo',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  helperText:
                      'Utilize seu nome completo para identificar seu perfil.',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 120.0),
                  textStyle: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  showToast(
                      title: 'SUCESSO',
                      description: 'NOME ALTERADO COM SUCESSO.');
                },
                child: Text('Confirmar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
