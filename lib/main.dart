import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_project/Core/Utils/Api_keys.dart';
import 'features/Checkout/Presentation/Views/Mycart_View.dart';

void main() {
  Stripe.publishableKey = ApiKeys.puplishablekey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
