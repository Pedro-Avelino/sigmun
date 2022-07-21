import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class AddressProfilePage extends StatefulWidget {
  AddressProfilePage({Key? key}) : super(key: key);

  @override
  _AddressProfilePageState createState() => _AddressProfilePageState();
}

class _AddressProfilePageState extends NyState<AddressProfilePage> {
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
              Text('Alterar endereço cadastrado',
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 50),
              TextFormField(
                cursorColor: kPrimaryColor,
                initialValue: '59631450',
                decoration: InputDecoration(
                  labelText: 'CEP',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              ),
              TextFormField(
                cursorColor: kPrimaryColor,
                initialValue: 'Joaquim Afonso',
                decoration: InputDecoration(
                  labelText: 'Rua',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              ),
              TextFormField(
                cursorColor: kPrimaryColor,
                initialValue: 'Planalto 13 de Maio',
                decoration: InputDecoration(
                  labelText: 'Bairro',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              ),
              TextFormField(
                cursorColor: kPrimaryColor,
                initialValue: '08',
                decoration: InputDecoration(
                  labelText: 'Número',
                  labelStyle: TextStyle(
                    color: kPrimaryColor,
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
                  showToast(
                      title: 'SUCESSO',
                      description: 'ENDEREÇO ALTERADO COM SUCESSO.');
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
