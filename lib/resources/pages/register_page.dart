import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../app/controllers/register_controller.dart';

class RegisterPage extends NyStatefulWidget {
  final RegisterController controller = RegisterController();

  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends NyState<RegisterPage> {
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
        title: Text('Solicitar Novo Acesso'),
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
                  Image.asset('public/assets/images/logo_pmm_nova.png',
                      width: 150, height: 150),
                  Text(
                    getEnv("APP_NAME"),
                    style: textTheme.headline2,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'CPF',
                      prefixIcon: Icon(Icons.person_outline),
                      labelStyle: TextStyle(),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: 'Data de Nascimento',
                      prefixIcon: Icon(Icons.calendar_month),
                      labelStyle: TextStyle(),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: 'Telefone',
                      prefixIcon: Icon(Icons.phone),
                      labelStyle: TextStyle(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      showToast(
                          title: 'SUCESSO',
                          description: 'CADASTRO FEITO COM SUCESSO.');
                    },
                    icon: Icon(Icons.send, size: 22),
                    style: ButtonStyle(),
                    label: Text("SOLICITAR"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /* WebViewPlus(
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (controller) {
                      controller.loadUrl("assets/web/index.html");
                    },
                    javascriptChannels: Set.from([
                      JavascriptChannel(
                          name: 'Captcha',
                          onMessageReceived: (JavascriptMessage message) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          }),
                    ]),
                  ), */
                ]),
          )),
    );
  }
}
