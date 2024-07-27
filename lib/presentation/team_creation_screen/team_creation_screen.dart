import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/team_creation_screen/bloc/teamcreation_bloc.dart';
import 'package:crick11/presentation/team_creation_screen/widgets/player_stats_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../leaderboard_screen/widgets/tab.dart';

class TeamCreationScreen extends StatefulWidget {
  @override
  State<TeamCreationScreen> createState() => _TeamCreationTwoScreenState();
}

class _TeamCreationTwoScreenState extends State<TeamCreationScreen> {
  final TeamcreationBloc _teamcreationBloc = TeamcreationBloc();
  bool player_is_selected = false;

  tab_backgroundcolor() {
    if (Theme.of(context).appBarTheme.backgroundColor == ColorConstant.red800) {
      return Colors.white;
    } else {
      return const Color.fromARGB(255, 18, 12, 25);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamcreationBloc, TeamcreationState>(
      bloc: _teamcreationBloc,
      listener: (context, state) {
        if (state is NavigateToBack) {
          Navigator.pop(context);
        }
        if (state is ContinuetoNextStep) {
          Navigator.pushNamed(context, AppRoutes.teamCreationTwoScreen);
        }
        if (state is PreviewTeam) {
          Navigator.pushNamed(context, AppRoutes.teamPreviewScreen);
        }
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  CustomPaint(
                    painter: diagonalborder(),
                    child: SizedBox(
                      width: getHorizontalSize(260),
                      height: getVerticalSize(254),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                ImageConstant.imgSunrisershyderabad,
                                width: getHorizontalSize(180),
                                height: getVerticalSize(117),
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: getPadding(top: 10.0, bottom: 31),
                                child: Text(
                                  'SRH',
                                  style: TextStyle(
                                      fontFamily: 'Sansation',
                                      fontSize: getFontSize(25),
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomPaint(
                      painter: diagonalborder2(),
                      child: SizedBox(
                        width: getHorizontalSize(260),
                        height: getVerticalSize(254),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  ImageConstant.img5af960119555459,
                                  fit: BoxFit.contain,
                                  width: getHorizontalSize(180),
                                  height: getVerticalSize(117),
                                ),
                                Padding(
                                  padding: getPadding(top: 10.0, bottom: 31),
                                  child: Text(
                                    'RR',
                                    style: TextStyle(
                                        fontFamily: 'Sansation',
                                        fontSize: getFontSize(25),
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.italic),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(top: 42, left: 24),
                    child: GestureDetector(
                      onTap: () {
                        _teamcreationBloc.add(BackNavigation());
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: getPadding(left: 19.5),
                            child: Text(
                              "Select Players",
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: getFontSize(19),
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: getPadding(left: 28.0, right: 28, top: 15),
                child: SizedBox(
                  width: getHorizontalSize(334),
                  height: getVerticalSize(43),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Players Selected",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: getFontSize(15),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "5/11",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: getFontSize(17),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Credit left",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: getFontSize(15),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "45",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: getFontSize(17),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
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
                    title: "WK",
                    tap: () {
                      _teamcreationBloc
                          .add(ChangePlayerCategory(player_category: 0));
                    },
                  ),
                  tab(
                    color: Theme.of(context).secondaryHeaderColor,
                    underline_color: tab_backgroundcolor(),
                    title: "BAT",
                    tap: () {
                      _teamcreationBloc
                          .add(ChangePlayerCategory(player_category: 1));
                    },
                  ),
                  tab(
                    color: Theme.of(context).secondaryHeaderColor,
                    underline_color: tab_backgroundcolor(),
                    title: "BOWL",
                    tap: () {
                      _teamcreationBloc
                          .add(ChangePlayerCategory(player_category: 2));
                    },
                  ),
                  tab(
                    color: Theme.of(context).secondaryHeaderColor,
                    underline_color: tab_backgroundcolor(),
                    title: "AR",
                    tap: () {
                      _teamcreationBloc
                          .add(ChangePlayerCategory(player_category: 3));
                    },
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    PlayerStatsWidget(
                      name: "JASON HOLDER",
                      type: 'Right-arm medium fast',
                      player_image: ImageConstant.imgImage8,
                      team: 'RR',
                      matches: 8,
                      runs: 12,
                      avg: 6,
                      strike_rate: 109.09,
                      credits: 8.5,
                      selected: player_is_selected,
                      ontap: () {
                        player_is_selected = !player_is_selected;
                      },
                    ),
                    PlayerStatsWidget(
                      name: "JASON HOLDER",
                      type: 'Right-arm medium fast',
                      player_image: ImageConstant.imgImage8,
                      team: 'RR',
                      matches: 8,
                      runs: 12,
                      avg: 6,
                      strike_rate: 109.09,
                      credits: 8.5,
                      selected: player_is_selected,
                      ontap: () {
                        player_is_selected = !player_is_selected;
                      },
                    ),
                    PlayerStatsWidget(
                      name: "JASON HOLDER",
                      type: 'Right-arm medium fast',
                      player_image: ImageConstant.imgImage8,
                      team: 'RR',
                      matches: 8,
                      runs: 12,
                      avg: 6,
                      strike_rate: 109.09,
                      credits: 8.5,
                      selected: player_is_selected,
                      ontap: () {
                        player_is_selected = !player_is_selected;
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Padding(
            padding: getPadding(bottom: 19.0, left: 35, right: 35, top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: getVerticalSize(35),
                    width: getHorizontalSize(124),
                    child: OutlinedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.blue))),
                      child: Text(
                        "Preview",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: getFontSize(18),
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context)
                                .tabBarTheme
                                .unselectedLabelColor),
                      ),
                      onPressed: () {
                        _teamcreationBloc.add(Preview());
                      },
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(35),
                    width: getHorizontalSize(161),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.blue))),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: getFontSize(18),
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context)
                                .tabBarTheme
                                .unselectedLabelColor),
                      ),
                      onPressed: () {
                        _teamcreationBloc.add(Continue());
                      },
                    ),
                  )
                ]),
          ),
        ));
      },
    );
  }
}

class diagonalborder extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Gradient gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.orangeAccent, Colors.yellow],
      tileMode: TileMode.clamp,
    );

    final Rect colorBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final Paint paint = Paint()..shader = gradient.createShader(colorBounds);

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class diagonalborder2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.pink, Colors.pinkAccent],
      tileMode: TileMode.clamp,
    );

    final Rect colorBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final Paint paint = Paint()..shader = gradient.createShader(colorBounds);

    Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
