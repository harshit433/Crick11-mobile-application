import 'package:crick11/presentation/contests_page/bloc/contests_bloc.dart';
import 'package:crick11/presentation/contests_page/widgets/contestsview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';

// ignore: must_be_immutable
class ContestsPage extends StatefulWidget {
  final int event_id;

  ContestsPage({
    super.key,
    required this.event_id,
  });

  @override
  State<ContestsPage> createState() => _ContestsPageState();
}

class _ContestsPageState extends State<ContestsPage>
    with TickerProviderStateMixin {
  final ContestsBloc _contestsBloc = ContestsBloc();
  tab_backgroundcolor() {
    if (Theme.of(context).appBarTheme.backgroundColor == ColorConstant.red800) {
      return Colors.white;
    } else {
      return const Color.fromARGB(255, 18, 12, 25);
    }
  }

  late TabController _controller;

  @override
  void initState() {
    print(widget.event_id);
    _contestsBloc.add(ContestPageInitial(widget.event_id));
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContestsBloc, ContestsState>(
      bloc: _contestsBloc,
      listener: (context, state) {
        if (state is NavigateBack) {
          Navigator.pop(context);
        }
        if (state is NavigateToWallet) {
          Navigator.pushNamed(context, AppRoutes.accountSummaryScreen);
        }
        if (state is NavigateToContestDetails) {
          Navigator.pushNamed(context, AppRoutes.contestsDetailsScreen);
        }
        if (state is NavigateToTeamPreview) {
          Navigator.pushNamed(context, AppRoutes.teamPreviewScreen);
        }
        if (state is NavigateToTeamEdit) {
          Navigator.pushNamed(context, AppRoutes.teamCreationScreen);
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case ContestLoadingState:
            return const Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          case ContestErrorState:
            return const Scaffold(body: Center(child: Text('Error')));
          case ContestLoadedSuccessState:
            return SafeArea(
                child: Scaffold(
              appBar: appbar(
                height: getVerticalSize(110),
                team1: state.arguments!.team_1,
                team2: state.arguments!.team_2,
                time: _printDuration(
                    (state.arguments!.date).difference(DateTime.now())),
                backbutton: () {
                  _contestsBloc.add(backNavigation());
                },
                walletbutton: () {
                  _contestsBloc.add(walletNavigation());
                },
              ),
              body: Column(
                children: [
                  Container(
                    height: getVerticalSize(10),
                    color: tab_backgroundcolor(),
                  ),
                  Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: tab_backgroundcolor(),
                      ),
                      height: getVerticalSize(47),
                    ),
                    SizedBox(
                      height: getVerticalSize(35),
                      child: TabBar(
                        controller: _controller,
                        padding: EdgeInsets.zero,
                        indicatorPadding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.zero,
                        tabs: [
                          Tab(
                            child: Text(
                              ' Contest',
                              style: TextStyle(
                                fontSize: getFontSize(
                                  15,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              ' My Contests(1)',
                              style: TextStyle(
                                fontSize: getFontSize(
                                  15,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              ' My Teams(1)',
                              style: TextStyle(
                                fontSize: getFontSize(
                                  15,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                        labelColor: Theme.of(context)
                            .bottomNavigationBarTheme
                            .backgroundColor,
                        unselectedLabelColor:
                            Theme.of(context).secondaryHeaderColor,
                        indicatorColor: Theme.of(context)
                            .bottomNavigationBarTheme
                            .backgroundColor,
                        indicatorSize: TabBarIndicatorSize.label,
                      ),
                    ),
                  ]),
                  Expanded(
                    child: TabBarView(controller: _controller, children: [
                      AllContests(ContestModel: state.contests!),
                      MyContests(ContestModel: state.contests!),
                      Myteams(ContestModel: state.contests!),
                    ]),
                  ),
                ],
              ),
            ));
          default:
            return SizedBox();
        }
      },
    );
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return "${twoDigits(duration.inHours)}h ${twoDigitMinutes}m";
  }
}
