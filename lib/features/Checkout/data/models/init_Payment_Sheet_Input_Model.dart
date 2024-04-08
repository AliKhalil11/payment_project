// ignore_for_file: file_names

class InitPaymentSheetInputModel {
  final String clientsecret;
  final String customerId;
  final String ephemeralKeySecert;
  InitPaymentSheetInputModel(
      {required this.clientsecret,
      required this.customerId,
      required this.ephemeralKeySecert});
}
