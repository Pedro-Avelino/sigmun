import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class SecurityNovaSenhaPage extends StatefulWidget {
  SecurityNovaSenhaPage({Key? key}) : super(key: key);

  @override
  _SecurityNovaSenhaPageState createState() => _SecurityNovaSenhaPageState();
}

class _SecurityNovaSenhaPageState extends NyState<SecurityNovaSenhaPage> {
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Digite sua nova senha',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 50),
              TextFormField(
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  labelText: 'Digite sua nova senha',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  helperText:
                      'Sua nova senha deve conter no minimo 6 caracteres',
                  suffixIcon: Icon(
                    Icons.visibility,
                  ),
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
                  padding: EdgeInsets.symmetric(horizontal: 100.0),
                  textStyle: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  showToast(
                      title: 'SUCESSO',
                      description: 'SENHA ALTERADO COM SUCESSO.');
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
