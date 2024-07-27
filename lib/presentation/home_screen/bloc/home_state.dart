part of 'home_bloc.dart';

abstract class HomeState {
  HomepageEventsModel? contests;
  HomeState({this.contests});
}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {
  final HomepageEventsModel contest;
  HomeLoadedSuccessState({
    required this.contest,
  }) : super(contests: contest);
}

class HomeErrorState extends HomeState {}

class NavigateToHome extends HomeState {}

class NavigateToMyMatches extends HomeState {}

class NavigateToReferral extends HomeState {}

class NavigateToLearderboard extends HomeState {}

class NavigateToSocial extends HomeState {}

class NavigateToKYC extends HomeState {}

class NavigateToWallet extends HomeState {}

class Contactus extends HomeState {}

class LoggedOut extends HomeState {}

class NavigateToContests extends HomeState {
  final int event_id;

  NavigateToContests({
    required this.event_id,
  });
}
