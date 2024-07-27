import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/team_creation_screen/bloc/teamcreation_bloc.dart';
import 'package:crick11/presentation/team_creation_screen/widgets/player_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamCreationTwoScreen extends StatefulWidget {
  @override
  State<TeamCreationTwoScreen> createState() => _TeamCreationTwoScreenState();
}

class _TeamCreationTwoScreenState extends State<TeamCreationTwoScreen> {
  final TeamcreationBloc _teamcreationBloc = TeamcreationBloc();
  String current_captain = '';
  String current_vice_captain = '';

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
        if (state is CreateTeam) {
          Navigator.pushNamedAndRemoveUntil(context, AppRoutes.contestsPage,
              ModalRoute.withName(AppRoutes.homeScreen));
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(top: 27.0, left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose your Captain and Vice Captain',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: getFontSize(17),
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: getPadding(top: 17.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle),
                                  width: getHorizontalSize(35),
                                  height: getVerticalSize(35),
                                  child: Center(
                                      child: Text(
                                    'C',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: getFontSize(22),
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  )),
                                ),
                                Padding(
                                  padding: getPadding(left: 8.0),
                                  child: Text(
                                    'get 2x points',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: getFontSize(14),
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: getPadding(left: 42.0),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle),
                                    width: getHorizontalSize(35),
                                    height: getVerticalSize(35),
                                    child: Center(
                                        child: Text(
                                      'VC',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: getFontSize(22),
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white),
                                    )),
                                  ),
                                  Padding(
                                    padding: getPadding(left: 8.0),
                                    child: Text(
                                      'get 1.5x points',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: getFontSize(14),
                                        fontWeight: FontWeight.w900,
                                      ),
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
              ),
              PlayerItemWidget(
                name: 'JASON HOLDER',
                player_image: ImageConstant.imgImage6,
                matches: 8,
                avg: 32,
                team: "RR",
                type: 'Right-arm medium fast',
                is_captain: (current_captain == "JASON  HOLDER" ||
                    current_vice_captain != "JASON HOLDER"),
                ontap_c: () {
                  setState(() {
                    current_captain = "JASON HOLDER";
                    current_vice_captain = "SHIMRON H.";
                  });
                },
                ontap_vc: () {
                  setState(() {
                    current_vice_captain = "JASON HOLDER";
                    current_captain = "SHIMRON H.";
                  });
                },
              ),
              PlayerItemWidget(
                name: 'SHIMRON H.',
                player_image: ImageConstant.imgImage6,
                matches: 8,
                avg: 32,
                team: "RR",
                type: 'Right-arm medium fast',
                is_captain: (current_captain == "SHIMRON H." ||
                    current_vice_captain != "SHIMRON H."),
                ontap_c: () {
                  setState(() {
                    current_captain = "SHIMRON H.";
                    current_vice_captain = "JASON HOLDER";
                  });
                },
                ontap_vc: () {
                  setState(() {
                    current_vice_captain = "SHIMRON H.";
                    current_captain = "JASON HOLDER";
                  });
                },
              )
            ],
          ),
          bottomNavigationBar: Padding(
            padding: getPadding(bottom: 19.0, left: 35, right: 35),
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
                        "Create Team",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: getFontSize(18),
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context)
                                .tabBarTheme
                                .unselectedLabelColor),
                      ),
                      onPressed: () {
                        _teamcreationBloc.add(Create());
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
    const Gradient gradient = LinearGradient(
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
