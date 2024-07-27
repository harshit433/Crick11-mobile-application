part of 'teamcreation_bloc.dart';

abstract class TeamcreationEvent {
  const TeamcreationEvent();
}

class BackNavigation extends TeamcreationEvent {}

class Continue extends TeamcreationEvent {}

class Preview extends TeamcreationEvent {}

class Edit extends TeamcreationEvent {}

class Create extends TeamcreationEvent {}

class ChangePlayerCategory extends TeamcreationEvent {
  final int player_category;

  ChangePlayerCategory({
    required this.player_category,
  });
}
