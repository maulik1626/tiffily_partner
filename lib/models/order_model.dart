class Order {
  final int orderId;
  final String dateAndDay;
  final String dish; // Kathiyawadi Thali, Gujarati Thali, Punjabi Thali
  final int dishQuantity = 1;
  final String cookingInstructions = "";
  final bool cookingInstructionsAccepted = true;
  final int payableAmount;
  final double discountValue = 0;
  final bool discountApplied = false;
  final String paymentType; // COD, UPI
  final bool paymentDone;
  final String orderStatus; // Accepted, Preparing, Packed, out for Delivery
  final bool orderInProblem;
  final String orderProblemDesc = "";

  Order({
    required this.orderId,
    required this.dateAndDay,
    required this.dish,
    required this.payableAmount,
    required this.paymentType,
    required this.paymentDone,
    required this.orderStatus,
    required this.orderInProblem,
  });
}
