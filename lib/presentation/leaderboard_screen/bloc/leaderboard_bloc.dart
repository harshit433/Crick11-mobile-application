import 'package:bloc/bloc.dart';

part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc() : super(LeaderboardInitial()) {
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
    on<ChangeTimeLimit>(
      (event, emit) {
        emit(TimeLimitChanged(new_time_limit: event.time_limit));
      },
    );
  }
}
