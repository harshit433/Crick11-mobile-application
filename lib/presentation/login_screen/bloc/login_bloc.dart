import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginPageInitial()) {
    on<LoginClickedEvent>((event, emit) {
      String phone = "+" + event.code + event.phone;
      if (verifyPhone(phone)) {
        emit(NavigateToOTPPage(
            phonenumber: "+" + event.code + "  " + event.phone));
      } else {
        emit(PhoneVerificationFailed());
      }
    });
    on<BackButtonClickedEvent>((event, emit) {
      emit(NavigateBack());
    });
  }

  bool verifyPhone(String number) {
    print(number);
    return RegExp(
            r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)')
        .hasMatch(number);
  }
}
