part of 'contest_details_bloc.dart';

abstract class ContestDetailsEvent {
  const ContestDetailsEvent();
}

class BackNavigaton extends ContestDetailsEvent {}

class JoinNow extends ContestDetailsEvent {}
