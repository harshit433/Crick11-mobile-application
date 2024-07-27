import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/referral_screen/bloc/referral_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/navigation_bar_items.dart';

class ReferralScreen extends StatefulWidget {
  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  final ReferralBloc _referralBloc = ReferralBloc();
  bool ispressed = false;

  dynamic selected;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReferralBloc, ReferralState>(
      bloc: _referralBloc,
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
                body: Column(children: [
                  Image.asset(
                    ImageConstant.imgVecteezyrefer,
                    width: getHorizontalSize(390),
                    //height: getVerticalSize(221),
                  ),
                  Padding(
                    padding: getPadding(left: 10, top: 4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Referral and Earn Daily",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: getFontSize(19),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 15, right: 13),
                    child: Column(
                      children: [
                        Padding(
                          padding: getPadding(top: 24),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                    BorderRadius.circular(getSize(11)),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.black9003f,
                                    spreadRadius: getHorizontalSize(
                                      2,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      2,
                                    ),
                                    offset: const Offset(
                                      9,
                                      7,
                                    ),
                                  ),
                                ]),
                            height: getVerticalSize(67),
                            width: getHorizontalSize(361),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImageConstant.imgDownload1,
                                  width: getHorizontalSize(58),
                                  height: getVerticalSize(44),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Your friend',
                                      style: TextStyle(
                                          fontSize: getFontSize(17),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      'Signup and deposit min ₹ 100',
                                      style: TextStyle(
                                          fontSize: getFontSize(16),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 26),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                    BorderRadius.circular(getSize(11)),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.black9003f,
                                    spreadRadius: getHorizontalSize(
                                      2,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      2,
                                    ),
                                    offset: const Offset(
                                      5,
                                      9,
                                    ),
                                  ),
                                ]),
                            height: getVerticalSize(122),
                            width: getHorizontalSize(361),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImageConstant.imgRefer1,
                                  width: getHorizontalSize(58),
                                  height: getVerticalSize(44),
                                ),
                                SizedBox(
                                  width: getHorizontalSize(290),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'You get',
                                        style: TextStyle(
                                            fontSize: getFontSize(17),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Text(
                                        '10% of daily game amount played by your friend *',
                                        style: TextStyle(
                                            fontSize: getFontSize(15),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        '₹ 10 off on 15 contest ** + ₹ 100 Bonus ***',
                                        style: TextStyle(
                                            fontSize: getFontSize(14),
                                            fontFamily: "Inter",
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 24),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                    BorderRadius.circular(getSize(11)),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.black9003f,
                                    spreadRadius: getHorizontalSize(
                                      2,
                                    ),
                                    blurRadius: getHorizontalSize(
                                      2,
                                    ),
                                    offset: const Offset(
                                      4,
                                      9,
                                    ),
                                  ),
                                ]),
                            height: getVerticalSize(67),
                            width: getHorizontalSize(361),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImageConstant.imgHighfive1,
                                  width: getHorizontalSize(58),
                                  height: getVerticalSize(44),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Friend gets',
                                      style: TextStyle(
                                          fontSize: getFontSize(17),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      '10% discount upto 10 contests ***',
                                      style: TextStyle(
                                          fontSize: getFontSize(16),
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(top: 25.0),
                          child: Text(
                            "** Discount applies on contest value above ₹ 20 *** Bonus will be  released after friend play cash games",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: getFontSize(10),
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                bottomNavigationBar: navigation_bar(
                  item: [
                    navigation_bar_item(
                      symbol: 'assets/images/home.svg',
                      height: getSize(24),
                      width: getSize(24),
                      name: 'Home',
                      state: false,
                      tap: () {
                        _referralBloc.add(HomeNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: 'assets/images/trophy.svg',
                      height: getVerticalSize(36),
                      width: getHorizontalSize(45),
                      name: "My Matches",
                      state: false,
                      tap: () {
                        _referralBloc.add(MyMatchesNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: ImageConstant.imgIconsaxlinearshareGray90002,
                      height: getSize(34),
                      width: getSize(34),
                      name: 'Refer & Earn\nDaily',
                      state: false,
                      tap: () {
                        _referralBloc.add(ReferralNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: ImageConstant.imgIconsaxlinearmedalstar,
                      height: getSize(30),
                      width: getSize(30),
                      name: 'Leaderboard',
                      state: false,
                      tap: () {
                        _referralBloc.add(LearderboardNavigation());
                      },
                    ),
                    navigation_bar_item(
                      symbol: ImageConstant.imgCamera,
                      height: getSize(24),
                      width: getSize(24),
                      name: 'Social',
                      state: false,
                      tap: () {
                        _referralBloc.add(SocialNavigation());
                      },
                    ),
                  ],
                  onstart_index: 2,
                  pressed: ispressed,
                  bgcolor: (AdaptiveTheme.of(context).theme ==
                          AdaptiveTheme.of(context).darkTheme)
                      ? const Color.fromARGB(255, 22, 32, 42)
                      : Colors.white,
                  height: getHorizontalSize(60),
                  primary: 2,
                  selected: selected ?? 2,
                )));
      },
    );
  }
}
