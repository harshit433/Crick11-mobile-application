part of 'referral_bloc.dart';

abstract class ReferralEvent extends Equatable {
  const ReferralEvent();

  @override
  List<Object> get props => [];
}

class HomeNavigation extends ReferralEvent {}

class MyMatchesNavigation extends ReferralEvent {}

class ReferralNavigation extends ReferralEvent {}

class LearderboardNavigation extends ReferralEvent {}

class SocialNavigation extends ReferralEvent {}
