import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/social_screen/widgets/social1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/navigation_bar_items.dart';
import 'bloc/social_bloc.dart';

class SocialScreen extends StatefulWidget {
  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  final SocialBloc _socialBloc = SocialBloc();
  dynamic selected;
  bool ispressed = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocialBloc, SocialState>(
      bloc: _socialBloc,
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
          body: Column(
            children: [
              Container(
                padding: getPadding(left: 22.0, top: 58, bottom: 21),
                color: (Theme.of(context).scaffoldBackgroundColor !=
                        ColorConstant.gray900)
                    ? ColorConstant.red800
                    : const Color.fromARGB(255, 7, 24, 46),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          (Theme.of(context).scaffoldBackgroundColor ==
                                  ColorConstant.gray900)
                              ? ColorConstant.red500
                              : Colors.black,
                      radius: getSize(37),
                      child: CircleAvatar(
                        backgroundColor:
                            (Theme.of(context).scaffoldBackgroundColor !=
                                    ColorConstant.gray900)
                                ? ColorConstant.red800
                                : const Color.fromARGB(255, 7, 24, 46),
                        backgroundImage: AssetImage(ImageConstant.imgImage6),
                        radius: getSize(32),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jatin Dua',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                fontSize: getFontSize(26),
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: getPadding(top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Followers',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontSize: getFontSize(14),
                                          fontWeight: FontWeight.w800),
                                    ),
                                    SizedBox(
                                      height: getVerticalSize(5),
                                    ),
                                    Text(
                                      '250',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Inter',
                                          fontSize: getFontSize(14),
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(left: 15.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Following',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Inter',
                                            fontSize: getFontSize(14),
                                            fontWeight: FontWeight.w800),
                                      ),
                                      SizedBox(
                                        height: getVerticalSize(5),
                                      ),
                                      Text(
                                        '350',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Inter',
                                            fontSize: getFontSize(14),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top: 15, left: 22),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.sunny,
                          size: getSize(20),
                          color: Theme.of(context)
                              .tabBarTheme
                              .unselectedLabelColor,
                        ),
                        Padding(
                          padding: getPadding(left: 12),
                          child: Text(
                            'Recommended Experts',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: getFontSize(16),
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: getVerticalSize(144),
                      padding: getPadding(top: 3),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: getHorizontalSize(322),
                            height: getVerticalSize(141),
                            padding: getPadding(
                                top: 10, right: 10, bottom: 10, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(getSize(8)),
                              color: const Color.fromARGB(255, 28, 41, 57),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorConstant.red500,
                                      radius: getSize(24),
                                      child: CircleAvatar(
                                        backgroundColor: const Color.fromARGB(
                                            255, 28, 41, 57),
                                        backgroundImage:
                                            AssetImage(ImageConstant.imgImage6),
                                        radius: getSize(21),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(left: 8.0),
                                      child: Text(
                                        'Jatin Dua',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Inter',
                                            fontSize: getFontSize(18),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(left: 4.0),
                                      child: const Icon(
                                        Icons.verified,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Total Winnings',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: getFontSize(12),
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: getVerticalSize(12),
                                        ),
                                        Text(
                                          '₹1 Lakh',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: getFontSize(12),
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Total Contests played',
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontSize: getFontSize(12),
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: getVerticalSize(12),
                                        ),
                                        Text(
                                          '9',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: getFontSize(12),
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Followers',
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontSize: getFontSize(12),
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: getVerticalSize(12),
                                        ),
                                        Text(
                                          '100',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Inter',
                                              fontSize: getFontSize(12),
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: getPadding(left: 30.0, top: 30, right: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorConstant.red500,
                      radius: getSize(24),
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 28, 41, 57),
                        backgroundImage: AssetImage(ImageConstant.imgImage6),
                        radius: getSize(21),
                      ),
                    ),
                    GestureDetector(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jatin Dua',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '2h ago',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: getFontSize(12),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.socialOneScreen);
                      },
                    ),
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 28, 41, 57),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(getSize(17)),
                          bottomRight: Radius.circular(getSize(17)),
                          topLeft: Radius.circular(getSize(22)),
                          topRight: Radius.circular(getSize(22)))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getHorizontalSize(352),
                        child: Social1ItemWidget(
                          team_name: "Aayushi Team 1",
                          contest_team1: "RR",
                          contest_team2: "HYD",
                          team1_players: 6,
                          team2_players: 5,
                          team_vice_captain: 'Marco J(VC)',
                          team_captain: 'Jason H(C)',
                          WK: 2,
                          AR: 3,
                          Batsmen: 3,
                          Bowls: 3,
                          entry_price: 20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(top: 22, left: 16, bottom: 29),
                        child: Text(
                          'Guys Check out my team What do you think ?',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: getFontSize(12),
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(left: 13, right: 13, top: 13),
                child: Divider(
                  thickness: 1,
                  //height: 10,
                  color: Theme.of(context).secondaryHeaderColor,
                ),
              )
            ],
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
                  _socialBloc.add(HomeNavigation());
                },
              ),
              navigation_bar_item(
                symbol: 'assets/images/trophy.svg',
                height: getVerticalSize(36),
                width: getHorizontalSize(45),
                name: "My Matches",
                state: false,
                tap: () {
                  _socialBloc.add(MyMatchesNavigation());
                },
              ),
              navigation_bar_item(
                symbol: ImageConstant.imgIconsaxlinearshareGray90002,
                height: getSize(34),
                width: getSize(34),
                name: 'Refer & Earn\nDaily',
                state: false,
                tap: () {
                  _socialBloc.add(ReferralNavigation());
                },
              ),
              navigation_bar_item(
                symbol: ImageConstant.imgIconsaxlinearmedalstar,
                height: getSize(30),
                width: getSize(30),
                name: 'Leaderboard',
                state: false,
                tap: () {
                  _socialBloc.add(LearderboardNavigation());
                },
              ),
              navigation_bar_item(
                symbol: ImageConstant.imgCamera,
                height: getSize(24),
                width: getSize(24),
                name: 'Social',
                state: false,
                tap: () {
                  _socialBloc.add(SocialNavigation());
                },
              ),
            ],
            onstart_index: 4,
            pressed: ispressed,
            bgcolor: (AdaptiveTheme.of(context).theme ==
                    AdaptiveTheme.of(context).darkTheme)
                ? const Color.fromARGB(255, 22, 32, 42)
                : Colors.white,
            height: getHorizontalSize(60),
            primary: 4,
            selected: selected ?? 4,
          ),
        ));
      },
    );
  }
}
