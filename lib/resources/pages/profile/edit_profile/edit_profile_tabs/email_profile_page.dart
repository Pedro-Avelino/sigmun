import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class EmailProfilePage extends StatefulWidget {
  EmailProfilePage({Key? key}) : super(key: key);
  
  @override
  _EmailProfilePageState createState() => _EmailProfilePageState();
}

class _EmailProfilePageState extends NyState<EmailProfilePage> {

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
