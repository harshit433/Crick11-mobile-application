import 'package:crick11/core/app_export.dart';
import 'package:flutter/material.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ImageConstant.imgImage9,
          width: getHorizontalSize(87),
          height: getVerticalSize(70),
          fit: BoxFit.fitHeight,
        ),
        Container(
          width: getHorizontalSize(74),
          height: getVerticalSize(21),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getSize(9),
              ),
              color: Colors.white),
          child: Center(
            child: Text(
              'R. Tripathi',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: getFontSize(13),
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Captain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: (const BoxDecoration(
              color: Colors.black, shape: BoxShape.circle)),
          width: getHorizontalSize(20),
          height: getVerticalSize(20),
          child: Center(
              child: Text(
            'C',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: getFontSize(13),
                fontWeight: FontWeight.w900,
                color: Colors.white),
          )),
        ),
        Column(
          children: [
            Image.asset(
              ImageConstant.imgImage9,
              width: getHorizontalSize(87),
              height: getVerticalSize(70),
              fit: BoxFit.fitHeight,
            ),
            Container(
              width: getHorizontalSize(74),
              height: getVerticalSize(21),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getSize(9),
                  ),
                  color: Colors.white),
              child: Center(
                child: Text(
                  'R. Tripathi',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: getFontSize(13),
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class ViceCaptain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: (const BoxDecoration(
              color: Colors.black, shape: BoxShape.circle)),
          width: getHorizontalSize(20),
          height: getVerticalSize(20),
          child: Center(
              child: Text(
            'VC',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: getFontSize(13),
                fontWeight: FontWeight.w900,
                color: Colors.white),
          )),
        ),
        Column(
          children: [
            Image.asset(
              ImageConstant.imgImage9,
              width: getHorizontalSize(87),
              height: getVerticalSize(70),
              fit: BoxFit.fitHeight,
            ),
            Container(
              width: getHorizontalSize(74),
              height: getVerticalSize(21),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getSize(9),
                  ),
                  color: Colors.white),
              child: Center(
                child: Text(
                  'R. Tripathi',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: getFontSize(13),
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
