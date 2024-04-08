import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../Core/Utils/Styles.dart';

class SuccessCardType extends StatelessWidget {
  const SuccessCardType({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.09,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
          title: Text(
            "Credit Card",
            style: Styles.style18bold,
          ),
          subtitle: Text(
            "Mastercard **78",
            style: Styles.style18,
          ),
          leading: SvgPicture.asset("assets/images/logo.svg")),
    );
  }
}
