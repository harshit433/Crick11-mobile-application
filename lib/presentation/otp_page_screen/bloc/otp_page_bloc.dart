import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../ticker.dart';

part 'otp_page_event.dart';
part 'otp_page_state.dart';

class OtpPageBloc extends Bloc<OtpPageEvent, OtpPageState> {
  final Ticker _ticker;

  static const int _duration = 20;

  StreamSubscription<int>? _tickerSubscription;

  OtpPageBloc({required Ticker ticker})
      : _ticker = ticker,
        super(OtpPageInitial(_duration)) {
    on<TimerStarted>(_onStarted);
    on<_TimerTicked>(_onTicked);
    on<TimerReset>(_onReset);

    on<VerifyOTP>(
      (event, emit) {
        if (OTP_verification(event.otp)) {
          emit(OTPVerified());
        } else {
          emit(IncorrectOTP());
        }
      },
    );

    on<BackButtonPressed>(
      (event, emit) {
        emit(NavigateBack());
      },
    );
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<OtpPageState> emit) {
    emit(TimerRunInProgress(event.duration));
    print("Start duration");
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTicked(duration: duration)));
  }

  void _onTicked(_TimerTicked event, Emitter<OtpPageState> emit) {
    emit(event.duration > 0
        ? TimerRunInProgress(event.duration)
        : TimerRunComplete());
  }

  void _onReset(TimerReset event, Emitter<OtpPageState> emit) {
    _tickerSubscription?.cancel();
    emit(const OtpPageInitial(_duration));
  }

  bool OTP_verification(String opt_code) {
    if (opt_code == "12345") {
      return true;
    } else {
      return false;
    }
  }
}
