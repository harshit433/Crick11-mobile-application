import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../bloc/my_matches_bloc.dart';
import 'live_match.dart';

class Showlivematches extends StatelessWidget {
  final String event_type;
  final MyMatchesBloc _matchesBloc = MyMatchesBloc();
  Showlivematches({required this.event_type});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyMatchesBloc, MyMatchesState>(
      bloc: _matchesBloc,
      listener: (context, state) {
        if (state is NavigateToLiveMatch) {
          Navigator.pushNamed(context, AppRoutes.pointsPage);
        }
      },
      builder: (context, state) {
        return Padding(
          padding: getPadding(left: 28, right: 28, bottom: 10),
          child: ListView(scrollDirection: Axis.vertical, children: [
            SizedBox(
              height: getVerticalSize(21),
            ),
            LiveMatchWidget(
              contest_type: "Mega",
              entry_price: 50,
              winning_pool: '5 Lakhs',
              first_prize: '2 Lakhs',
              percentage: 100,
              team1: 'RCB',
              team2: "HYD",
              run_team1: 116,
              wickets_team1: 1,
              overs_team1: 20.0,
              run_team2: 110,
              wickets_team2: 6,
              overs_team2: 16.0,
              ontap: () {
                _matchesBloc.add(LiveMatchNavigation());
              },
            ),
          ]),
        );
      },
    );
  }
}
