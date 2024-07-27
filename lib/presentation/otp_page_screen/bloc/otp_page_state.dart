part of 'otp_page_bloc.dart';

abstract class OtpPageState extends Equatable {
  const OtpPageState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

class OtpPageInitial extends OtpPageState {
  const OtpPageInitial(super.duration);

  @override
  String toString() => 'TimerInitial {duration : $duration}';
}

class TimerRunInProgress extends OtpPageState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

class TimerRunComplete extends OtpPageState {
  const TimerRunComplete() : super(0);
}

class OTPVerified extends OtpPageState {
  const OTPVerified() : super(0);
}

class IncorrectOTP extends OtpPageState {
  const IncorrectOTP() : super(0);
}

class NavigateBack extends OtpPageState {
  NavigateBack() : super(0);
}
