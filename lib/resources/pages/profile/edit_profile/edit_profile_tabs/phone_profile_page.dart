import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class PhoneProfilePage extends StatefulWidget {
  PhoneProfilePage({Key? key}) : super(key: key);

  @override
  _PhoneProfilePageState createState() => _PhoneProfilePageState();
}

class _PhoneProfilePageState extends NyState<PhoneProfilePage> {
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
              Text('Alterar número de telefone',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 50),
              TextFormField(
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  labelText: 'Telefone',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              ),
              SizedBox(height: 30),
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
                      description: 'TELEFONE ALTERADO COM SUCESSO.');
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
