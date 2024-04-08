import 'package:flutter/widgets.dart';

import '../../../../../Core/Utils/Styles.dart';

class OrderInformation extends StatelessWidget {
  const OrderInformation({super.key, required this.text, required this.text1});
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          text1,
          style: Styles.style18,
        )
      ],
    );
  }
}
