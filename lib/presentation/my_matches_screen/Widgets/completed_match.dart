import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';

// ignore: must_be_immutable
class CompletedMatchWidget extends StatelessWidget {
  CompletedMatchWidget({
    required this.contest_type,
    required this.entry_price,
    required this.rank,
    required this.winning_pool,
    required this.prize_won,
  });

  String contest_type;
  int entry_price;
  String winning_pool;
  String prize_won;
  int rank;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 9.0, bottom: 9),
      child: Container(
        height: getVerticalSize(155),
        width: double.maxFinite,
        child: GestureDetector(
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
                  padding: getPadding(top: 9.0, left: 9, right: 45),
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
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(left: 12.0, top: 16, right: 6),
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
                      Text(
                        "Your Rank : $rank",
                        style: TextStyle(
                          color: ColorConstant.gray90002,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Prize Won : ',
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
                                    size: getSize(16),
                                  ),
                                  Text(prize_won,
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
