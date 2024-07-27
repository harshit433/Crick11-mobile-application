part of 'contests_bloc.dart';

abstract class ContestsState {
  ContestPageArguments? arguments;
  ContestsModel? contests;
  ContestsState({this.arguments, this.contests});
}

class ContestsInitial extends ContestsState {}

class ContestLoadingState extends ContestsState {}

class ContestLoadedSuccessState extends ContestsState {
  //final pageContestModel contest;
  final String team_1;
  final String team_2;
  DateTime date;

  final ContestsModel contest;

  ContestLoadedSuccessState({
    required this.date,
    required this.team_1,
    required this.team_2,
    required this.contest,
  }) : super(
            arguments: ContestPageArguments(
                date: date, team_1: team_1, team_2: team_2),
            contests: contest);
}

class ContestErrorState extends ContestsState {}

class NavigateBack extends ContestsState {}

class NavigateToWallet extends ContestsState {}

class NavigateToContestDetails extends ContestsState {
  final String a;
  final String b;
  NavigateToContestDetails({
    required this.a,
    required this.b,
  });
}

class NavigateToTeamPreview extends ContestsState {}

class NavigateToTeamEdit extends ContestsState {}
