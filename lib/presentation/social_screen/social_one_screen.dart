import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/social_screen/widgets/social2_item_widget.dart';
import 'package:flutter/material.dart';

class SocialOneScreen extends StatefulWidget {
  @override
  State<SocialOneScreen> createState() => _SocialOneScreenState();
}

class _SocialOneScreenState extends State<SocialOneScreen>
    with TickerProviderStateMixin {
  int selected = 4;

  var ispressed = false;

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
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Container(
            padding: getPadding(left: 12.0, top: 58, bottom: 21),
            color: (Theme.of(context).scaffoldBackgroundColor !=
                    ColorConstant.gray900)
                ? ColorConstant.red800
                : const Color.fromARGB(255, 7, 24, 46),
            child: Column(
              children: [
                Stack(
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    Visibility(
                      visible: (Theme.of(context).scaffoldBackgroundColor ==
                          ColorConstant.gray900),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          ImageConstant.imgFanasy1removebgpreview153x231,
                          alignment: Alignment.topCenter,
                          height: getVerticalSize(50),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(top: 19),
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
                        padding: getPadding(left: 13.0),
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
                              padding: getPadding(top: 10),
                              child: SizedBox(
                                height: getVerticalSize(25),
                                width: getHorizontalSize(111),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                      padding: MaterialStatePropertyAll(
                                          EdgeInsets.zero),
                                      side: MaterialStatePropertyAll(
                                          BorderSide(color: Colors.black))),
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                        fontFamily: 'inter',
                                        fontSize: getFontSize(16),
                                        color: Theme.of(context)
                                            .secondaryHeaderColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
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
                tabs: [
                  Tab(
                    child: Text(
                      'ScoreCard',
                      style: AppStyle.txttab,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Teams',
                      style: AppStyle.txttab,
                    ),
                  ),
                ],
                labelColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                unselectedLabelColor: Theme.of(context).secondaryHeaderColor,
                indicatorColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
          ]),
          Expanded(
            child: Padding(
              padding: getPadding(left: 19, right: 19),
              child: TabBarView(controller: _controller, children: [
                ListView(scrollDirection: Axis.vertical, children: [
                  SizedBox(
                    height: getVerticalSize(18),
                  ),
                  Container(
                    height: getVerticalSize(70),
                    padding: getPadding(left: 17.5, top: 4),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 28, 41, 57),
                        borderRadius: BorderRadius.circular(getSize(8))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: getFontSize(12),
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Padding(
                          padding: getPadding(top: 8.0),
                          child: Text(
                            "I am an Enthusiastic sports person won 60 matches",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: getFontSize(12),
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(26),
                  ),
                  Container(
                    height: getVerticalSize(162),
                    padding: getPadding(top: 4),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 28, 41, 57),
                        borderRadius: BorderRadius.circular(getSize(8))),
                    child: Column(children: [
                      Row(
                        children: [
                          Image.asset(
                            ImageConstant.imgTrophy100x108,
                            width: getHorizontalSize(109),
                            height: getVerticalSize(100),
                          ),
                          Column(
                            children: [
                              Text(
                                "TOTAL CONTESTS PLAYED",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: getFontSize(14),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                              Padding(
                                padding: getPadding(top: 8.0),
                                child: Container(
                                  width: getHorizontalSize(112),
                                  height: getVerticalSize(28),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.circular(getSize(10))),
                                  child: Center(
                                    child: Text(
                                      "9",
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: getFontSize(23),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color.fromARGB(255, 150, 150, 150),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Cricket",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Color.fromARGB(255, 150, 150, 150),
                              thickness: 2,
                            ),
                            Column(
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Football",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Color.fromARGB(255, 150, 150, 150),
                              thickness: 2,
                            ),
                            Column(
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Others",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: getVerticalSize(30),
                  ),
                  Container(
                    height: getVerticalSize(162),
                    padding: getPadding(top: 4),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 28, 41, 57),
                        borderRadius: BorderRadius.circular(getSize(8))),
                    child: Column(children: [
                      Row(
                        children: [
                          Image.asset(
                            ImageConstant.imgTrophy100x108,
                            width: getHorizontalSize(109),
                            height: getVerticalSize(100),
                          ),
                          Column(
                            children: [
                              Text(
                                "TOTAL CONTESTS WINNINGS",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: getFontSize(14),
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                              Padding(
                                padding: getPadding(top: 8.0),
                                child: Container(
                                  width: getHorizontalSize(112),
                                  height: getVerticalSize(28),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius:
                                          BorderRadius.circular(getSize(10))),
                                  child: Center(
                                    child: Text(
                                      "9",
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: getFontSize(23),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color.fromARGB(255, 150, 150, 150),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Cricket",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Color.fromARGB(255, 150, 150, 150),
                              thickness: 2,
                            ),
                            Column(
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Football",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            const VerticalDivider(
                              color: Color.fromARGB(255, 150, 150, 150),
                              thickness: 2,
                            ),
                            Column(
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Others",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: getFontSize(14),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ]),
                  )
                ]),
                ListView(scrollDirection: Axis.vertical, children: [
                  SizedBox(
                    height: getVerticalSize(21),
                  ),
                  Padding(
                    padding: getPadding(right: 18.0, left: 18),
                    child: Social2ItemWidget(
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
                ]),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
