import 'package:flutter/material.dart';

import '../../../../Core/Utils/Custom_App_Bar.dart';
import 'widget/Payment_Deatiles_ViewBody.dart';

class PaymentDeatailsView extends StatelessWidget {
  const PaymentDeatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar(title: 'Payment Details'),
      body: const PaymentDeatilesViewBody(),
    );
  }
}
