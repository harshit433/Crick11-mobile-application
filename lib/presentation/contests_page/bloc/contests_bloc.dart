import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:crick11/data/events.dart';
import 'package:crick11/data/teams.dart';
import 'package:equatable/equatable.dart';

import '../../../data/contests.dart';
import '../models/ContestsModel.dart';
import '../models/arguments.dart';

part 'contests_event.dart';
part 'contests_state.dart';

class ContestsBloc extends Bloc<ContestsEvent, ContestsState> {
  ContestsBloc() : super(ContestsInitial()) {
    on<ContestPageInitial>(contestpageinitialstate);
    on<backNavigation>(
      (event, emit) {
        emit(NavigateBack());
      },
    );
    on<walletNavigation>(
      (event, emit) {
        emit(NavigateToWallet());
      },
    );
    on<contestDetailsNavigation>(
      (event, emit) {
        emit(NavigateToContestDetails(a: event.a, b: event.b));
      },
    );
    on<teamPreviewNavigation>(
      (event, emit) {
        emit(NavigateToTeamPreview());
      },
    );
    on<teamEditNavigation>(
      (event, emit) {
        emit(NavigateToTeamEdit());
      },
    );
  }

  FutureOr<void> contestpageinitialstate(
      ContestPageInitial event, Emitter<ContestsState> emit) async {
    emit(ContestLoadingState());
    print(event.event_id);
    await Future.delayed(const Duration(seconds: 2));
    print(event.event_id);
    emit(ContestLoadedSuccessState(
        team_1: events
            .where((element) => (element['event_id'] == event.event_id))
            .elementAt(0)['team1_name'] as String,
        team_2: events
            .where((element) => (element['event_id'] == event.event_id))
            .elementAt(0)['team2_name'] as String,
        date: events
            .where((element) => (element['event_id'] == event.event_id))
            .elementAt(0)['date&time'] as DateTime,
        contest: ContestsModel([
          for (var i in contests
              .where((element) => element['event_id'] == event.event_id))
            ContestCardModel(
                i['contest_type'] as String,
                i['entry_fee'] as int,
                i['prize_pool'] as String,
                i['spots_filled'] as int,
                i['total_spots'] as int,
                i['first_prize'] as String,
                i['percentage'] as int,
                i['number_of_teams'] as int,
                i['participation'] as bool)
        ], [
          for (var i in contests.where((element) =>
              element['participation'] as bool == true &&
              element['event_id'] == event.event_id))
            ContestCardModel(
                i['contest_type'] as String,
                i['entry_fee'] as int,
                i['prize_pool'] as String,
                i['spots_filled'] as int,
                i['total_spots'] as int,
                i['first_prize'] as String,
                i['percentage'] as int,
                i['number_of_teams'] as int,
                i['participation'] as bool)
        ], [
          for (var i in teams
              .where((element) => element['event_id'] == event.event_id))
            MyTeamsCardModel(
                i['name'] as String,
                events
                    .where((element) => element['event_id'] == event.event_id)
                    .elementAt(0)['team1_name'] as String,
                events
                    .where((element) => element['event_id'] == event.event_id)
                    .elementAt(0)['team2_name'] as String,
                i['captain'] as String,
                i['vice_captain'] as String,
                i['team1'] as int,
                i['team2'] as int,
                i['WK'] as int,
                i['AR'] as int,
                i['Bats'] as int,
                i['Bowl'] as int)
        ])));
  }
}
