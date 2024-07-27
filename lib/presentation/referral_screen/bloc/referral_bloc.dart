import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'referral_event.dart';
part 'referral_state.dart';

class ReferralBloc extends Bloc<ReferralEvent, ReferralState> {
  ReferralBloc() : super(ReferralInitial()) {
    on<HomeNavigation>(
      (event, emit) {
        emit(NavigateToHome());
      },
    );
    on<MyMatchesNavigation>(
      (event, emit) {
        print("My matches");
        emit(NavigateToMyMatches());
      },
    );
    on<ReferralNavigation>(
      (event, emit) {
        emit(NavigateToReferral());
      },
    );
    on<LearderboardNavigation>(
      (event, emit) {
        emit(NavigateToLearderboard());
      },
    );
    on<SocialNavigation>(
      (event, emit) {
        emit(NavigateToSocial());
      },
    );
  }
}
