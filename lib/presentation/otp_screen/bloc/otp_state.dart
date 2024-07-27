part of 'otp_bloc.dart';

abstract class OtpState extends Equatable {
  const OtpState();

  @override
  List<Object> get props => [];
}

class OtpInitial extends OtpState {}

class OTPVerified extends OtpState {
  const OTPVerified();
}

class IncorrectOTP extends OtpState {
  const IncorrectOTP();
}

class NavigateBack extends OtpState {
  NavigateBack();
}
