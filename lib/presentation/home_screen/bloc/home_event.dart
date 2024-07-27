part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class HomePageInitial extends HomeEvent {}

class HomeNavigation extends HomeEvent {}

class MyMatchesNavigation extends HomeEvent {}

class ReferralNavigation extends HomeEvent {}

class LearderboardNavigation extends HomeEvent {}

class SocialNavigation extends HomeEvent {}

class KYCNavigation extends HomeEvent {}

class WalletNavigation extends HomeEvent {}

class ContactusNavigation extends HomeEvent {}

class Logout extends HomeEvent {}

class ContestNavigation extends HomeEvent {
  final int event_id;

  ContestNavigation({
    required this.event_id,
  });
}
