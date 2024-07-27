import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:crick11/presentation/leaderboard_screen/bloc/leaderboard_bloc.dart';
import 'package:crick11/presentation/leaderboard_screen/widgets/leaderboard_widget.dart';
import 'package:crick11/presentation/leaderboard_screen/widgets/tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/app_export.dart';
import '../../widgets/navigation_bar_items.dart';

class LeaderboardScreen extends StatefulWidget {
  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final LeaderboardBloc _leaderboardBloc = LeaderboardBloc();
  bool ispressed = false;

  dynamic selected;

  int selected_tab = 0;

  tab_backgroundcolor() {
    if (Theme.of(context).appBarTheme.backgroundColor == ColorConstant.red800) {
      return Colors.white;
    } else {
      return Theme.of(context).appBarTheme.backgroundColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LeaderboardBloc, LeaderboardState>(
      bloc: _leaderboardBloc,
      listener: (context, state) {
        if (state is NavigateToHome) {
          Navigator.pop(context);
        }
        if (state is NavigateToMyMatches) {
          Navigator.popAndPushNamed(context, AppRoutes.myMatchesScreen);
        }
        if (state is NavigateToLearderboard) {
          Navigator.popAndPushNamed(context, AppRoutes.leaderboardScreen);
        }
        if (state is NavigateToReferral) {
          Navigator.popAndPushNamed(context, AppRoutes.referralScreen);
        }
        if (state is NavigateToSocial) {
          Navigator.popAndPushNamed(context, AppRoutes.socialScreen);
        }
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(getVerticalSize(80)),
                  child: AppBar(
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    title: Padding(
                      padding: getPadding(top: 40),
                      child: Text(
                        'Leaderboard',
                        style: TextStyle(
                            fontSize: getFontSize(20),
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    centerTitle: true,
                  ),
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      tab_bar(
                        selected: state.category,
                        selected_color: (Theme.of(context)
                            .bottomNavigationBarTheme
                            .backgroundColor) as Color,
                        bgcolor: tab_backgroundcolor(),
                        item: [
                          tab(
                            color: Theme.of(context).secondaryHeaderColor,
                            underline_color: tab_backgroundcolor(),
                            title: "All Time",
                            tap: () {
                              _leaderboardBloc
                                  .add(ChangeTimeLimit(time_limit: 0));
                            },
                          ),
                          tab(
                            color: Theme.of(context).secondaryHeaderColor,
                            underline_color: tab_backgroundcolor(),
                            title: "This Week",
                            tap: () {
                              _leaderboardBloc
                                  .add(ChangeTimeLimit(time_limit: 1));
                            },
                          ),
                          tab(
                            color: Theme.of(context).secondaryHeaderColor,
                            underline_color: tab_backgroundcolor(),
                            title: "This Month",
                            tap: () {
                              _leaderboardBloc
                                  .add(ChangeTimeLimit(time_limit: 2));
                            },
                          )
                        ],
                      ),
                      LeaderboardWidget()
                    ],
                  ),
                ),
                bottomNavigationBar: navigation_bar(
                  item: [
                    navigation_bar_item(
                      symbol: 'assets/images/home.svg',
                      height: getSize(24),
                      width: getSize(24),
                      name: 'Home',
                      state: false,
                      tap: () {
                        _leaderboardBloc.add(HomeNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: 'assets/images/trophy.svg',
                      height: getVerticalSize(36),
                      width: getHorizontalSize(45),
                      name: "My Matches",
                      state: false,
                      tap: () {
                        _leaderboardBloc.add(MyMatchesNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: ImageConstant.imgIconsaxlinearshareGray90002,
                      height: getSize(34),
                      width: getSize(34),
                      name: 'Refer & Earn\nDaily',
                      state: false,
                      tap: () {
                        _leaderboardBloc.add(ReferralNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: ImageConstant.imgIconsaxlinearmedalstar,
                      height: getSize(30),
                      width: getSize(30),
                      name: 'Leaderboard',
                      state: false,
                      tap: () {
                        _leaderboardBloc.add(LearderboardNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: ImageConstant.imgCamera,
                      height: getSize(24),
                      width: getSize(24),
                      name: 'Social',
                      state: false,
                      tap: () {
                        _leaderboardBloc.add(SocialNavigation());
                      },
                    ),
                  ],
                  onstart_index: 3,
                  pressed: ispressed,
                  bgcolor: (AdaptiveTheme.of(context).theme ==
                          AdaptiveTheme.of(context).darkTheme)
                      ? const Color.fromARGB(255, 22, 32, 42)
                      : Colors.white,
                  height: getHorizontalSize(60),
                  primary: 3,
                  selected: selected ?? 3,
                )));
      },
    );
  }
}
