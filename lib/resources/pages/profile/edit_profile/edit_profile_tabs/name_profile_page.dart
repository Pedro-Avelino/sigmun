import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class NameProfilePage extends StatefulWidget {
  NameProfilePage({Key? key}) : super(key: key);
  
  @override
  _NameProfilePageState createState() => _NameProfilePageState();
}

class _NameProfilePageState extends NyState<NameProfilePage> {

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
