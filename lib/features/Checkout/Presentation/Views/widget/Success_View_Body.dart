import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Check_Icone.dart';
import 'Custom_Dashe_Line.dart';
import 'Success_Card.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Stack(clipBehavior: Clip.none, children: [
        const SuccessCard(),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * .2 + 20,
          left: 20 + 8,
          right: 20 + 8,
          child: const CustomDashedLine(),
        ),
        Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )),
        Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )),
        const Positioned(left: 0, right: 0, top: -50, child: CheckIcon()),
      ]),
    );
  }
}
