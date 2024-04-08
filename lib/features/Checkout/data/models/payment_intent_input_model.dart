class PaymentIntentInputModel{
  final String amount;
  final String currency;
  final String customerid;
  PaymentIntentInputModel({required this.customerid, required this.amount,required this.currency });

  toJson(){
    return {
      "amount":"${amount}00",
      "currency":currency,
      "customer":customerid
     
    };
  }
}