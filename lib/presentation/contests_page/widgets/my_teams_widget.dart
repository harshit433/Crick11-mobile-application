import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class MyTeamsWidget extends StatelessWidget {
  MyTeamsWidget({
    super.key,
    required this.team_name,
    required this.contest_team1,
    required this.team1_players,
    required this.contest_team2,
    required this.team2_players,
    required this.WK,
    required this.AR,
    required this.team_captain,
    required this.team_vice_captain,
    required this.Batsmen,
    required this.Bowls,
    required this.edit_team,
    required this.preview_team,
  });

  VoidCallback? onTapColumnmega;
  String team_name;
  String contest_team1;
  int team1_players;
  String contest_team2;
  int team2_players;
  int WK;
  int AR;
  String team_vice_captain;
  String team_captain;
  int Batsmen;
  int Bowls;
  void Function() edit_team;
  void Function() preview_team;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 9.0, bottom: 9),
      child: SizedBox(
        height: getVerticalSize(155),
        width: double.maxFinite,
        child: GestureDetector(
          onTap: () {
            onTapColumnmega?.call();
          },
          child: Container(
            decoration: AppDecoration.fillLime100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder17,
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(top: 9.0, left: 9, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(left: 9.0),
                        child: Text(
                          team_name,
                          style: TextStyle(
                            color: ColorConstant.gray90002,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset(ImageConstant.imgEye),
                          Padding(
                            padding: getPadding(left: 13.0),
                            child: SvgPicture.asset(ImageConstant.imgEdit),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(left: 21.0, top: 5, right: 31),
                  child: SizedBox(
                    width: getHorizontalSize(301),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(alignment: Alignment.bottomCenter, children: [
                          Image.asset(
                            ImageConstant.imgImage8,
                            width: getHorizontalSize(69),
                            height: getVerticalSize(86),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(getSize(4)),
                              color: Colors.black.withOpacity(0.4),
                            ),
                            child: Padding(
                              padding: getPadding(
                                  top: 1.0, bottom: 1, left: 7, right: 7),
                              child: Text(
                                team_captain,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Column(
                          children: [
                            Text(
                              '$contest_team1 : $team1_players',
                              style: TextStyle(
                                color: ColorConstant.gray90002,
                                fontSize: getFontSize(
                                  19,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '$contest_team2 : $team2_players',
                              style: TextStyle(
                                color: ColorConstant.gray90002,
                                fontSize: getFontSize(
                                  19,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Stack(alignment: Alignment.bottomCenter, children: [
                          Image.asset(
                            ImageConstant.imgImage9,
                            width: getHorizontalSize(69),
                            height: getVerticalSize(86),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(getSize(4)),
                              color: Colors.black.withOpacity(0.4),
                            ),
                            child: Padding(
                              padding: getPadding(
                                  top: 1.0, bottom: 1, left: 7, right: 7),
                              child: Text(
                                team_vice_captain,
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(top: 3.5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(getSize(17)),
                              bottomRight: Radius.circular(getSize(17)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('WK : $WK',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray90002,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              )),
                          Text('AR : $AR',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray90002,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              )),
                          Text('Bats : $Batsmen',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray90002,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              )),
                          Text('Bowl : $Bowls',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray90002,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
