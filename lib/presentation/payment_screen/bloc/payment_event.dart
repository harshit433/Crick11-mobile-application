part of 'payment_bloc.dart';

abstract class PaymentEvent {
  const PaymentEvent();
}

class Couponbutton extends PaymentEvent {
  final int selected_coupon;
  final int selected_amount;

  Couponbutton({
    required this.selected_coupon,
    required this.selected_amount,
  });
}

class BackNavigation extends PaymentEvent {}

class ContinueNext extends PaymentEvent {}

class Recharge_amount extends PaymentEvent {}

class promocode extends PaymentEvent {}
