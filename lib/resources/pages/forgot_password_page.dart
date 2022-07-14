import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../app/controllers/forgot_password_controller.dart';

class ForgotPasswordPage extends NyStatefulWidget {
  final ForgotPasswordController controller = ForgotPasswordController();

  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends NyState<ForgotPasswordPage> {
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
        title: Text('Recuperação de Senha'),
        backgroundColor: Color(0xFF3980C3),
        foregroundColor: Colors.white,
      ),
      body: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("public/assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Para recuperar sua senha, informe seu endereço de e-mail que lhe enviaremos um link para a alteração da senha.",
                    style: textTheme.bodyText1,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined),
                      labelStyle: TextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      showToast(
                          title: 'SUCESSO',
                          description:
                              'EMAIL DE RECUPERAÇÃO ENVIADO COM SUCESSO.');
                    },
                    icon: Icon(Icons.login, size: 22),
                    style: ButtonStyle(),
                    label: Text("ENVIAR"),
                  ),
                ]),
          )),
    );
  }
}
