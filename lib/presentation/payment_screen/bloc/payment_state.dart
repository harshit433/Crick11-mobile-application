part of 'payment_bloc.dart';

abstract class PaymentState {
  final int amount;
  final int coupon;
  const PaymentState({this.coupon = 1, this.amount = 1});
}

class PaymentInitial extends PaymentState {}

class NavigateToBack extends PaymentState {}

class ContinueToNext extends PaymentState {}

class SelectedCoupon extends PaymentState {
  final int new_coupon_category;
  final int new_amount_category;

  SelectedCoupon(
      {required this.new_coupon_category, required this.new_amount_category})
      : super(coupon: new_coupon_category, amount: new_amount_category);
}

class Promocode extends PaymentState {}
