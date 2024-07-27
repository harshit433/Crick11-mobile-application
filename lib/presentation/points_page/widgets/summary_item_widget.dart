import 'package:crick11/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SummaryItemWidget extends StatelessWidget {
  var summary_items = [
    {
      15.6,
      'Chahal to Markram, 1 run, fired quicker on off, Markram drives towards deep extra cover Aiden Markram, right handed bat, comes to the crease'
    },
    {12.1, 'sfbgnhjdfgnfghgnhmhgfnggfngrgfnggfnh rgdfhgnn'}
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
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
            padding: getPadding(top: 22, left: 14, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < summary_items.length; i++)
                  Padding(
                    padding: getPadding(bottom: 10),
                    child: Text(
                      '${summary_items[i].elementAt(0)}\n${summary_items[i].elementAt(1)}',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: getFontSize(12),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
              ],
            ))
      ]),
    );
  }
}
