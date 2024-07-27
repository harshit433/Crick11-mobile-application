import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc() : super(OtpInitial()) {
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
  bool OTP_verification(String opt_code) {
    if (opt_code == "12345") {
      return true;
    } else {
      return false;
    }
  }
}
