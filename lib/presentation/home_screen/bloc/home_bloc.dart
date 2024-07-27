import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../../data/events.dart';
import '../models/HomePageEventsModel.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomePageInitial>(homepageinitialstate);
    on<HomeNavigation>(
      (event, emit) {
        emit(NavigateToHome());
      },
    );
    on<MyMatchesNavigation>(
      (event, emit) {
        emit(NavigateToMyMatches());
      },
    );
    on<ReferralNavigation>(
      (event, emit) {
        emit(NavigateToReferral());
      },
    );
    on<LearderboardNavigation>(
      (event, emit) {
        emit(NavigateToLearderboard());
      },
    );
    on<SocialNavigation>(
      (event, emit) {
        emit(NavigateToSocial());
      },
    );
    on<KYCNavigation>(
      (event, emit) {
        emit(NavigateToKYC());
      },
    );
    on<WalletNavigation>(
      (event, emit) {
        emit(NavigateToWallet());
      },
    );
    on<ContactusNavigation>(
      (event, emit) {
        emit(Contactus());
      },
    );
    on<Logout>(
      (event, emit) {
        emit(LoggedOut());
      },
    );
    on<ContestNavigation>(
      (event, emit) {
        emit(NavigateToContests(event_id: event.event_id));
        emit(HomeInitial());
      },
    );
  }

  int calculateDifference(DateTime date) {
    DateTime now = DateTime.now();
    return DateTime(date.year, date.month, date.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  FutureOr<void> homepageinitialstate(
      HomePageInitial event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeLoadedSuccessState(
        contest: HomepageEventsModel(
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'Cricket') &&
                calculateDifference(element['date&time'] as DateTime) == 0)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'Kabaddi') &&
                calculateDifference(element['date&time'] as DateTime) == 0)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'Football') &&
                calculateDifference(element['date&time'] as DateTime) == 0)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'BGMI') &&
                calculateDifference(element['date&time'] as DateTime) == 0)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'COD') &&
                calculateDifference(element['date&time'] as DateTime) == 0)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'FreeFire') &&
                calculateDifference(element['date&time'] as DateTime) == 0)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'Cricket') &&
                calculateDifference(element['date&time'] as DateTime) == 1)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'Kabaddi') &&
                calculateDifference(element['date&time'] as DateTime) == 1)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'Football') &&
                calculateDifference(element['date&time'] as DateTime) == 1)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'BGMI') &&
                calculateDifference(element['date&time'] as DateTime) == 1)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'COD') &&
                calculateDifference(element['date&time'] as DateTime) == 1)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
      [
        for (var i in events.where((element) =>
            ((element['event_type'] == 'FreeFire') &&
                calculateDifference(element['date&time'] as DateTime) == 1)))
          HomepageEventsCardModel(
              i['event_id'] as int,
              i['event_type'] as String,
              i['team1_name'] as String,
              i['team2_name'] as String,
              i['event_name'] as String,
              i['date&time'] as DateTime,
              i['prize_pool'] as String),
      ],
    )));
  }
}
