part of 'otp_page_bloc.dart';

abstract class OtpPageEvent extends Equatable {
  const OtpPageEvent();

  @override
  List<Object> get props => [];
}

class TimerStarted extends OtpPageEvent {
  const TimerStarted({required this.duration});
  final int duration;
}

class TimerReset extends OtpPageEvent {
  const TimerReset();
}

class _TimerTicked extends OtpPageEvent {
  const _TimerTicked({required this.duration});
  final int duration;
}

class VerifyOTP extends OtpPageEvent {
  final String otp;

  VerifyOTP(this.otp);
}

class BackButtonPressed extends OtpPageEvent {}
