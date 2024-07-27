import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'social_event.dart';
part 'social_state.dart';

class SocialBloc extends Bloc<SocialEvent, SocialState> {
  SocialBloc() : super(SocialInitial()) {
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
