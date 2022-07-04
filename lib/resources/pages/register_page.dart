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
  init() async {
  
  }
  
  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SafeArea(
        child: Container()
      ),
    );
  }
}
