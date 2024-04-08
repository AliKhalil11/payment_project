import 'package:flutter/material.dart';
import 'package:payment_project/Core/Utils/Styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Success_Card_Type.dart';
import 'Success_Order_Information.dart';
import 'Text_Total.dart';

class SuccessCard extends StatelessWidget {
  const SuccessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //or can use:
      // height: MediaQuery.of(context).size.height*0.8,
      // width: MediaQuery.of(context).size.width*0.8,
      decoration: ShapeDecoration(
          color: const Color(0xFFD9D9D9),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(top: 66,left: 22,right: 22),
                child: Column(
                  children: [
                    Text("Thank you!",style: Styles.style25,),
                      const SizedBox(height: 5,),
                    Text("Your transaction was successful",style:Styles.style20),
                    const SizedBox(height: 42,),
                   const Success_OrderInformation(text: 'Date', text1: '01/24/2023',),
                   const SizedBox(height: 20,),
                   const Success_OrderInformation(text: 'Time', text1: '10:15 AM',),
                   const SizedBox(height: 20,),
                   const Success_OrderInformation(text: 'To', text1: 'Sam Louis',),
                    const Divider(
                height: 50,
                endIndent: 22,
                indent: 22,
              ),
                const TextTotal(
                text: 'Total',
                text1: '\$50.97',
              ),
               const SizedBox(height: 42,),
            const  SuccessCardType(),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const  Icon(FontAwesomeIcons.barcode,size:100,),
              
                Container(
                  width: MediaQuery.sizeOf(context).width*0.23,
                  height: MediaQuery.sizeOf(context).height*0.07,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:const BorderSide(width: 1.50,color: Color(0xFF34A853),
                      ),
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                  child: Center(child: Text("PAID",style: Styles.style24.copyWith(color:const Color(0xFF34A853)),textAlign: TextAlign.center,)),
                )
              ],
            )
                  ],
                ),
              ),
    );
  }
}
