part of 'login_bloc.dart';

@immutable
abstract class LoginState {
  final String current_country_code = '+91';
}

abstract class LoginActionState extends LoginState {}

class LoginPageInitial extends LoginState {
  LoginPageInitial();
  @override
  String get current_country_code => "+91";
}

class NavigateToOTPPage extends LoginState {
  NavigateToOTPPage({
    required this.phonenumber,
  });

  final String phonenumber;
}

class NavigateBack extends LoginState {}

class PhoneVerificationFailed extends LoginState {}
