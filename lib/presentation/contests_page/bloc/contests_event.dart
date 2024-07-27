part of 'contests_bloc.dart';

abstract class ContestsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ContestPageInitial extends ContestsEvent {
  final int event_id;

  ContestPageInitial(this.event_id);
}

class backNavigation extends ContestsEvent {}

class walletNavigation extends ContestsEvent {}

class contestDetailsNavigation extends ContestsEvent {
  final String a;
  final String b;
  contestDetailsNavigation({
    required this.a,
    required this.b,
  });
}

class teamPreviewNavigation extends ContestsEvent {}

class teamEditNavigation extends ContestsEvent {}
