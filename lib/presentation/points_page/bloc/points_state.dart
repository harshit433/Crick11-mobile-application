part of 'points_bloc.dart';

abstract class PointsState {
  const PointsState();
}

class PointsInitial extends PointsState {}

class NavigateToBack extends PointsState {}
