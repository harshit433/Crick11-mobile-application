part of 'leaderboard_bloc.dart';

abstract class LeaderboardState {
  final int category;
  const LeaderboardState({this.category = 1});
}

class LeaderboardInitial extends LeaderboardState {}

class NavigateToHome extends LeaderboardState {}

class NavigateToMyMatches extends LeaderboardState {}

class NavigateToReferral extends LeaderboardState {}

class NavigateToLearderboard extends LeaderboardState {}

class NavigateToSocial extends LeaderboardState {}

class TimeLimitChanged extends LeaderboardState {
  final int new_time_limit;

  TimeLimitChanged({
    required this.new_time_limit,
  }) : super(category: new_time_limit);
}
