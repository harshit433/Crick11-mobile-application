import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:crick11/presentation/my_matches_screen/Widgets/showmymatches.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/navigation_bar_items.dart';
import 'Widgets/completed_match.dart';
import 'Widgets/tab.dart';
import 'Widgets/upcoming_match.dart';
import 'bloc/my_matches_bloc.dart';

class MyMatchesScreen extends StatefulWidget {
  @override
  State<MyMatchesScreen> createState() => _MyMatchesScreenState();
}

class _MyMatchesScreenState extends State<MyMatchesScreen>
    with TickerProviderStateMixin {
  late TabController _tabcontroller;

  final MyMatchesBloc _matchesBloc = MyMatchesBloc();
  bool ispressed = false;
  dynamic selected;

  tab_backgroundcolor() {
    if (Theme.of(context).appBarTheme.backgroundColor == ColorConstant.red800) {
      return Colors.white;
    } else {
      return const Color.fromARGB(255, 18, 12, 25);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
        return false;
      },
      child: BlocConsumer<MyMatchesBloc, MyMatchesState>(
        listener: (context, state) {
          if (state is NavigateToHome) {
            Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
          }

          if (state is NavigateToLearderboard) {
            Navigator.pushReplacementNamed(
                context, AppRoutes.leaderboardScreen);
          }
          if (state is NavigateToReferral) {
            Navigator.pushReplacementNamed(context, AppRoutes.referralScreen);
          }
          if (state is NavigateToSocial) {
            Navigator.pushReplacementNamed(context, AppRoutes.socialScreen);
          }

          if (state is NavigateToLiveMatch) {
            Navigator.pushNamed(context, AppRoutes.pointsPage);
          }
          if (state is NavigateToUpcomingMatch) {
            Navigator.pushNamed(context, AppRoutes.contestsDetailsScreen);
          }
        },
        bloc: _matchesBloc,
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(getVerticalSize(80)),
                    child: AppBar(
                      automaticallyImplyLeading: false,
                      title: const Text('My Matches'),
                      centerTitle: true,
                    ),
                  ),
                  body: SizedBox(
                      width: double.maxFinite,
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
                                title: "Cricket",
                                symbol: Icons.sports_cricket,
                                tap: () {
                                  _matchesBloc.add(
                                      ChangeMatchCategory(match_category: 0));
                                },
                              ),
                              tab(
                                color: Theme.of(context).secondaryHeaderColor,
                                underline_color: tab_backgroundcolor(),
                                symbol: Icons.sports_kabaddi,
                                title: "Kabaddi",
                                tap: () {
                                  _matchesBloc.add(
                                      ChangeMatchCategory(match_category: 1));
                                },
                              ),
                              tab(
                                color: Theme.of(context).secondaryHeaderColor,
                                underline_color: tab_backgroundcolor(),
                                symbol: Icons.sports_football,
                                title: "Football",
                                tap: () {
                                  _matchesBloc.add(
                                      ChangeMatchCategory(match_category: 2));
                                },
                              ),
                              tab(
                                color: Theme.of(context).secondaryHeaderColor,
                                underline_color: tab_backgroundcolor(),
                                symbol: Icons.sports_football,
                                title: "BGMI",
                                tap: () {
                                  _matchesBloc.add(
                                      ChangeMatchCategory(match_category: 3));
                                },
                              ),
                              tab(
                                color: Theme.of(context).secondaryHeaderColor,
                                underline_color: tab_backgroundcolor(),
                                symbol: Icons.sports_football,
                                title: "COD",
                                tap: () {
                                  _matchesBloc.add(
                                      ChangeMatchCategory(match_category: 4));
                                },
                              ),
                              tab(
                                color: Theme.of(context).secondaryHeaderColor,
                                underline_color: tab_backgroundcolor(),
                                symbol: Icons.sports_football,
                                title: "FreeFire",
                                tap: () {
                                  _matchesBloc.add(
                                      ChangeMatchCategory(match_category: 5));
                                },
                              )
                            ],
                          ),
                          Container(
                            color: tab_backgroundcolor(),
                            height: getVerticalSize(35),
                            child: TabBar(
                              controller: _tabcontroller,
                              indicatorWeight: 0.1,
                              tabs: [
                                Tab(
                                  child: Text(
                                    'Live',
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
                                    'Upcoming',
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
                                    'Completed',
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
                          Expanded(
                            child: TabBarView(
                                controller: _tabcontroller,
                                children: [
                                  Showlivematches(event_type: 'cricket'),
                                  Padding(
                                    padding: getPadding(
                                        left: 28, right: 28, bottom: 10),
                                    child: ListView(
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          SizedBox(
                                            height: getVerticalSize(21),
                                          ),
                                          UpcomingMatchWidget(
                                            contest_type: "Mega",
                                            entry_price: 50,
                                            prize_pool: "5 Lakhs",
                                            total_spots: 11000,
                                            spots_left: 9560,
                                            first_prize: '2 Lakhs',
                                            percentage: 100,
                                            number_of_teams: "30 teams",
                                            ontap: () {
                                              _matchesBloc.add(
                                                  UpcomingMatchNavigation());
                                            },
                                          ),
                                          UpcomingMatchWidget(
                                            contest_type: "Beginner",
                                            entry_price: 20,
                                            prize_pool: "1 Lakhs",
                                            total_spots: 1100,
                                            spots_left: 156,
                                            first_prize: '50,000',
                                            percentage: 100,
                                            number_of_teams: "30 teams",
                                            ontap: () {
                                              _matchesBloc.add(
                                                  UpcomingMatchNavigation());
                                            },
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                        left: 28, right: 28, bottom: 10),
                                    child: ListView(
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          SizedBox(
                                            height: getVerticalSize(21),
                                          ),
                                          CompletedMatchWidget(
                                            contest_type: 'Mega',
                                            entry_price: 50,
                                            rank: 60,
                                            winning_pool: '5 Lakhs',
                                            prize_won: '6,000',
                                          )
                                        ]),
                                  ),
                                ]),
                          ),
                        ],
                      )),
                  bottomNavigationBar: navigation_bar(
                    item: [
                      navigation_bar_item(
                        symbol: 'assets/images/home.svg',
                        height: getSize(24),
                        width: getSize(24),
                        name: 'Home',
                        state: false,
                        tap: () {
                          _matchesBloc.add(HomeNavigation());
                        },
                      ),
                      navigation_bar_item(
                        symbol: 'assets/images/trophy.svg',
                        height: getVerticalSize(36),
                        width: getHorizontalSize(45),
                        name: "My Matches",
                        state: false,
                        tap: () {
                          _matchesBloc.add(MyMatchesNavigation());
                        },
                      ),
                      navigation_bar_item(
                        symbol: ImageConstant.imgIconsaxlinearshareGray90002,
                        height: getSize(34),
                        width: getSize(34),
                        name: 'Refer & Earn\nDaily',
                        state: false,
                        tap: () {
                          _matchesBloc.add(ReferralNavigation());
                        },
                      ),
                      navigation_bar_item(
                        symbol: ImageConstant.imgIconsaxlinearmedalstar,
                        height: getSize(30),
                        width: getSize(30),
                        name: 'Leaderboard',
                        state: false,
                        tap: () {
                          _matchesBloc.add(LearderboardNavigation());
                        },
                      ),
                      navigation_bar_item(
                        symbol: ImageConstant.imgCamera,
                        height: getSize(24),
                        width: getSize(24),
                        name: 'Social',
                        state: false,
                        tap: () {
                          _matchesBloc.add(SocialNavigation());
                        },
                      ),
                    ],
                    onstart_index: 1,
                    pressed: ispressed,
                    bgcolor: (AdaptiveTheme.of(context).theme ==
                            AdaptiveTheme.of(context).darkTheme)
                        ? const Color.fromARGB(255, 22, 32, 42)
                        : Colors.white,
                    height: getHorizontalSize(60),
                    primary: 1,
                    selected: selected ?? 1,
                  )));
        },
      ),
    );
  }

  onTapImgMaterialsymbol(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
  }

  onTapColumniconsaxli1(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.leaderboardScreen);
  }
}
