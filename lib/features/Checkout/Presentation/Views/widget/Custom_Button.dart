import 'package:flutter/material.dart';

import '../../../../../Core/Utils/Styles.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.title});
  final void Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
                height: MediaQuery.of(context).size.height * 0.10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: const Color(0xFF34A853),
                onPressed:onTap,
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   return const PaymentDeatailsView();
                  // }
                  // ),
                  // );
                
                child: Text(
                  // "Complete Payment",
                  title,
                  style: Styles.style22,
                  textAlign: TextAlign.center,
                ),
              );
  }
}