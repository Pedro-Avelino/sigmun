import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class PhoneProfilePage extends StatefulWidget {
  PhoneProfilePage({Key? key}) : super(key: key);
  
  @override
  _PhoneProfilePageState createState() => _PhoneProfilePageState();
}

class _PhoneProfilePageState extends NyState<PhoneProfilePage> {

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
         child: Container(),
      ),
    );
  }
}
