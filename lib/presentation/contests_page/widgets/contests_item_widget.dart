import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: must_be_immutable
class ContestsItemWidget extends StatelessWidget {
  ContestsItemWidget({
    super.key,
    this.onTapColumnmega,
    required this.contest_type,
    required this.entry_price,
    required this.prize_pool,
    required this.total_spots,
    required this.spots_left,
    required this.first_prize,
    required this.percentage,
    required this.number_of_teams,
  });

  VoidCallback? onTapColumnmega;
  String contest_type;
  int entry_price;
  String prize_pool;
  int total_spots;
  int spots_left;
  String first_prize;
  int percentage;
  int number_of_teams;

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
                  padding: getPadding(top: 5.0, left: 17),
                  child: Row(
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgTrophy,
                          height: getVerticalSize(33),
                          width: getHorizontalSize(29)),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee_outlined,
                            size: getSize(18),
                          ),
                          Text(prize_pool,
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
                  ),
                ),
                Padding(
                  padding: getPadding(left: 19.0, top: 8, right: 31),
                  child: SizedBox(
                      //height: getVerticalSize(8),
                      width: getHorizontalSize(301),
                      child: LinearPercentIndicator(
                        percent: spots_left / total_spots,
                        lineHeight: getVerticalSize(8),
                        progressColor: Colors.red,
                        barRadius: const Radius.circular(8),
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                      )),
                ),
                Padding(
                  padding: getPadding(left: 21.0, top: 5, right: 31),
                  child: SizedBox(
                    width: getHorizontalSize(301),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$spots_left left',
                          style: TextStyle(
                            color: ColorConstant.red800,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "$total_spots spots",
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: getPadding(top: 3.5),
                    child: Container(
                      padding: getPadding(right: 21, left: 3),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(getSize(17)),
                              bottomRight: Radius.circular(getSize(17)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Row(
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
                          Row(
                            children: [
                              SvgPicture.asset(
                                ImageConstant.imgIconsaxlinearpeople,
                                height: getVerticalSize(20),
                                width: getHorizontalSize(20),
                              ),
                              Text(" $number_of_teams",
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
                          )
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
