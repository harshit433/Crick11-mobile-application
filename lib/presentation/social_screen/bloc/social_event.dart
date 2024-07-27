part of 'social_bloc.dart';

abstract class SocialEvent extends Equatable {
  const SocialEvent();

  @override
  List<Object> get props => [];
}

class HomeNavigation extends SocialEvent {}

class MyMatchesNavigation extends SocialEvent {}

class ReferralNavigation extends SocialEvent {}

class LearderboardNavigation extends SocialEvent {}

class SocialNavigation extends SocialEvent {}
