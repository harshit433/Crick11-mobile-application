part of 'social_bloc.dart';

abstract class SocialState extends Equatable {
  const SocialState();

  @override
  List<Object> get props => [];
}

class SocialInitial extends SocialState {}

class NavigateToHome extends SocialState {}

class NavigateToMyMatches extends SocialState {}

class NavigateToReferral extends SocialState {}

class NavigateToLearderboard extends SocialState {}

class NavigateToSocial extends SocialState {}
