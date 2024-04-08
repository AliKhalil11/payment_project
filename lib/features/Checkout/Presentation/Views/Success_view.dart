import 'package:flutter/material.dart';
import 'package:payment_project/Core/Utils/Custom_App_Bar.dart';
import 'widget/Success_View_Body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: App_Bar(title: ''),
      body: Transform.translate(
        offset: Offset(0,-20),
        child: SuccessViewBody()),
    );
  }
}