import 'package:bloc/bloc.dart';

part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentInitial()) {
    on<BackNavigation>((event, emit) {
      emit(NavigateToBack());
    });
    on<ContinueNext>(
      (event, emit) {
        emit(ContinueToNext());
      },
    );

    on<Couponbutton>(
      (event, emit) {
        emit(SelectedCoupon(
            new_coupon_category: event.selected_coupon,
            new_amount_category: event.selected_amount));
      },
    );
    on<promocode>(
      (event, emit) {
        emit(Promocode());
      },
    );
  }
}
