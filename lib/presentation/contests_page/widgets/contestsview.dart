import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/contests_page/bloc/contests_bloc.dart';
import 'package:crick11/presentation/contests_page/widgets/contests_item_widget.dart';
import 'package:crick11/presentation/contests_page/widgets/my_teams_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/ContestsModel.dart';

class ShowContests extends StatelessWidget {
  final ContestCardModel Contestcard;
  final ContestsBloc _contestsBloc = ContestsBloc();

  ShowContests({super.key, required this.Contestcard});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContestsBloc, ContestsState>(
      bloc: _contestsBloc,
      listener: (context, state) {
        if (state is NavigateToContestDetails) {
          Navigator.pushNamed(
            context,
            AppRoutes.contestsDetailsScreen,
          );
        }
      },
      builder: (context, state) {
        return ContestsItemWidget(
          contest_type: Contestcard.contest_type,
          prize_pool: Contestcard.prize_pool,
          entry_price: Contestcard.entry_fee,
          total_spots: Contestcard.total_slots,
          first_prize: Contestcard.first_prize,
          spots_left: Contestcard.left_slots,
          percentage: Contestcard.percentage,
          number_of_teams: Contestcard.number_of_teams,
          onTapColumnmega: () {
            _contestsBloc.add(contestDetailsNavigation(a: '', b: ''));
          },
        );
      },
    );
  }
}

class Showmyteams extends StatelessWidget {
  final MyTeamsCardModel Myteamscard;
  final ContestsBloc _contestsBloc = ContestsBloc();

  Showmyteams({super.key, required this.Myteamscard});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContestsBloc, ContestsState>(
      bloc: _contestsBloc,
      listener: (context, state) {
        if (state is NavigateToContestDetails) {
          Navigator.pushNamed(
            context,
            AppRoutes.contestsDetailsScreen,
          );
        }
      },
      builder: (context, state) {
        return MyTeamsWidget(
          team_name: Myteamscard.team_name,
          team1_players: Myteamscard.team_1,
          team2_players: Myteamscard.team_2,
          contest_team1: Myteamscard.team1_name,
          contest_team2: Myteamscard.team2_name,
          team_captain: Myteamscard.team_captain,
          team_vice_captain: Myteamscard.team_vicecaptain,
          WK: Myteamscard.WK,
          AR: Myteamscard.AR,
          Batsmen: Myteamscard.Bats,
          Bowls: Myteamscard.Bowls,
          edit_team: () {},
          preview_team: () {},
        );
      },
    );
  }
}

class AllContests extends StatelessWidget {
  final ContestsModel ContestModel;
  const AllContests({super.key, required this.ContestModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: ContestModel.contestcards.length,
          itemBuilder: (context, index) {
            return ShowContests(Contestcard: ContestModel.contestcards[index]);
          }),
    );
  }
}

class MyContests extends StatelessWidget {
  final ContestsModel ContestModel;
  const MyContests({super.key, required this.ContestModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: ContestModel.mycontestcards.length,
          itemBuilder: (context, index) {
            if (ContestModel.mycontestcards[index].participating == true) {
              return ShowContests(
                  Contestcard: ContestModel.mycontestcards[index]);
            }
            return null;
          }),
    );
  }
}

class Myteams extends StatelessWidget {
  final ContestsModel ContestModel;
  const Myteams({super.key, required this.ContestModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: ContestModel.myteamscards.length,
          itemBuilder: (context, index) {
            return Showmyteams(Myteamscard: ContestModel.myteamscards[index]);
          }),
    );
  }
}
