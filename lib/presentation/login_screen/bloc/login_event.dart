part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginClickedEvent extends LoginEvent {
  final String phone;
  final String code;

  LoginClickedEvent({
    required this.phone,
    required this.code,
  });
}

class BackButtonClickedEvent extends LoginEvent {}
