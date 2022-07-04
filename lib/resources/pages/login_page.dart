import 'package:flutter/material.dart';
import 'package:flutter_app/app/controllers/login_controller.dart';
import 'package:flutter_app/bootstrap/helpers.dart';
import 'package:flutter_app/resources/widgets/safearea_widget.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'package:nylo_framework/theme/helper/ny_theme.dart';

class LoginPage extends NyStatefulWidget {
  final LoginController controller = LoginController();
  final String title;

  LoginPage({Key? key, required this.title}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends NyState<LoginPage> {
  @override
  init() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              Stack(
                children: [
                  Image(
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.2,
                    image: AssetImage("public/assets/images/foto_teatro.png"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF3980C3).withOpacity(0.75),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2 - 60,
                    left: MediaQuery.of(context).size.width / 2 - 75,
                    child: Image(
                      width: 150,
                      image:
                          AssetImage("public/assets/images/logo_pmm_nova.png"),
                    ),
                  ),
                ],
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Usuário',
                        prefixIcon: Icon(Icons.person_outline),
                        labelStyle: TextStyle(),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        prefixIcon: Icon(Icons.lock_outline),
                        labelStyle: TextStyle(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home_page');
                      },
                      icon: Icon(Icons.login, size: 22),
                      style: ButtonStyle(),
                      label: Text("FAZER LOGIN"),
                    ),
                    Divider(),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(
                              Icons.circle,
                              size: 8,
                              color: Colors.blueGrey,
                            ),
                            label: Text("Solicitar novo acesso"),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(Icons.circle,
                                size: 8, color: Colors.blueGrey),
                            label: Text("Esqueci minha senha"),
                          )
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton.icon(
                            onPressed: () {
                              // Respond to button press
                            },
                            icon: Icon(Icons.accessibility, size: 18),
                            label: Text("Entrar com a conta gov.br"),
                          )
                        ])
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
