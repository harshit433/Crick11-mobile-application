import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/home_screen/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../widgets/contest_card.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/HomePageEventsModel.dart';

class ShowContests extends StatelessWidget {
  final HomepageEventsCardModel homepageeventscard;
  final HomeBloc _homeBloc = HomeBloc();

  ShowContests({super.key, required this.homepageeventscard});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: _homeBloc,
      listener: (context, state) {
        if (state is NavigateToContests) {
          Navigator.pushNamed(context, AppRoutes.contestsPage,
              arguments: [state.event_id]);
        }
      },
      builder: (context, state) {
        return Contest_card(
          prize_money: homepageeventscard.prizepool,
          event_name: homepageeventscard.eventname,
          team_1: homepageeventscard.team_1,
          team_1_logo: iplteams[homepageeventscard.team_1]?[0],
          team_2: homepageeventscard.team_2,
          team_2_logo: iplteams[homepageeventscard.team_2]?[0],
          date: DateFormat.yMMMMd('en_US').format(homepageeventscard.date),
          time: DateFormat.jm().format(homepageeventscard.date),
          bgcolor: ColorConstant.yellow100Ea,
          buttoncolor: IconButtonVariant.FillYellow200,
          ontap: () {
            _homeBloc
                .add(ContestNavigation(event_id: homepageeventscard.eventid));
          },
        );
      },
    );
  }
}

class CricketContests extends StatelessWidget {
  final HomepageEventsModel homepageEventsModel;
  const CricketContests({super.key, required this.homepageEventsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: homepageEventsModel.today_cricket.length +
              homepageEventsModel.tomorrow_cricket.length +
              2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const TodayContestText();
            } else if (index > 0 &&
                index <= homepageEventsModel.today_cricket.length) {
              return ShowContests(
                  homepageeventscard:
                      homepageEventsModel.today_cricket[index - 1]);
            } else if (index == homepageEventsModel.today_cricket.length + 1) {
              return const TomorrowContestText();
            } else {
              return ShowContests(
                  homepageeventscard: homepageEventsModel.tomorrow_cricket[
                      index - homepageEventsModel.today_cricket.length - 2]);
            }
          }),
    );
  }
}

class KabaddiContests extends StatelessWidget {
  final HomepageEventsModel homepageEventsModel;
  const KabaddiContests({super.key, required this.homepageEventsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: homepageEventsModel.today_kabaddi.length +
              homepageEventsModel.tomorrow_kabaddi.length +
              2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const TodayContestText();
            } else if (index > 0 &&
                index <= homepageEventsModel.today_kabaddi.length) {
              return ShowContests(
                  homepageeventscard:
                      homepageEventsModel.today_kabaddi[index - 1]);
            } else if (index == homepageEventsModel.today_kabaddi.length + 1) {
              return const TomorrowContestText();
            } else {
              return ShowContests(
                  homepageeventscard: homepageEventsModel.tomorrow_kabaddi[
                      index - homepageEventsModel.today_kabaddi.length - 2]);
            }
          }),
    );
  }
}

class FootballContests extends StatelessWidget {
  final HomepageEventsModel homepageEventsModel;
  const FootballContests({super.key, required this.homepageEventsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: homepageEventsModel.today_football.length +
              homepageEventsModel.tomorrow_football.length +
              2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const TodayContestText();
            } else if (index > 0 &&
                index <= homepageEventsModel.today_football.length) {
              return ShowContests(
                  homepageeventscard:
                      homepageEventsModel.today_cricket[index - 1]);
            } else if (index == homepageEventsModel.today_football.length + 1) {
              return const TomorrowContestText();
            } else {
              return ShowContests(
                  homepageeventscard: homepageEventsModel.tomorrow_football[
                      index - homepageEventsModel.today_football.length - 2]);
            }
          }),
    );
  }
}

class BGMIContests extends StatelessWidget {
  final HomepageEventsModel homepageEventsModel;
  const BGMIContests({super.key, required this.homepageEventsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: homepageEventsModel.today_bgmi.length +
              homepageEventsModel.tomorrow_bgmi.length +
              2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const TodayContestText();
            } else if (index > 0 &&
                index <= homepageEventsModel.today_bgmi.length) {
              return ShowContests(
                  homepageeventscard:
                      homepageEventsModel.today_bgmi[index - 1]);
            } else if (index == homepageEventsModel.today_bgmi.length + 1) {
              return const TomorrowContestText();
            } else {
              return ShowContests(
                  homepageeventscard: homepageEventsModel.tomorrow_bgmi[
                      index - homepageEventsModel.today_bgmi.length - 2]);
            }
          }),
    );
  }
}

class CODContests extends StatelessWidget {
  final HomepageEventsModel homepageEventsModel;
  const CODContests({super.key, required this.homepageEventsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: homepageEventsModel.today_cod.length +
              homepageEventsModel.tomorrow_cod.length +
              2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const TodayContestText();
            } else if (index > 0 &&
                index <= homepageEventsModel.today_cod.length) {
              return ShowContests(
                  homepageeventscard: homepageEventsModel.today_cod[index - 1]);
            } else if (index == homepageEventsModel.today_cod.length + 1) {
              return const TomorrowContestText();
            } else {
              return ShowContests(
                  homepageeventscard: homepageEventsModel.tomorrow_cod[
                      index - homepageEventsModel.today_cod.length - 2]);
            }
          }),
    );
  }
}

class FreefireContests extends StatelessWidget {
  final HomepageEventsModel homepageEventsModel;
  const FreefireContests({super.key, required this.homepageEventsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 15, left: 27, right: 27),
      child: ListView.builder(
          itemCount: homepageEventsModel.today_freefire.length +
              homepageEventsModel.tomorrow_freefire.length +
              2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const TodayContestText();
            } else if (index > 0 &&
                index <= homepageEventsModel.today_freefire.length) {
              return ShowContests(
                  homepageeventscard:
                      homepageEventsModel.today_freefire[index - 1]);
            } else if (index == homepageEventsModel.today_freefire.length + 1) {
              return const TomorrowContestText();
            } else {
              return ShowContests(
                  homepageeventscard: homepageEventsModel.tomorrow_freefire[
                      index - homepageEventsModel.today_freefire.length - 2]);
            }
          }),
    );
  }
}

class TodayContestText extends StatelessWidget {
  const TodayContestText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset('assets/images/right arrow.png')),
          Padding(
              padding: getPadding(left: 10, right: 10),
              child: Text("Today’ s Contests",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ))),
          Expanded(child: Image.asset('assets/images/left arrow.png'))
        ]);
  }
}

class TomorrowContestText extends StatelessWidget {
  const TomorrowContestText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset('assets/images/right arrow.png')),
          Padding(
              padding: getPadding(left: 10, right: 10),
              child: Text("Tomorrow’ s Contests",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ))),
          Expanded(child: Image.asset('assets/images/left arrow.png'))
        ]);
  }
}
