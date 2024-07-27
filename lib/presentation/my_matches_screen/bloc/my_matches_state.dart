part of 'my_matches_bloc.dart';

abstract class MyMatchesState {
  final int category;
  const MyMatchesState({this.category = 1});
}

class MyMatchesInitial extends MyMatchesState {}

class NavigateToHome extends MyMatchesState {}

class NavigateToMyMatches extends MyMatchesState {}

class NavigateToReferral extends MyMatchesState {}

class NavigateToLearderboard extends MyMatchesState {}

class NavigateToSocial extends MyMatchesState {}

class NavigateToLiveMatch extends MyMatchesState {}

class NavigateToUpcomingMatch extends MyMatchesState {}

class MatchCategoryChanged extends MyMatchesState {
  final int new_category;

  MatchCategoryChanged({
    required this.new_category,
  }) : super(category: new_category);
}
