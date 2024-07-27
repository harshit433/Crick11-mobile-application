part of 'referral_bloc.dart';

abstract class ReferralState extends Equatable {
  const ReferralState();

  @override
  List<Object> get props => [];
}

class ReferralInitial extends ReferralState {}

class NavigateToHome extends ReferralState {}

class NavigateToMyMatches extends ReferralState {}

class NavigateToReferral extends ReferralState {}

class NavigateToLearderboard extends ReferralState {}

class NavigateToSocial extends ReferralState {}
