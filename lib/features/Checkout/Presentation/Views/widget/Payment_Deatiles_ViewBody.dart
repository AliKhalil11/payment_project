// ignore_for_file: unused_local_variable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Success_view.dart';
import 'Custom_Button.dart';
import 'Payment_Methods_ListView.dart';
import 'custom_credit_card.dart';

class PaymentDeatilesViewBody extends StatefulWidget {
  const PaymentDeatilesViewBody({super.key});

  @override
  State<PaymentDeatilesViewBody> createState() =>
      _PaymentDeatilesViewBodyState();
}

class _PaymentDeatilesViewBodyState extends State<PaymentDeatilesViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
            child: CustomButton(
              title: 'Pay',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const SuccessView();
                  }));
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          )),
        ),
      ],
    );
  }
}
