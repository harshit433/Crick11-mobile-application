import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:crick11/presentation/home_screen/bloc/home_bloc.dart';
import 'package:crick11/presentation/home_screen/widgets/drawer.dart';
import 'package:crick11/presentation/home_screen/widgets/homepage_app_bar.dart';
import 'package:crick11/presentation/home_screen/widgets/show_contests_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import '../../widgets/navigation_bar_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenstate();
}

class HomeScreenstate extends State<HomeScreen> with TickerProviderStateMixin {
  final HomeBloc _homeBloc = HomeBloc();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  dynamic selected;
  bool ispressed = false;
  late TabController _tabController;

  @override
  void initState() {
    _homeBloc.add(HomePageInitial());
    super.initState();

    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        bloc: _homeBloc,
        listener: (context, state) {
          if (state is NavigateToMyMatches) {
            Navigator.pushReplacementNamed(context, AppRoutes.myMatchesScreen);
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
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case HomeLoadingState:
              return const Scaffold(
                  body: Center(
                child: CircularProgressIndicator(),
              ));
            case HomeErrorState:
              return const Scaffold(body: Center(child: Text('Error')));
            case HomeLoadedSuccessState:
              return SafeArea(
                  child: Scaffold(
                      key: _globalKey,
                      appBar: appbar_title(),
                      drawer: const drawerWidget(),
                      body: Column(
                        children: [
                          SizedBox(
                            height: getVerticalSize(15),
                          ),
                          SizedBox(
                            height: getVerticalSize(173),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: getPadding(all: 4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.img14521),
                                            fit: BoxFit.fill)),
                                    width: getHorizontalSize(336.68),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(all: 4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(getSize(25)),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgImage1),
                                            fit: BoxFit.fill)),
                                    width: getHorizontalSize(336.68),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                              bottom: 10.0, left: 30),
                                          child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Tata IPL 2023',
                                                style: TextStyle(
                                                    fontFamily: "Roboto",
                                                    fontSize: getFontSize(22),
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.white),
                                              )),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                            ImageConstant
                                                                .LSKLogo,
                                                          ),
                                                          fit: BoxFit.fill)),
                                                  width: getHorizontalSize(83),
                                                  height: getVerticalSize(83),
                                                ),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 11),
                                                    child: Text("LSG",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtRobotoRomanBold12))
                                              ],
                                            ),
                                            SizedBox(
                                              height: getVerticalSize(94),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width:
                                                        getHorizontalSize(87),
                                                    height: getVerticalSize(23),
                                                    color: Colors.red,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 4.0),
                                                          child: Container(
                                                              height:
                                                                  getSize(7),
                                                              width: getSize(7),
                                                              margin: getMargin(
                                                                  top: 9,
                                                                  bottom: 7),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .blueGray10001,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(3)))),
                                                        ),
                                                        Text("Upcoming",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize:
                                                                    getFontSize(
                                                                        15),
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    "00:14",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: "Roboto",
                                                        fontSize:
                                                            getFontSize(25)),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        getHorizontalSize(111),
                                                    height: getVerticalSize(31),
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        "Play",
                                                        style: TextStyle(
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                "Roboto",
                                                            fontWeight:
                                                                FontWeight
                                                                    .w900),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                            ImageConstant
                                                                .KKRLogo,
                                                          ),
                                                          fit: BoxFit.fill)),
                                                  width: getHorizontalSize(83),
                                                  height: getVerticalSize(83),
                                                ),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 11),
                                                    child: Text("KCR",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtRobotoRomanBold12))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(all: 4.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      ImageConstant.imgStockmarketha,
                                      width: getHorizontalSize(336.68),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getVerticalSize(23),
                          ),
                          Padding(
                            padding: getPadding(left: 18),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: tab_backgroundcolor(),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15))),
                                height: getVerticalSize(47),
                              ),
                              SizedBox(
                                height: getVerticalSize(35),
                                child: TabBar(
                                  // isScrollable: true,
                                  padding: EdgeInsets.zero,
                                  indicatorPadding: EdgeInsets.zero,
                                  labelPadding: EdgeInsets.zero,
                                  controller: _tabController,
                                  tabs: [
                                    Tab(
                                      child: Column(
                                        children: [
                                          Icon(Icons.sports_cricket,
                                              size: getSize(19)),
                                          Text(
                                            ' Cricket',
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                11,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Column(
                                        children: [
                                          Icon(Icons.sports_kabaddi,
                                              size: getSize(19)),
                                          Text(
                                            ' Kabaddi',
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                11,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Column(
                                        children: [
                                          Icon(Icons.sports_football,
                                              size: getSize(19)),
                                          Text(
                                            ' Football',
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                11,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Column(
                                        children: [
                                          ImageIcon(
                                            const AssetImage(
                                                'assets/images/pubg.png'),
                                            size: getSize(19),
                                          ),
                                          Text(
                                            ' BGMI',
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                11,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Column(
                                        children: [
                                          ImageIcon(
                                            const AssetImage(
                                                'assets/images/cod.png'),
                                            size: getSize(19),
                                          ),
                                          Text(
                                            ' COD',
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                11,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Tab(
                                      child: Column(
                                        children: [
                                          ImageIcon(
                                            const AssetImage(
                                                'assets/images/freefire.png'),
                                            size: getSize(19),
                                          ),
                                          Text(
                                            ' FreeFire',
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                11,
                                              ),
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                          Expanded(
                            child: TabBarView(
                                controller: _tabController,
                                children: [
                                  CricketContests(
                                      homepageEventsModel: state.contests!),
                                  KabaddiContests(
                                      homepageEventsModel: state.contests!),
                                  FootballContests(
                                      homepageEventsModel: state.contests!),
                                  BGMIContests(
                                      homepageEventsModel: state.contests!),
                                  CODContests(
                                      homepageEventsModel: state.contests!),
                                  FreefireContests(
                                      homepageEventsModel: state.contests!),
                                ]),
                          ),
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
                              _homeBloc.add(HomeNavigation());
                            },
                          ),
                          navigation_bar_item(
                            symbol: 'assets/images/trophy.svg',
                            height: getVerticalSize(36),
                            width: getHorizontalSize(45),
                            name: "My Matches",
                            state: false,
                            tap: () {
                              _homeBloc.add(MyMatchesNavigation());
                            },
                          ),
                          navigation_bar_item(
                            symbol:
                                ImageConstant.imgIconsaxlinearshareGray90002,
                            height: getSize(34),
                            width: getSize(34),
                            name: 'Refer & Earn\nDaily',
                            state: false,
                            tap: () {
                              _homeBloc.add(ReferralNavigation());
                            },
                          ),
                          navigation_bar_item(
                            symbol: ImageConstant.imgIconsaxlinearmedalstar,
                            height: getSize(30),
                            width: getSize(30),
                            name: 'Leaderboard',
                            state: false,
                            tap: () {
                              _homeBloc.add(LearderboardNavigation());
                            },
                          ),
                          navigation_bar_item(
                            symbol: ImageConstant.imgCamera,
                            height: getSize(24),
                            width: getSize(24),
                            name: 'Social',
                            state: false,
                            tap: () {
                              _homeBloc.add(SocialNavigation());
                            },
                          ),
                        ],
                        onstart_index: 0,
                        pressed: ispressed,
                        bgcolor: (AdaptiveTheme.of(context).theme ==
                                AdaptiveTheme.of(context).darkTheme)
                            ? const Color.fromARGB(255, 22, 32, 42)
                            : Colors.white,
                        height: getHorizontalSize(60),
                        primary: 0,
                        selected: selected ?? 0,
                      )));
            default:
              return Scaffold();
          }
        });
  }

  appbar_title() {
    if (Theme.of(context).bottomNavigationBarTheme.backgroundColor ==
        ColorConstant.red800) {
      return PreferredSize(
          preferredSize: Size.fromHeight(getVerticalSize(110)),
          child: lightappbar(
            tap_leading: () {
              _globalKey.currentState!.openDrawer();
            },
            tap_trailing: () {
              Navigator.pushReplacementNamed(context, AppRoutes.paymentScreen);
            },
          ));
    } else {
      return PreferredSize(
          preferredSize: Size.fromHeight(getVerticalSize(110)),
          child: darkappbar(
            tap_leading: () {
              _globalKey.currentState!.openDrawer();
            },
            tap_trailing: () {
              Navigator.pushReplacementNamed(
                  context, AppRoutes.accountSummaryScreen);
            },
          ));
    }
  }

// FUnction to render drawer on home page according to theme

// FUnction to render tab background on home page according to theme
  tab_backgroundcolor() {
    if (Theme.of(context).bottomNavigationBarTheme.backgroundColor ==
        ColorConstant.red800) {
      return Colors.white;
    } else {
      return const Color.fromARGB(255, 18, 12, 25);
    }
  }
}
