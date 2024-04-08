import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.onTap, required this.title, this.isLoding = false});
  final void Function()? onTap;
  final String title;
  final bool isLoding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: MediaQuery.of(context).size.height * 0.10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: const Color(0xFF34A853),
      onPressed: onTap,
      child: isLoding
          ? CircularProgressIndicator()
          : Text(
              title,
              style: Styles.style22,
              textAlign: TextAlign.center,
            ),
    );
  }
}
