import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class SecuritySenhaPage extends StatefulWidget {
  SecuritySenhaPage({Key? key}) : super(key: key);

  @override
  _SecuritySenhaPageState createState() => _SecuritySenhaPageState();
}

class _SecuritySenhaPageState extends NyState<SecuritySenhaPage> {
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
          icon: Icon(Icons.chevron_left),
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
              Text('Alterar senha do aplicativo',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 50),
              TextFormField(
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  labelText: 'Digite sua senha atual',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  helperText:
                      'Essa é a senha que você usa para acessar o aplicativo',
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
                  padding: EdgeInsets.symmetric(horizontal: 120.0),
                  textStyle: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/security_nova_senha_page');
                },
                child: Text('Prosseguir'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
