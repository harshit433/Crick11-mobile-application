part of 'my_matches_bloc.dart';

abstract class MyMatchesEvent {
  const MyMatchesEvent();
}

class HomeNavigation extends MyMatchesEvent {}

class MyMatchesNavigation extends MyMatchesEvent {}

class ReferralNavigation extends MyMatchesEvent {}

class LearderboardNavigation extends MyMatchesEvent {}

class SocialNavigation extends MyMatchesEvent {}

class LiveMatchNavigation extends MyMatchesEvent {}

class UpcomingMatchNavigation extends MyMatchesEvent {}

class ChangeMatchCategory extends MyMatchesEvent {
  final int match_category;

  ChangeMatchCategory({
    required this.match_category,
  });
}
