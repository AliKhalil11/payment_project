// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:payment_project/features/Checkout/Presentation/Views/widget/Text_Total.dart';
import 'package:payment_project/features/Checkout/Presentation/manager/cubit/payment_cubit.dart';

import 'package:payment_project/features/Checkout/data/repos/Check_repo_imp;.dart';
import '../../../../Core/Utils/Custom_App_Bar.dart';

import 'widget/Custom_Button.dart';
import 'widget/Order_Information.dart';
import 'widget/Payment_Methods_Bottom_Sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar(title: 'My Cart'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Image.asset("assets/images/1.png"),
              const SizedBox(
                height: 25,
              ),
              const OrderInformation(
                text: 'Order Subtotal',
                text1: '\$42.97',
              ),
              const SizedBox(
                height: 3,
              ),
              const OrderInformation(
                text: 'Discount',
                text1: '\$0',
              ),
              const SizedBox(
                height: 3,
              ),
              const OrderInformation(
                text: 'Shipping',
                text1: '\$20',
              ),
              const Divider(
                height: 35,
                endIndent: 22,
                indent: 22,
              ),
              const TextTotal(
                text: 'Total',
                text1: '\$50.97',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      builder: (BuildContext context) {
                        return BlocProvider(
                          create: (context) => PaymentCubit(CheckoutRepoImpl()),
                          child: const PaymentMethodsBottomSheet(),
                        );
                      });
                },
                title: 'Complete Payment',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
