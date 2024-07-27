part of 'contest_details_bloc.dart';

abstract class ContestDetailsState {
  const ContestDetailsState();
}

class ContestDetailsInitial extends ContestDetailsState {}

class NavigateToBack extends ContestDetailsState {}

class JoinandCreateTeam extends ContestDetailsState {}
