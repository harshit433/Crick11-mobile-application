part of 'teamcreation_bloc.dart';

abstract class TeamcreationState {
  final int category;
  const TeamcreationState({this.category = 1});
}

class TeamcreationInitial extends TeamcreationState {}

class NavigateToBack extends TeamcreationState {}

class ContinuetoNextStep extends TeamcreationState {}

class PreviewTeam extends TeamcreationState {}

class EditTeam extends TeamcreationState {}

class CreateTeam extends TeamcreationState {}

class PlayerCategoryChanged extends TeamcreationState {
  final int new_category;

  PlayerCategoryChanged({
    required this.new_category,
  }) : super(category: new_category);
}
