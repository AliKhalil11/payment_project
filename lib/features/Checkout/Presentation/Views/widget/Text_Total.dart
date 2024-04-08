// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:payment_project/Core/Utils/Styles.dart';

class TextTotal extends StatelessWidget {
  const TextTotal({super.key, required this.text, required this.text1});
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Styles.style24,
        ),
        const Spacer(),
        Text(
          text1,
          style: Styles.style24,
        )
      ],
    );
  }
}
