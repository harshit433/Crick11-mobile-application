import 'package:bloc/bloc.dart';

part 'my_matches_event.dart';
part 'my_matches_state.dart';

class MyMatchesBloc extends Bloc<MyMatchesEvent, MyMatchesState> {
  MyMatchesBloc() : super(MyMatchesInitial()) {
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

    on<LiveMatchNavigation>(
      (event, emit) {
        emit(NavigateToLiveMatch());
      },
    );
    on<UpcomingMatchNavigation>(
      (event, emit) {
        emit(NavigateToUpcomingMatch());
      },
    );
    on<ChangeMatchCategory>(
      (event, emit) {
        emit(MatchCategoryChanged(new_category: event.match_category));
      },
    );
  }
}
