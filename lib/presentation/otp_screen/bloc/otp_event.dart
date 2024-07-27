part of 'otp_bloc.dart';

abstract class OtpEvent extends Equatable {
  const OtpEvent();

  @override
  List<Object> get props => [];
}

class VerifyOTP extends OtpEvent {
  final String otp;

  VerifyOTP(this.otp);
}

class BackButtonPressed extends OtpEvent {}
