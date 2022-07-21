import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class EmailProfilePage extends StatefulWidget {
  EmailProfilePage({Key? key}) : super(key: key);

  @override
  _EmailProfilePageState createState() => _EmailProfilePageState();
}

class _EmailProfilePageState extends NyState<EmailProfilePage> {
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
              Text('Digite seu novo endereço de e-mail',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 50),
              TextFormField(
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  helperText:
                      'Será enviado um link de confirmação no seu email cadastrado.',
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
                  padding: EdgeInsets.symmetric(horizontal: 140.0),
                  textStyle: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  showToast(
                      title: 'SUCESSO',
                      description: 'EMAIL ENVIADO COM SUCESSO.');
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
