import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_project/features/Checkout/Presentation/manager/cubit/payment_cubit.dart';
import 'package:payment_project/features/Checkout/data/models/payment_intent_input_model.dart';
import '../Success_view.dart';
import 'Custom_Button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const SuccessView();
          }));
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(
            content: Text(state.errMessage),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
                    amount: "100",
                    currency: "USD",
                    customerid: 'cus_Pt8eDrJgk4ag2x');
            BlocProvider.of<PaymentCubit>(context)
                .makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
          isLoding: state is PaymentLoding ? true : false,
          title: 'Continue',
        );
      },
    );
  }
}
