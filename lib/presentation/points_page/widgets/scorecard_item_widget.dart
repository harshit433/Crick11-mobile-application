import 'package:crick11/core/app_export.dart';
import 'package:flutter/material.dart';

class ScoreCardItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: getPadding(top: 44.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  'Rahul T.',
                  style: TextStyle(
                      fontSize: getFontSize(12),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter"),
                ),
                Image.asset(
                  'assets/images/line39.png',
                  width: getHorizontalSize(66.03),
                ),
                Text(
                  '28(34)',
                  style: TextStyle(
                      fontSize: getFontSize(11),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter"),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: getSize(40),
              child: CircleAvatar(
                backgroundImage: AssetImage(ImageConstant.imgImage9),
                radius: getSize(35),
              ),
            ),
            Column(
              children: [
                Text(
                  '112/1',
                  style: TextStyle(
                      fontSize: getFontSize(11),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter"),
                ),
                Text(
                  '(15.0)',
                  style: TextStyle(
                      fontSize: getFontSize(11),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter"),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: getSize(40),
              child: CircleAvatar(
                backgroundImage: AssetImage(ImageConstant.imgImage9),
                radius: getSize(35),
              ),
            ),
            Column(
              children: [
                Text(
                  'Mayank A.',
                  style: TextStyle(
                      fontSize: getFontSize(12),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter"),
                ),
                Image.asset(
                  'assets/images/line39.png',
                  width: getHorizontalSize(66.03),
                ),
                Text(
                  '83(46)',
                  style: TextStyle(
                      fontSize: getFontSize(11),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Inter"),
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: getPadding(top: 18.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/line43.png',
              width: getHorizontalSize(250),
            ),
            Padding(
              padding: getPadding(left: 86.0, right: 86, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/1_run.png',
                    width: getHorizontalSize(24),
                    height: getVerticalSize(24),
                  ),
                  Image.asset(
                    'assets/images/1_run.png',
                    width: getHorizontalSize(24),
                    height: getVerticalSize(24),
                  ),
                  Image.asset(
                    'assets/images/1_run.png',
                    width: getHorizontalSize(24),
                    height: getVerticalSize(24),
                  ),
                  Image.asset(
                    'assets/images/1_run.png',
                    width: getHorizontalSize(24),
                    height: getVerticalSize(24),
                  ),
                  Image.asset(
                    'assets/images/1_run.png',
                    width: getHorizontalSize(24),
                    height: getVerticalSize(24),
                  ),
                  Image.asset(
                    'assets/images/1_run.png',
                    width: getHorizontalSize(24),
                    height: getVerticalSize(24),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/images/line43.png',
              width: getHorizontalSize(250),
            ),
          ],
        ),
      ),
      Padding(
        padding: getPadding(left: 25.0, right: 25, top: 47),
        child: Column(
          children: [
            Container(
              padding: getPadding(left: 15, right: 15, bottom: 7.5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Batting",
                      style: TextStyle(
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Inter"),
                    ),
                    SizedBox(
                      width: getHorizontalSize(200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              'R',
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "B",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "4's",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "6's",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              height: getVerticalSize(2),
              color: Theme.of(context).secondaryHeaderColor,
            ),
            Container(
              padding: getPadding(left: 15, right: 15, top: 20.5, bottom: 13.5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Rahul T.",
                          style: TextStyle(
                              fontSize: getFontSize(12),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Inter"),
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: getSize(7),
                        )
                      ],
                    ),
                    SizedBox(
                      width: getHorizontalSize(200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              '500',
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "100",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "20",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "11",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              height: getVerticalSize(1),
              color: Theme.of(context).secondaryHeaderColor,
            ),
            Container(
              padding: getPadding(left: 15, right: 15, top: 20.5, bottom: 13.5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mayank A.",
                      style: TextStyle(
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Inter"),
                    ),
                    SizedBox(
                      width: getHorizontalSize(200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              '83',
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "46",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              height: getVerticalSize(1),
              color: Theme.of(context).secondaryHeaderColor,
            ),
            Container(
              height: getVerticalSize(48.5),
            ),
            Container(
              padding: getPadding(left: 15, right: 15, bottom: 7.5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bowling",
                      style: TextStyle(
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Inter"),
                    ),
                    SizedBox(
                      width: getHorizontalSize(200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              'O',
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "R",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "W",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "M",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              height: getVerticalSize(2),
              color: Theme.of(context).secondaryHeaderColor,
            ),
            Container(
              padding: getPadding(left: 15, right: 15, top: 20.5, bottom: 13.5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sam Cu.",
                      style: TextStyle(
                          fontSize: getFontSize(12),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Inter"),
                    ),
                    SizedBox(
                      width: getHorizontalSize(200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              '4.0',
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "20",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "1",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(35),
                            alignment: Alignment.center,
                            child: Text(
                              "10",
                              style: TextStyle(
                                  fontSize: getFontSize(12),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              height: getVerticalSize(1),
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ],
        ),
      )
    ]);
  }
}
