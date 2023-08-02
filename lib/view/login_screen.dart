import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:satta_mobil/view/widget/login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: SingleChildScrollView(child: LoginCard())),
    );
  }
}