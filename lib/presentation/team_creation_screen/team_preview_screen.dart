import 'package:crick11/core/app_export.dart';
import 'package:crick11/presentation/team_creation_screen/bloc/teamcreation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/player_preview.dart';

class TeamPreviewScreen extends StatefulWidget {
  @override
  State<TeamPreviewScreen> createState() => _TeamPreviewScreenState();
}

class _TeamPreviewScreenState extends State<TeamPreviewScreen> {
  final TeamcreationBloc _teamcreationBloc = TeamcreationBloc();
  String current_captain = '';
  String current_vice_captain = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamcreationBloc, TeamcreationState>(
      bloc: _teamcreationBloc,
      listener: (context, state) {
        if (state is NavigateToBack) {
          Navigator.pop(context);
        }
        if (state is EditTeam) {
          Navigator.pushNamed(context, AppRoutes.teamCreationScreen);
        }
        if (state is CreateTeam) {
          Navigator.pushNamedAndRemoveUntil(context, AppRoutes.contestsPage,
              ModalRoute.withName(AppRoutes.homeScreen));
        }
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(getVerticalSize(90)),
            child: AppBar(
              leading: Padding(
                padding: getPadding(top: 28.0),
                child: GestureDetector(
                    onTap: () {
                      _teamcreationBloc.add(BackNavigation());
                    },
                    child: const Icon(Icons.arrow_back)),
              ),
              title: Padding(
                padding: getPadding(top: 28.0),
                child: Text(
                  'Preview',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: getFontSize(18),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  CustomPaint(
                    painter: diagonalborder(),
                    child: SizedBox(
                      width: getHorizontalSize(260),
                      height: getVerticalSize(144),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                ImageConstant.imgSunrisershyderabad,
                                width: getHorizontalSize(180),
                                height: getVerticalSize(76),
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: getPadding(top: 10.0),
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
                        height: getVerticalSize(144),
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
                                  height: getVerticalSize(76),
                                ),
                                Padding(
                                  padding: getPadding(top: 10.0),
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
                ],
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage10),
                          fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Wicket Keepers',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: getFontSize(16),
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [Captain(), Player()],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Batsmen',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: getFontSize(16),
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Player(),
                              ViceCaptain(),
                              Player(),
                              Player()
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'All rounders',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: getFontSize(16),
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [Player(), Player()],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Bowlers',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: getFontSize(16),
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [Player(), Player(), Player()],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
                        "Edit Team",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: getFontSize(18),
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context)
                                .tabBarTheme
                                .unselectedLabelColor),
                      ),
                      onPressed: () {
                        _teamcreationBloc.add(Edit());
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
