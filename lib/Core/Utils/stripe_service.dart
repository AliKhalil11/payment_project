import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_project/Core/Utils/Api_keys.dart';
import 'package:payment_project/Core/Utils/api_service.dart';
import 'package:payment_project/features/Checkout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payment_project/features/Checkout/data/models/init_Payment_Sheet_Input_Model.dart';
import '../../features/Checkout/data/models/payment_intent_input_model.dart';
import '../../features/Checkout/data/models/payment_intent_models/payment_intent_models.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModels> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: "https://api.stripe.com/v1/payment_intents",
        token: ApiKeys.secritkey);

    var paymentIntentModel = PaymentIntentModels.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret:initPaymentSheetInputModel.clientsecret ,
            customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKeySecert,
            customerId: initPaymentSheetInputModel.customerId,
            merchantDisplayName: "alikhalil"));
  }

  Future displsyPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModels =
        await createPaymentIntent(paymentIntentInputModel);
          var ephemeralKeyModel =
        await createEphemeralkey(customerid: paymentIntentInputModel.customerid);
        var initPaymentSheetInputModel=InitPaymentSheetInputModel(clientsecret: paymentIntentModels.clientSecret!,
         customerId: paymentIntentInputModel.customerid,
          ephemeralKeySecert: ephemeralKeyModel.secret!);
    await initPaymentSheet(
       initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displsyPaymentSheet();
  }

   Future<EphemeralKeyModel> createEphemeralkey({
    required  String customerid}) async {
    var response = await apiService.post(
        body:{
          "customer":customerid
        },
        contentType: Headers.formUrlEncodedContentType,
        url: "https://api.stripe.com/v1/ephemeral_keys",
        token: ApiKeys.secritkey,
        headers:{
         'Authorization': "Bearer ${ApiKeys.secritkey}",
          'Stripe-Version':'2023-10-16'});
        

    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }
}
