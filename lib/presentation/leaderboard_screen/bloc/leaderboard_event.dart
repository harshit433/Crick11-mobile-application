part of 'leaderboard_bloc.dart';

abstract class LeaderboardEvent {
  const LeaderboardEvent();
}

class HomeNavigation extends LeaderboardEvent {}

class MyMatchesNavigation extends LeaderboardEvent {}

class ReferralNavigation extends LeaderboardEvent {}

class LearderboardNavigation extends LeaderboardEvent {}

class SocialNavigation extends LeaderboardEvent {}

class ChangeTimeLimit extends LeaderboardEvent {
  final int time_limit;

  ChangeTimeLimit({
    required this.time_limit,
  });
}
