import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class AddressProfilePage extends StatefulWidget {
  AddressProfilePage({Key? key}) : super(key: key);
  
  @override
  _AddressProfilePageState createState() => _AddressProfilePageState();
}

class _AddressProfilePageState extends NyState<AddressProfilePage> {

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
