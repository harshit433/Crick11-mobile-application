import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class LiveMatchWidget extends StatelessWidget {
  LiveMatchWidget({
    required this.contest_type,
    required this.entry_price,
    required this.team1,
    required this.run_team1,
    required this.wickets_team1,
    required this.overs_team1,
    required this.run_team2,
    required this.wickets_team2,
    required this.overs_team2,
    required this.team2,
    required this.winning_pool,
    required this.first_prize,
    required this.percentage,
    required this.ontap,
  });

  String contest_type;
  int entry_price;
  String winning_pool;
  String first_prize;
  int percentage;
  String team1;
  int run_team1;
  int wickets_team1;
  double overs_team1;
  int run_team2;
  int wickets_team2;
  double overs_team2;
  String team2;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 9.0, bottom: 9),
      child: SizedBox(
        height: getVerticalSize(155),
        width: double.maxFinite,
        child: GestureDetector(
          onTap: ontap,
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
                      Row(
                        children: [
                          Image.asset(
                            ImageConstant.imgMega,
                            height: getVerticalSize(38),
                            width: getHorizontalSize(47),
                          ),
                          Padding(
                            padding: getPadding(left: 9.0),
                            child: Text(
                              contest_type,
                              style: TextStyle(
                                color: ColorConstant.gray90002,
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            ImageConstant.imgTicketBlack900,
                            height: getVerticalSize(25),
                            width: getHorizontalSize(25),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: getSize(20),
                              ),
                              Text('$entry_price',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray90002,
                                    fontSize: getFontSize(
                                      21,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(left: 12.0, top: 16, right: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Winning Pool",
                            style: TextStyle(
                              color: ColorConstant.gray90002,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee_outlined,
                                size: getSize(21),
                              ),
                              Text(winning_pool,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray90002,
                                    fontSize: getFontSize(
                                      21,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "$team1 vs $team2",
                            style: TextStyle(
                              color: ColorConstant.gray90002,
                              fontSize: getFontSize(
                                19,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text('$run_team1/$wickets_team1($overs_team1)',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: ColorConstant.gray90002,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w800,
                                  )),
                              Padding(
                                padding: getPadding(left: 12.0),
                                child: Text(
                                    '$run_team2/$wickets_team2($overs_team2)',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray90002,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w800,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(top: 19.5),
                    child: Container(
                      padding: getPadding(right: 21, left: 3),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(getSize(17)),
                              bottomRight: Radius.circular(getSize(17)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(ImageConstant.imgMega28x21),
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee_outlined,
                                    size: getSize(16),
                                  ),
                                  Text(first_prize,
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
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(left: 15.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  ImageConstant.imgArtboard481,
                                  height: getVerticalSize(20.62),
                                  width: getHorizontalSize(20),
                                ),
                                Text('$percentage %',
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
                              ],
                            ),
                          ),
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
