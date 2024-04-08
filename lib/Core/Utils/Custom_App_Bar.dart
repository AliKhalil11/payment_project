// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'Styles.dart';

AppBar App_Bar({final String? title}) {
  return AppBar(
    // leading: InkWell(
    //   onTap:(){},
    //   child: const Icon(
    //     Icons.arrow_back_ios_new_outlined,
    //     color: Colors.black,
    //   ),
    // ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title ?? "",
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
